.class public Lcom/htc/widget/DecorFlow;
.super Lcom/htc/widget/AbsSpinner;
.source "DecorFlow.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/DecorFlow$LayoutParams;,
        Lcom/htc/widget/DecorFlow$FlingRunnable;,
        Lcom/htc/widget/DecorFlow$OnFinishedMovementListener;,
        Lcom/htc/widget/DecorFlow$OnScrollListener;
    }
.end annotation


# static fields
.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "DecorFlow"

.field private static final localLOGV:Z = false

.field private static final mNumberOfViewASide:I = 0x8

.field private static final mScaleInitConst:F = 1.0f


# instance fields
.field EXPAND_UNIT:I

.field alpha:F

.field centerX:F

.field private enableDim:Z

.field private isChildStaticTransformationEnabled:Z

.field private mAlbumHeight:I

.field private mAlbumHeight_H:F

.field private mAlbumWidth:I

.field private mAlbumWidth_H:F

.field private mAlphaConstList:[F

.field private mAlphaConstList3:[F

.field private mAnimationDuration:I

.field private mBouncingMode:I

.field private mCenterX:[F

.field private mContextMenuInfo:Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDistanceRatio:F

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field private mFlingRunnable:Lcom/htc/widget/DecorFlow$FlingRunnable;

.field private mGalleryCenterX:F

.field private mGalleryMode:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mIsFirstScroll:Z

.field private mIsInit:Z

.field private mLastScrollState:I

.field private mLeftMost:I

.field private mLoc:[I

.field private mLocRight:F

.field private mOnFinishedMovementListener:Lcom/htc/widget/DecorFlow$OnFinishedMovementListener;

.field mOrientation:I

.field private mPlaceY:I

.field private mReceivedInvokeKeyDown:Z

.field private mRightMost:I

.field private mScaleConst:F

.field private mScaleConstList:[F

.field private mScaleConstList3:[F

.field private mScaleMtx:Landroid/graphics/Matrix;

.field private mScreenLeftLimit:F

.field private mScreenRightLimit:F

.field mScreenWidth:I

.field private mScrollListener:Lcom/htc/widget/DecorFlow$OnScrollListener;

.field private mSelectedChild:Landroid/view/View;

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldCallbackOnUnselectedItemLongClick:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field private mSuppressSelectionChanged:Z

.field private mTranslateConst:F

.field private mTranslateConstList:[F

.field private mTranslateConstList3:[F

.field private mTranslateMtx:Landroid/graphics/Matrix;

.field private mUnselectedAlpha:F

.field private mVelocityRatio:F

.field rotate:F

.field scale:F

.field translateX:F

.field translateY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/DecorFlow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 200
    const v0, 0x1010070

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/DecorFlow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v10, -0x1

    const/high16 v6, 0x3f80

    const/4 v9, 0x1

    const/16 v8, 0x11

    const/4 v7, 0x0

    .line 204
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    iput v7, p0, Lcom/htc/widget/DecorFlow;->mSpacing:I

    .line 86
    const/16 v5, 0x1f4

    iput v5, p0, Lcom/htc/widget/DecorFlow;->mAnimationDuration:I

    .line 123
    new-instance v5, Lcom/htc/widget/DecorFlow$FlingRunnable;

    invoke-direct {v5, p0}, Lcom/htc/widget/DecorFlow$FlingRunnable;-><init>(Lcom/htc/widget/DecorFlow;)V

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mFlingRunnable:Lcom/htc/widget/DecorFlow$FlingRunnable;

    .line 129
    new-instance v5, Lcom/htc/widget/DecorFlow$1;

    invoke-direct {v5, p0}, Lcom/htc/widget/DecorFlow$1;-><init>(Lcom/htc/widget/DecorFlow;)V

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 153
    iput-boolean v9, p0, Lcom/htc/widget/DecorFlow;->mShouldCallbackDuringFling:Z

    .line 158
    iput-boolean v7, p0, Lcom/htc/widget/DecorFlow;->mShouldCallbackOnUnselectedItemClick:Z

    .line 163
    iput-boolean v7, p0, Lcom/htc/widget/DecorFlow;->mShouldCallbackOnUnselectedItemLongClick:Z

    .line 188
    const/16 v5, 0x12c

    iput v5, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    .line 193
    iput-boolean v9, p0, Lcom/htc/widget/DecorFlow;->isChildStaticTransformationEnabled:Z

    .line 261
    iput v6, p0, Lcom/htc/widget/DecorFlow;->mVelocityRatio:F

    .line 262
    iput v6, p0, Lcom/htc/widget/DecorFlow;->mDistanceRatio:F

    .line 263
    iput-boolean v7, p0, Lcom/htc/widget/DecorFlow;->mGalleryMode:Z

    .line 266
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mScrollListener:Lcom/htc/widget/DecorFlow$OnScrollListener;

    .line 268
    iput v7, p0, Lcom/htc/widget/DecorFlow;->mLastScrollState:I

    .line 598
    const/16 v5, 0x4b0

    iput v5, p0, Lcom/htc/widget/DecorFlow;->EXPAND_UNIT:I

    .line 1787
    iput-boolean v7, p0, Lcom/htc/widget/DecorFlow;->mIsInit:Z

    .line 1913
    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mLoc:[I

    .line 1915
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mScaleMtx:Landroid/graphics/Matrix;

    .line 1916
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mTranslateMtx:Landroid/graphics/Matrix;

    .line 1917
    const/4 v5, 0x0

    iput v5, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    .line 2050
    iput-boolean v7, p0, Lcom/htc/widget/DecorFlow;->enableDim:Z

    .line 206
    new-instance v5, Landroid/view/GestureDetector;

    invoke-direct {v5, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mGestureDetector:Landroid/view/GestureDetector;

    .line 207
    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, v9}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 209
    sget-object v5, Lcom/android/internal/R$styleable;->Gallery:[I

    invoke-virtual {p1, p2, v5, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 212
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 213
    .local v2, index:I
    if-ltz v2, :cond_0

    .line 214
    invoke-virtual {p0, v2}, Lcom/htc/widget/DecorFlow;->setGravity(I)V

    .line 217
    :cond_0
    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 219
    .local v1, animationDuration:I
    if-lez v1, :cond_1

    .line 220
    invoke-virtual {p0, v1}, Lcom/htc/widget/DecorFlow;->setAnimationDuration(I)V

    .line 223
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 225
    .local v3, spacing:I
    invoke-virtual {p0, v3}, Lcom/htc/widget/DecorFlow;->setSpacing(I)V

    .line 227
    const/4 v5, 0x3

    const/high16 v6, 0x3f00

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 229
    .local v4, unselectedAlpha:F
    invoke-virtual {p0, v4}, Lcom/htc/widget/DecorFlow;->setUnselectedAlpha(F)V

    .line 231
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 235
    iget v5, p0, Lcom/htc/widget/DecorFlow;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Lcom/htc/widget/DecorFlow;->mGroupFlags:I

    .line 237
    iget v5, p0, Lcom/htc/widget/DecorFlow;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Lcom/htc/widget/DecorFlow;->mGroupFlags:I

    .line 240
    invoke-virtual {p0, v7}, Lcom/htc/widget/DecorFlow;->setSpacing(I)V

    .line 241
    invoke-virtual {p0, v9}, Lcom/htc/widget/DecorFlow;->setStaticTransformationsEnabled(Z)V

    .line 242
    invoke-virtual {p0, v7}, Lcom/htc/widget/DecorFlow;->setFadingEdgeLength(I)V

    .line 243
    iget v5, p0, Lcom/htc/widget/DecorFlow;->mAnimationDuration:I

    invoke-virtual {p0, v5}, Lcom/htc/widget/DecorFlow;->setAnimationDuration(I)V

    .line 245
    new-array v5, v8, [F

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    .line 246
    new-array v5, v8, [F

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList:[F

    .line 247
    new-array v5, v8, [F

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    .line 248
    new-array v5, v8, [F

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    .line 250
    new-array v5, v8, [F

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList3:[F

    .line 251
    new-array v5, v8, [F

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList3:[F

    .line 252
    new-array v5, v8, [F

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList3:[F

    .line 253
    iput-boolean v7, p0, Lcom/htc/widget/DecorFlow;->mIsInit:Z

    .line 255
    return-void
.end method

.method static synthetic access$002(Lcom/htc/widget/DecorFlow;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/htc/widget/DecorFlow;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/htc/widget/DecorFlow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/widget/DecorFlow;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/htc/widget/DecorFlow;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/widget/DecorFlow;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/htc/widget/DecorFlow;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/htc/widget/DecorFlow;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/widget/DecorFlow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/widget/DecorFlow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/widget/DecorFlow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/widget/DecorFlow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/DecorFlow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->dispatchUnpress()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/widget/DecorFlow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->scrollIntoSlotsAmounts()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/widget/DecorFlow;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/htc/widget/DecorFlow;->mGalleryMode:Z

    return v0
.end method

.method static synthetic access$600(Lcom/htc/widget/DecorFlow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/widget/DecorFlow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/widget/DecorFlow;->mSpacing:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/widget/DecorFlow;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/htc/widget/DecorFlow;->setScrollStateChanged(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/widget/DecorFlow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/widget/DecorFlow;->mAnimationDuration:I

    return v0
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 6
    .parameter "child"
    .parameter "duringLayout"

    .prologue
    .line 1012
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getMeasuredHeight()I

    move-result v3

    .line 1013
    .local v3, myHeight:I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1015
    .local v1, childHeight:I
    :goto_1
    const/4 v2, 0x0

    .line 1017
    .local v2, childTop:I
    iget v4, p0, Lcom/htc/widget/DecorFlow;->mGravity:I

    sparse-switch v4, :sswitch_data_0

    .line 1030
    :goto_2
    return v2

    .line 1012
    .end local v1           #childHeight:I
    .end local v2           #childTop:I
    .end local v3           #myHeight:I
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getHeight()I

    move-result v3

    goto :goto_0

    .line 1013
    .restart local v3       #myHeight:I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_1

    .line 1019
    .restart local v1       #childHeight:I
    .restart local v2       #childTop:I
    :sswitch_0
    iget-object v4, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 1020
    goto :goto_2

    .line 1022
    :sswitch_1
    iget-object v4, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    iget-object v5, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v0, v4, v1

    .line 1024
    .local v0, availableSpace:I
    iget-object v4, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x2

    add-int v2, v4, v5

    .line 1025
    goto :goto_2

    .line 1027
    .end local v0           #availableSpace:I
    :sswitch_2
    iget-object v4, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    sub-int v2, v4, v1

    goto :goto_2

    .line 1017
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
    .line 600
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getChildCount()I

    move-result v6

    .line 601
    .local v6, numChildren:I
    iget v2, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    .line 602
    .local v2, firstPosition:I
    const/4 v7, 0x0

    .line 603
    .local v7, start:I
    const/4 v1, 0x0

    .line 605
    .local v1, count:I
    if-eqz p1, :cond_3

    .line 606
    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    iget v9, p0, Lcom/htc/widget/DecorFlow;->EXPAND_UNIT:I

    sub-int v3, v8, v9

    .line 607
    .local v3, galleryLeft:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 608
    invoke-virtual {p0, v5}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 609
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_2

    .line 630
    .end local v0           #child:Landroid/view/View;
    .end local v3           #galleryLeft:I
    :cond_0
    invoke-virtual {p0, v7, v1}, Lcom/htc/widget/DecorFlow;->detachViewsFromParent(II)V

    .line 632
    if-eqz p1, :cond_1

    .line 633
    iget v8, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v8, v1

    iput v8, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    .line 635
    :cond_1
    return-void

    .line 612
    .restart local v0       #child:Landroid/view/View;
    .restart local v3       #galleryLeft:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 613
    iget-object v8, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    add-int v9, v2, v5

    invoke-virtual {v8, v9, v0}, Lcom/htc/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 607
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 617
    .end local v0           #child:Landroid/view/View;
    .end local v3           #galleryLeft:I
    .end local v5           #i:I
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/htc/widget/AbsSpinner;->mPaddingRight:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/widget/DecorFlow;->EXPAND_UNIT:I

    add-int v4, v8, v9

    .line 618
    .local v4, galleryRight:I
    add-int/lit8 v5, v6, -0x1

    .restart local v5       #i:I
    :goto_1
    if-ltz v5, :cond_0

    .line 619
    invoke-virtual {p0, v5}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 620
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-le v8, v4, :cond_0

    .line 623
    move v7, v5

    .line 624
    add-int/lit8 v1, v1, 0x1

    .line 625
    iget-object v8, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    add-int v9, v2, v5

    invoke-virtual {v8, v9, v0}, Lcom/htc/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 618
    add-int/lit8 v5, v5, -0x1

    goto :goto_1
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1357
    const/4 v6, 0x0

    .line 1359
    .local v6, handled:Z
    iget-object v0, p0, Lcom/htc/widget/AdapterView;->mOnItemLongClickListener:Lcom/htc/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1360
    iget-object v0, p0, Lcom/htc/widget/AdapterView;->mOnItemLongClickListener:Lcom/htc/widget/AdapterView$OnItemLongClickListener;

    iget-object v2, p0, Lcom/htc/widget/DecorFlow;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1364
    :cond_0
    if-nez v6, :cond_1

    .line 1365
    new-instance v0, Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Lcom/htc/widget/DecorFlow;->mContextMenuInfo:Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;

    .line 1366
    invoke-super {p0, p0}, Lcom/htc/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1369
    :cond_1
    if-eqz v6, :cond_2

    .line 1370
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/DecorFlow;->performHapticFeedback(I)Z

    .line 1373
    :cond_2
    return v6
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    const/4 v0, 0x1

    .line 1293
    if-eqz p1, :cond_0

    .line 1294
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1297
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/widget/DecorFlow;->setPressed(Z)V

    .line 1298
    return-void
.end method

.method private dispatchUnpress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1302
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1303
    invoke-virtual {p0, v0}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1302
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1306
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/widget/DecorFlow;->setPressed(Z)V

    .line 1307
    return-void
.end method

.method private drawDimLayer(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 2055
    const/16 v0, 0xb4

    .line 2057
    .local v0, dimAlpha:I
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/htc/widget/DecorFlow;->enableDim:Z

    if-eqz v1, :cond_0

    .line 2058
    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 2059
    :cond_0
    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 832
    iget v3, p0, Lcom/htc/widget/DecorFlow;->mSpacing:I

    .line 833
    .local v3, itemSpacing:I
    iget v5, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    iget v6, p0, Lcom/htc/widget/DecorFlow;->EXPAND_UNIT:I

    sub-int v2, v5, v6

    .line 836
    .local v2, galleryLeft:I
    invoke-virtual {p0, v7}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 840
    .local v4, prevIterationView:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 841
    iget v5, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v0, v5, -0x1

    .line 842
    .local v0, curPosition:I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 850
    .local v1, curRightEdge:I
    :goto_0
    if-le v1, v2, :cond_1

    if-ltz v0, :cond_1

    .line 851
    iget v5, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    sub-int v5, v0, v5

    invoke-direct {p0, v0, v5, v1, v7}, Lcom/htc/widget/DecorFlow;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 855
    iput v0, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    .line 858
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 859
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 845
    .end local v0           #curPosition:I
    .end local v1           #curRightEdge:I
    :cond_0
    const/4 v0, 0x0

    .line 846
    .restart local v0       #curPosition:I
    iget v5, p0, Lcom/htc/widget/AdapterView;->mRight:I

    iget v6, p0, Lcom/htc/widget/AdapterView;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/AbsSpinner;->mPaddingRight:I

    sub-int v1, v5, v6

    .line 847
    .restart local v1       #curRightEdge:I
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/widget/DecorFlow;->mShouldStopFling:Z

    goto :goto_0

    .line 861
    :cond_1
    return-void
.end method

.method private fillToGalleryRight()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 864
    iget v3, p0, Lcom/htc/widget/DecorFlow;->mSpacing:I

    .line 865
    .local v3, itemSpacing:I
    iget v7, p0, Lcom/htc/widget/AdapterView;->mRight:I

    iget v8, p0, Lcom/htc/widget/AdapterView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/DecorFlow;->EXPAND_UNIT:I

    add-int v2, v7, v8

    .line 866
    .local v2, galleryRight:I
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getChildCount()I

    move-result v4

    .line 867
    .local v4, numChildren:I
    iget v5, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    .line 870
    .local v5, numItems:I
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 874
    .local v6, prevIterationView:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 875
    iget v7, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    add-int v1, v7, v4

    .line 876
    .local v1, curPosition:I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 883
    .local v0, curLeftEdge:I
    :goto_0
    if-ge v0, v2, :cond_1

    if-ge v1, v5, :cond_1

    .line 884
    iget v7, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    sub-int v7, v1, v7

    invoke-direct {p0, v1, v7, v0, v9}, Lcom/htc/widget/DecorFlow;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 888
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 889
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 878
    .end local v0           #curLeftEdge:I
    .end local v1           #curPosition:I
    :cond_0
    iget v7, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v7, -0x1

    .restart local v1       #curPosition:I
    iput v1, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    .line 879
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    .line 880
    .restart local v0       #curLeftEdge:I
    iput-boolean v9, p0, Lcom/htc/widget/DecorFlow;->mShouldStopFling:Z

    goto :goto_0

    .line 891
    :cond_1
    return-void
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 2
    .parameter "view"

    .prologue
    .line 589
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private getTransformedHitRect(Landroid/view/View;Landroid/view/animation/Transformation;)Landroid/graphics/RectF;
    .locals 7
    .parameter "child"
    .parameter "t"

    .prologue
    const/4 v6, 0x0

    .line 1209
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1210
    .local v0, hitRect:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 1212
    .local v1, hitRectF:Landroid/graphics/RectF;
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 1213
    .local v2, t1:Landroid/graphics/Matrix;
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 1217
    .local v3, t1_inverse:Landroid/graphics/Matrix;
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1218
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1220
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 1222
    .local v4, t2s2:Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1223
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1226
    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1227
    invoke-virtual {v4, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1228
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1230
    return-object v1
.end method

.method private init()V
    .locals 11

    .prologue
    const v10, 0x3e99999a

    const v9, 0x3e4ccccd

    const/high16 v7, 0x3f80

    const v6, 0x3dcccccd

    const/4 v8, 0x0

    .line 1807
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1808
    .local v1, child:Landroid/view/View;
    if-nez v1, :cond_0

    .line 1809
    const-string v3, ""

    const-string v4, "Unable to initallize since the width and height of each element is unknown."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    :goto_0
    return-void

    .line 1813
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    .line 1814
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mAlbumHeight:I

    .line 1815
    iget v3, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth_H:F

    .line 1816
    iget v3, p0, Lcom/htc/widget/DecorFlow;->mAlbumHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mAlbumHeight_H:F

    .line 1818
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    array-length v3, v3

    div-int/lit8 v0, v3, 0x2

    .line 1819
    .local v0, center_i:I
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getCenterOfGallery()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mGalleryCenterX:F

    .line 1820
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    iget v4, p0, Lcom/htc/widget/DecorFlow;->mGalleryCenterX:F

    aput v4, v3, v0

    .line 1821
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList:[F

    aput v7, v3, v0

    .line 1822
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    aput v8, v3, v0

    .line 1823
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 1824
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    aput v8, v3, v2

    .line 1823
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1826
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    aput v7, v3, v0

    .line 1828
    iget v3, p0, Lcom/htc/widget/DecorFlow;->mOrientation:I

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/htc/widget/DecorFlow;->mOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 1831
    :cond_2
    iget v3, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    int-to-float v3, v3

    const v4, 0x3f19999a

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mTranslateConst:F

    .line 1833
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/widget/DecorFlow;->mAlbumHeight_H:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v3, v3, 0x23

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mPlaceY:I

    .line 1834
    const/high16 v3, 0x3f58

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mScaleConst:F

    .line 1845
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, -0x3

    aput v6, v3, v4

    .line 1846
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, -0x2

    aput v9, v3, v4

    .line 1847
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, -0x1

    const v5, 0x3ecccccd

    aput v5, v3, v4

    .line 1848
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    aput v7, v3, v0

    .line 1849
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, 0x1

    const v5, 0x3ecccccd

    aput v5, v3, v4

    .line 1850
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, 0x2

    aput v9, v3, v4

    .line 1851
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, -0x3

    aput v6, v3, v4

    .line 1868
    :goto_2
    const/4 v2, 0x1

    :goto_3
    const/16 v3, 0x8

    if-gt v2, v3, :cond_4

    .line 1869
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    add-int v4, v0, v2

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    aget v5, v5, v0

    iget v6, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    mul-int/2addr v6, v2

    int-to-float v6, v6

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 1870
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    sub-int v4, v0, v2

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    aget v5, v5, v0

    iget v6, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    mul-int/2addr v6, v2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    aput v5, v3, v4

    .line 1875
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList:[F

    add-int v4, v0, v2

    iget v5, p0, Lcom/htc/widget/DecorFlow;->mScaleConst:F

    add-int/lit8 v6, v2, -0x1

    int-to-float v6, v6

    iget v7, p0, Lcom/htc/widget/DecorFlow;->mScaleConst:F

    mul-float/2addr v6, v7

    const/high16 v7, 0x4100

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    aput v5, v3, v4

    .line 1876
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList:[F

    sub-int v4, v0, v2

    iget v5, p0, Lcom/htc/widget/DecorFlow;->mScaleConst:F

    add-int/lit8 v6, v2, -0x1

    int-to-float v6, v6

    iget v7, p0, Lcom/htc/widget/DecorFlow;->mScaleConst:F

    mul-float/2addr v6, v7

    const/high16 v7, 0x4100

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    aput v5, v3, v4

    .line 1878
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    add-int v4, v0, v2

    rsub-int/lit8 v5, v2, 0x0

    int-to-float v5, v5

    iget v6, p0, Lcom/htc/widget/DecorFlow;->mTranslateConst:F

    mul-float/2addr v5, v6

    aput v5, v3, v4

    .line 1879
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    sub-int v4, v0, v2

    int-to-float v5, v2

    iget v6, p0, Lcom/htc/widget/DecorFlow;->mTranslateConst:F

    mul-float/2addr v5, v6

    aput v5, v3, v4

    .line 1868
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1854
    :cond_3
    iget v3, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    int-to-float v3, v3

    const v4, 0x3f333333

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mTranslateConst:F

    .line 1855
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/widget/DecorFlow;->mAlbumHeight_H:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v3, v3, 0xa

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mPlaceY:I

    .line 1856
    const v3, 0x3f547ae1

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mScaleConst:F

    .line 1858
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, -0x4

    aput v6, v3, v4

    .line 1859
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, -0x3

    aput v10, v3, v4

    .line 1860
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, -0x2

    const v5, 0x3ee66666

    aput v5, v3, v4

    .line 1861
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, -0x1

    const v5, 0x3f266666

    aput v5, v3, v4

    .line 1862
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, 0x1

    const v5, 0x3f266666

    aput v5, v3, v4

    .line 1863
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, 0x2

    const v5, 0x3ee66666

    aput v5, v3, v4

    .line 1864
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, 0x3

    aput v10, v3, v4

    .line 1865
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, 0x4

    aput v6, v3, v4

    goto/16 :goto_2

    .line 1882
    :cond_4
    const/4 v2, 0x0

    :goto_4
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    array-length v3, v3

    if-ge v2, v3, :cond_6

    .line 1883
    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    array-length v4, v4

    if-ge v3, v4, :cond_5

    .line 1884
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList3:[F

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    aget v5, v5, v2

    sub-float/2addr v4, v5

    aput v4, v3, v2

    .line 1885
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList3:[F

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList:[F

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList:[F

    aget v5, v5, v2

    sub-float/2addr v4, v5

    aput v4, v3, v2

    .line 1886
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList3:[F

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    aget v5, v5, v2

    sub-float/2addr v4, v5

    aput v4, v3, v2

    .line 1882
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1890
    :cond_6
    iget v3, p0, Lcom/htc/widget/DecorFlow;->mOrientation:I

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/htc/widget/DecorFlow;->mOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    .line 1891
    :cond_7
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    add-int/lit8 v4, v0, -0x2

    aget v3, v3, v4

    sub-float v3, v8, v3

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mScreenLeftLimit:F

    .line 1892
    iget v3, p0, Lcom/htc/widget/DecorFlow;->mScreenWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    add-int/lit8 v5, v0, 0x2

    aget v4, v4, v5

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mScreenRightLimit:F

    .line 1898
    :goto_5
    iget v3, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/htc/widget/DecorFlow;->EXPAND_UNIT:I

    .line 1899
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/DecorFlow;->mIsInit:Z

    goto/16 :goto_0

    .line 1894
    :cond_8
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    add-int/lit8 v4, v0, -0x3

    aget v3, v3, v4

    sub-float v3, v8, v3

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mScreenLeftLimit:F

    .line 1895
    iget v3, p0, Lcom/htc/widget/DecorFlow;->mScreenWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    add-int/lit8 v5, v0, 0x3

    aget v4, v4, v5

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mScreenRightLimit:F

    goto :goto_5
.end method

.method private isHit(III)Z
    .locals 6
    .parameter "indexOfChildren"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 1189
    invoke-virtual {p0, p1}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1191
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_1

    .line 1206
    :cond_0
    :goto_0
    return v3

    .line 1194
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 1195
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    .line 1196
    .local v2, t:Landroid/view/animation/Transformation;
    invoke-virtual {p0, v0, v2}, Lcom/htc/widget/DecorFlow;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    .line 1197
    invoke-direct {p0, v0, v2}, Lcom/htc/widget/DecorFlow;->getTransformedHitRect(Landroid/view/View;Landroid/view/animation/Transformation;)Landroid/graphics/RectF;

    move-result-object v1

    .line 1200
    .local v1, hitRectF:Landroid/graphics/RectF;
    int-to-float v4, p2

    int-to-float v5, p3

    invoke-virtual {v1, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1202
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "offset"
    .parameter "x"
    .parameter "fromLeft"

    .prologue
    const/4 v5, 0x0

    .line 913
    iget-boolean v3, p0, Lcom/htc/widget/AdapterView;->mDataChanged:Z

    if-nez v3, :cond_1

    .line 914
    iget-object v3, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v3, p1}, Lcom/htc/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 915
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 917
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 920
    .local v2, childLeft:I
    iget v3, p0, Lcom/htc/widget/DecorFlow;->mRightMost:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mRightMost:I

    .line 922
    iget v3, p0, Lcom/htc/widget/DecorFlow;->mLeftMost:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mLeftMost:I

    .line 925
    iget-boolean v3, p0, Lcom/htc/widget/DecorFlow;->isChildStaticTransformationEnabled:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/widget/DecorFlow;->mGalleryMode:Z

    if-nez v3, :cond_0

    .line 927
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 931
    :cond_0
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/htc/widget/DecorFlow;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 948
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childLeft:I
    .local v1, child:Landroid/view/View;
    :goto_0
    return-object v1

    .line 938
    .end local v1           #child:Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 940
    .restart local v0       #child:Landroid/view/View;
    iget-boolean v3, p0, Lcom/htc/widget/DecorFlow;->isChildStaticTransformationEnabled:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/htc/widget/DecorFlow;->mGalleryMode:Z

    if-nez v3, :cond_2

    .line 942
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 946
    :cond_2
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/htc/widget/DecorFlow;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 948
    .end local v0           #child:Landroid/view/View;
    .restart local v1       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 574
    invoke-virtual {p0, v0}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 573
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 576
    :cond_0
    return-void
.end method

.method private onFinishedMovement()V
    .locals 1

    .prologue
    .line 692
    iget-boolean v0, p0, Lcom/htc/widget/DecorFlow;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    .line 693
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/DecorFlow;->mSuppressSelectionChanged:Z

    .line 696
    invoke-super {p0}, Lcom/htc/widget/AbsSpinner;->selectionChanged()V

    .line 698
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->invalidate()V

    .line 700
    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mOnFinishedMovementListener:Lcom/htc/widget/DecorFlow$OnFinishedMovementListener;

    if-eqz v0, :cond_1

    .line 701
    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mOnFinishedMovementListener:Lcom/htc/widget/DecorFlow$OnFinishedMovementListener;

    invoke-interface {v0}, Lcom/htc/widget/DecorFlow$OnFinishedMovementListener;->onFinishedMovement()V

    .line 702
    :cond_1
    return-void
.end method

.method private scrollIntoSlots()V
    .locals 6

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    if-nez v3, :cond_1

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 645
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    invoke-static {v3}, Lcom/htc/widget/DecorFlow;->getCenterOfView(Landroid/view/View;)I

    move-result v1

    .line 646
    .local v1, selectedCenter:I
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getCenterOfGallery()I

    move-result v2

    .line 648
    .local v2, targetCenter:I
    sub-int v0, v2, v1

    .line 649
    .local v0, scrollAmount:I
    if-eqz v0, :cond_3

    .line 651
    iget-boolean v3, p0, Lcom/htc/widget/DecorFlow;->mGalleryMode:Z

    if-nez v3, :cond_2

    .line 653
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mFlingRunnable:Lcom/htc/widget/DecorFlow$FlingRunnable;

    invoke-virtual {v3, v0}, Lcom/htc/widget/DecorFlow$FlingRunnable;->startUsingDistance(I)V

    goto :goto_0

    .line 657
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    int-to-float v4, v4

    const v5, 0x3dcccccd

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 658
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mFlingRunnable:Lcom/htc/widget/DecorFlow$FlingRunnable;

    invoke-virtual {v3, v0}, Lcom/htc/widget/DecorFlow$FlingRunnable;->startUsingDistance(I)V

    goto :goto_0

    .line 662
    :cond_3
    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->onFinishedMovement()V

    .line 665
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/htc/widget/DecorFlow;->setScrollStateChanged(I)V

    goto :goto_0
.end method

.method private scrollIntoSlotsAmounts()I
    .locals 4

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    if-nez v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 688
    :goto_0
    return v0

    .line 677
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    invoke-static {v3}, Lcom/htc/widget/DecorFlow;->getCenterOfView(Landroid/view/View;)I

    move-result v1

    .line 678
    .local v1, selectedCenter:I
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getCenterOfGallery()I

    move-result v2

    .line 680
    .local v2, targetCenter:I
    sub-int v0, v2, v1

    .line 688
    .local v0, scrollAmount:I
    goto :goto_0
.end method

.method private scrollToChild(I)Z
    .locals 4
    .parameter "childPosition"

    .prologue
    .line 1462
    invoke-virtual {p0, p1}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1464
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1465
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getCenterOfGallery()I

    move-result v2

    invoke-static {v0}, Lcom/htc/widget/DecorFlow;->getCenterOfView(Landroid/view/View;)I

    move-result v3

    sub-int v1, v2, v3

    .line 1466
    .local v1, distance:I
    iget-object v2, p0, Lcom/htc/widget/DecorFlow;->mFlingRunnable:Lcom/htc/widget/DecorFlow$FlingRunnable;

    invoke-virtual {v2, v1}, Lcom/htc/widget/DecorFlow$FlingRunnable;->startUsingDistance(I)V

    .line 1467
    const/4 v2, 0x1

    .line 1470
    .end local v1           #distance:I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setScrollStateChanged(I)V
    .locals 2
    .parameter "scrollState"

    .prologue
    .line 323
    iget v0, p0, Lcom/htc/widget/DecorFlow;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 325
    iput p1, p0, Lcom/htc/widget/DecorFlow;->mLastScrollState:I

    .line 327
    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mScrollListener:Lcom/htc/widget/DecorFlow$OnScrollListener;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mScrollListener:Lcom/htc/widget/DecorFlow$OnScrollListener;

    iget v1, p0, Lcom/htc/widget/DecorFlow;->mLastScrollState:I

    invoke-interface {v0, v1}, Lcom/htc/widget/DecorFlow$OnScrollListener;->onScrollStateChanged(I)V

    .line 330
    :cond_0
    return-void
.end method

.method private setSelectionToCenterChild()V
    .locals 10

    .prologue
    .line 717
    iget-object v7, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    .line 718
    .local v7, selView:Landroid/view/View;
    iget-object v8, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    if-nez v8, :cond_1

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getCenterOfGallery()I

    move-result v3

    .line 723
    .local v3, galleryCenter:I
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v8, v3, :cond_0

    .line 728
    :cond_2
    const v2, 0x7fffffff

    .line 729
    .local v2, closestEdgeDistance:I
    const/4 v6, 0x0

    .line 730
    .local v6, newSelectedChildIndex:I
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getChildCount()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, i:I
    :goto_1
    if-ltz v4, :cond_3

    .line 732
    invoke-virtual {p0, v4}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 734
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_4

    .line 736
    move v6, v4

    .line 748
    .end local v0           #child:Landroid/view/View;
    :cond_3
    iget v8, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    add-int v5, v8, v6

    .line 750
    .local v5, newPos:I
    iget v8, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    if-eq v5, v8, :cond_0

    .line 751
    invoke-virtual {p0, v5}, Lcom/htc/widget/DecorFlow;->setSelectedPositionInt(I)V

    .line 752
    invoke-virtual {p0, v5}, Lcom/htc/widget/DecorFlow;->setNextSelectedPositionInt(I)V

    .line 753
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->checkSelectionChanged()V

    goto :goto_0

    .line 740
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

    .line 742
    .local v1, childClosestEdgeDistance:I
    if-ge v1, v2, :cond_5

    .line 743
    move v2, v1

    .line 744
    move v6, v4

    .line 730
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .locals 11
    .parameter "child"
    .parameter "offset"
    .parameter "x"
    .parameter "fromLeft"

    .prologue
    .line 967
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/DecorFlow$LayoutParams;

    .line 969
    .local v6, lp:Lcom/htc/widget/DecorFlow$LayoutParams;
    if-nez v6, :cond_0

    .line 970
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6           #lp:Lcom/htc/widget/DecorFlow$LayoutParams;
    check-cast v6, Lcom/htc/widget/DecorFlow$LayoutParams;

    .line 973
    .restart local v6       #lp:Lcom/htc/widget/DecorFlow$LayoutParams;
    :cond_0
    if-eqz p4, :cond_1

    const/4 v8, -0x1

    :goto_0
    invoke-virtual {p0, p1, v8, v6}, Lcom/htc/widget/DecorFlow;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 975
    if-nez p2, :cond_2

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 978
    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mHeightMeasureSpec:I

    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 980
    .local v1, childHeightSpec:I
    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mWidthMeasureSpec:I

    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 984
    .local v5, childWidthSpec:I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 990
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Lcom/htc/widget/DecorFlow;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    .line 991
    .local v4, childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    .line 993
    .local v0, childBottom:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 994
    .local v7, width:I
    if-eqz p4, :cond_3

    .line 995
    move v2, p3

    .line 996
    .local v2, childLeft:I
    add-int v3, v2, v7

    .line 1002
    .local v3, childRight:I
    :goto_2
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 1003
    return-void

    .line 973
    .end local v0           #childBottom:I
    .end local v1           #childHeightSpec:I
    .end local v2           #childLeft:I
    .end local v3           #childRight:I
    .end local v4           #childTop:I
    .end local v5           #childWidthSpec:I
    .end local v7           #width:I
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 975
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 998
    .restart local v0       #childBottom:I
    .restart local v1       #childHeightSpec:I
    .restart local v4       #childTop:I
    .restart local v5       #childWidthSpec:I
    .restart local v7       #width:I
    :cond_3
    sub-int v2, p3, v7

    .line 999
    .restart local v2       #childLeft:I
    move v3, p3

    .restart local v3       #childRight:I
    goto :goto_2
.end method

.method private updateSelectedItemMetadata()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1483
    iget-object v1, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    .line 1485
    .local v1, oldSelectedChild:Landroid/view/View;
    iget v2, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    .line 1486
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_1

    .line 1509
    :cond_0
    :goto_0
    return-void

    .line 1490
    :cond_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1491
    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1493
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->hasFocus()Z

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
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 437
    instance-of v0, p1, Lcom/htc/widget/DecorFlow$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 432
    iget v0, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 2041
    iget-boolean v0, p0, Lcom/htc/widget/DecorFlow;->mIsInit:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->init()V

    .line 2043
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/AbsSpinner;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2045
    invoke-direct {p0, p1}, Lcom/htc/widget/DecorFlow;->drawDimLayer(Landroid/graphics/Canvas;)V

    .line 2046
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1379
    invoke-virtual {p1, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;)Z

    move-result v0

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1323
    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1325
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 1316
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    const/4 v3, 0x0

    .line 2072
    const/4 v0, 0x1

    .line 2073
    .local v0, result:Z
    iget-object v1, p0, Lcom/htc/widget/DecorFlow;->mLoc:[I

    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2074
    iget-object v1, p0, Lcom/htc/widget/DecorFlow;->mLoc:[I

    aget v1, v1, v3

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth_H:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    .line 2075
    iget-object v1, p0, Lcom/htc/widget/DecorFlow;->mLoc:[I

    aget v1, v1, v3

    iget v2, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/htc/widget/DecorFlow;->mLocRight:F

    .line 2077
    iget-object v1, p0, Lcom/htc/widget/DecorFlow;->mLoc:[I

    aget v1, v1, v3

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/widget/DecorFlow;->mScreenLeftLimit:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DecorFlow;->mLoc:[I

    aget v1, v1, v3

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/widget/DecorFlow;->mScreenRightLimit:F

    cmpg-float v1, v1, v2

    if-lez v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/htc/widget/DecorFlow;->mLocRight:F

    iget v2, p0, Lcom/htc/widget/DecorFlow;->mScreenLeftLimit:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/htc/widget/DecorFlow;->mLocRight:F

    iget v2, p0, Lcom/htc/widget/DecorFlow;->mScreenRightLimit:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    .line 2078
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/AbsSpinner;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 2081
    :cond_2
    return v0
.end method

.method public enableDimLayer(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 2063
    iput-boolean p1, p0, Lcom/htc/widget/DecorFlow;->enableDim:Z

    .line 2064
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->invalidate()V

    .line 2065
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 455
    new-instance v0, Lcom/htc/widget/DecorFlow$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/htc/widget/DecorFlow$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 447
    new-instance v0, Lcom/htc/widget/DecorFlow$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/widget/DecorFlow$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 442
    new-instance v0, Lcom/htc/widget/DecorFlow$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/widget/DecorFlow$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getCenterOfGallery()I
    .locals 2

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/widget/AbsSpinner;->mPaddingRight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 3
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 2026
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getFirstVisiblePosition()I

    move-result v2

    sub-int v0, v1, v2

    .line 2028
    .local v0, selected:I
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_0

    .line 2035
    .end local v0           #selected:I
    :goto_0
    return v0

    .line 2032
    .restart local v0       #selected:I
    :cond_0
    if-ge p2, v0, :cond_1

    move v0, p2

    .line 2033
    goto :goto_0

    .line 2035
    :cond_1
    sub-int v1, p2, v0

    add-int/lit8 v1, v1, 0x1

    sub-int v0, p1, v1

    goto :goto_0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 474
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 12
    .parameter "child"
    .parameter "t"

    .prologue
    const v11, 0x3ecccccd

    const/4 v10, 0x1

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1927
    iget-boolean v4, p0, Lcom/htc/widget/DecorFlow;->mGalleryMode:Z

    if-eqz v4, :cond_0

    .line 2021
    :goto_0
    return v10

    .line 1934
    :cond_0
    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1936
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mLoc:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1937
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mLoc:[I

    aget v4, v4, v8

    int-to-float v4, v4

    iget v5, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth_H:F

    add-float/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    .line 1938
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mLoc:[I

    aget v4, v4, v8

    iget v5, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, p0, Lcom/htc/widget/DecorFlow;->mLocRight:F

    .line 1940
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 1941
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 1944
    .local v2, mtx:Landroid/graphics/Matrix;
    iput v7, p0, Lcom/htc/widget/DecorFlow;->translateX:F

    .line 1945
    iput v9, p0, Lcom/htc/widget/DecorFlow;->scale:F

    .line 1946
    const/high16 v4, 0x40a0

    iput v4, p0, Lcom/htc/widget/DecorFlow;->translateY:F

    .line 1947
    iput v9, p0, Lcom/htc/widget/DecorFlow;->alpha:F

    .line 1949
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    array-length v4, v4

    div-int/lit8 v0, v4, 0x2

    .line 1951
    .local v0, center:I
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mLoc:[I

    aget v4, v4, v8

    int-to-float v4, v4

    iget v5, p0, Lcom/htc/widget/DecorFlow;->mScreenLeftLimit:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mLoc:[I

    aget v4, v4, v8

    int-to-float v4, v4

    iget v5, p0, Lcom/htc/widget/DecorFlow;->mScreenRightLimit:F

    cmpg-float v4, v4, v5

    if-lez v4, :cond_2

    :cond_1
    iget v4, p0, Lcom/htc/widget/DecorFlow;->mLocRight:F

    iget v5, p0, Lcom/htc/widget/DecorFlow;->mScreenLeftLimit:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_3

    iget v4, p0, Lcom/htc/widget/DecorFlow;->mLocRight:F

    iget v5, p0, Lcom/htc/widget/DecorFlow;->mScreenRightLimit:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_3

    .line 1952
    :cond_2
    iget v4, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    aget v5, v5, v8

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    .line 1953
    iput v7, p0, Lcom/htc/widget/DecorFlow;->alpha:F

    .line 1954
    iput v7, p0, Lcom/htc/widget/DecorFlow;->translateX:F

    .line 1955
    iput v7, p0, Lcom/htc/widget/DecorFlow;->scale:F

    .line 2012
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mTranslateMtx:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/htc/widget/DecorFlow;->translateX:F

    invoke-virtual {v4, v5, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 2013
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mScaleMtx:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/htc/widget/DecorFlow;->scale:F

    iget v6, p0, Lcom/htc/widget/DecorFlow;->scale:F

    iget v7, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth_H:F

    iget v8, p0, Lcom/htc/widget/DecorFlow;->mPlaceY:I

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 2016
    iget v4, p0, Lcom/htc/widget/DecorFlow;->alpha:F

    invoke-virtual {p2, v4}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 2018
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mTranslateMtx:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mScaleMtx:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    goto/16 :goto_0

    .line 1956
    :cond_4
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    aget v4, v4, v8

    iget v5, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_b

    iget v4, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    iget-object v6, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_b

    .line 1958
    const/high16 v3, 0x3f80

    .line 1960
    .local v3, num:F
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    aget v4, v4, v8

    iget v5, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_7

    iget v4, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    aget v5, v5, v0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_7

    .line 1961
    move v1, v0

    .local v1, i:I
    :goto_2
    if-lt v1, v10, :cond_5

    .line 1962
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    iget v5, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_6

    iget v4, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    aget v5, v5, v1

    cmpg-float v4, v4, v5

    if-gez v4, :cond_6

    .line 1963
    iget v4, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 1964
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList3:[F

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/DecorFlow;->alpha:F

    .line 1967
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList3:[F

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/DecorFlow;->translateX:F

    .line 1970
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList:[F

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList3:[F

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/DecorFlow;->scale:F

    .line 1976
    :cond_5
    iget v4, p0, Lcom/htc/widget/DecorFlow;->mScaleConst:F

    iget v5, p0, Lcom/htc/widget/DecorFlow;->scale:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v11

    add-float/2addr v4, v9

    iget v5, p0, Lcom/htc/widget/DecorFlow;->translateX:F

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/DecorFlow;->translateX:F

    goto/16 :goto_1

    .line 1961
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1980
    .end local v1           #i:I
    :cond_7
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    aget v4, v4, v0

    iget v5, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_8

    .line 1981
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    aget v4, v4, v0

    iput v4, p0, Lcom/htc/widget/DecorFlow;->alpha:F

    .line 1982
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    aget v4, v4, v0

    iput v4, p0, Lcom/htc/widget/DecorFlow;->translateX:F

    .line 1983
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList:[F

    aget v4, v4, v0

    iput v4, p0, Lcom/htc/widget/DecorFlow;->scale:F

    goto/16 :goto_1

    .line 1987
    :cond_8
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    aget v4, v4, v0

    iget v5, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    iget v4, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    iget-object v6, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_3

    .line 1988
    add-int/lit8 v1, v0, 0x1

    .restart local v1       #i:I
    :goto_3
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    array-length v4, v4

    if-ge v1, v4, :cond_9

    .line 1989
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    iget v5, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_a

    iget v4, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    aget v5, v5, v1

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_a

    .line 1990
    iget v4, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 1991
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList3:[F

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/DecorFlow;->alpha:F

    .line 1994
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList3:[F

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/DecorFlow;->translateX:F

    .line 1997
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList:[F

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList3:[F

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/DecorFlow;->scale:F

    .line 2003
    :cond_9
    iget v4, p0, Lcom/htc/widget/DecorFlow;->mScaleConst:F

    iget v5, p0, Lcom/htc/widget/DecorFlow;->scale:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v11

    add-float/2addr v4, v9

    iget v5, p0, Lcom/htc/widget/DecorFlow;->translateX:F

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/DecorFlow;->translateX:F

    goto/16 :goto_1

    .line 1988
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2006
    .end local v1           #i:I
    .end local v3           #num:F
    :cond_b
    iput v7, p0, Lcom/htc/widget/DecorFlow;->alpha:F

    .line 2007
    iput v7, p0, Lcom/htc/widget/DecorFlow;->translateX:F

    .line 2008
    iput v7, p0, Lcom/htc/widget/DecorFlow;->scale:F

    goto/16 :goto_1
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mContextMenuInfo:Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method public getFlingRatio()F
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/htc/widget/DecorFlow;->mVelocityRatio:F

    return v0
.end method

.method public getGalleryMode()Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/htc/widget/DecorFlow;->mGalleryMode:Z

    return v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 9
    .parameter "motionToLeft"
    .parameter "deltaX"

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 518
    if-eqz p1, :cond_0

    iget v6, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    .line 519
    .local v3, extremeItemPosition:I
    :goto_0
    iget v6, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 521
    .local v1, extremeChild:Landroid/view/View;
    if-nez v1, :cond_1

    move v5, p2

    .line 561
    :goto_1
    return v5

    .end local v1           #extremeChild:Landroid/view/View;
    .end local v3           #extremeItemPosition:I
    :cond_0
    move v3, v5

    .line 518
    goto :goto_0

    .line 525
    .restart local v1       #extremeChild:Landroid/view/View;
    .restart local v3       #extremeItemPosition:I
    :cond_1
    invoke-static {v1}, Lcom/htc/widget/DecorFlow;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    .line 526
    .local v2, extremeChildCenter:I
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getCenterOfGallery()I

    move-result v4

    .line 528
    .local v4, galleryCenter:I
    if-eqz p1, :cond_4

    .line 529
    if-gt v2, v4, :cond_7

    .line 530
    iget v6, p0, Lcom/htc/widget/DecorFlow;->mBouncingMode:I

    if-ne v6, v8, :cond_3

    .line 531
    sub-int v5, v4, v2

    iget v6, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    sub-int v0, v5, v6

    .line 533
    .local v0, centerDifference:I
    if-eqz p1, :cond_2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    :cond_2
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1

    .line 538
    .end local v0           #centerDifference:I
    :cond_3
    iput v8, p0, Lcom/htc/widget/DecorFlow;->mBouncingMode:I

    goto :goto_1

    .line 543
    :cond_4
    if-lt v2, v4, :cond_7

    .line 544
    iget v6, p0, Lcom/htc/widget/DecorFlow;->mBouncingMode:I

    if-ne v6, v7, :cond_6

    .line 545
    sub-int v5, v4, v2

    iget v6, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    add-int v0, v5, v6

    .line 547
    .restart local v0       #centerDifference:I
    if-eqz p1, :cond_5

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    :cond_5
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1

    .line 552
    .end local v0           #centerDifference:I
    :cond_6
    iput v7, p0, Lcom/htc/widget/DecorFlow;->mBouncingMode:I

    goto :goto_1

    .line 558
    :cond_7
    sub-int v0, v4, v2

    .line 560
    .restart local v0       #centerDifference:I
    iput v5, p0, Lcom/htc/widget/DecorFlow;->mBouncingMode:I

    .line 561
    if-eqz p1, :cond_8

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    :cond_8
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1
.end method

.method public getScrollRatio()F
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/htc/widget/DecorFlow;->mDistanceRatio:F

    return v0
.end method

.method layout(IZ)V
    .locals 7
    .parameter "delta"
    .parameter "animate"

    .prologue
    const/4 v6, 0x0

    .line 770
    iget-object v4, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 771
    .local v0, childrenLeft:I
    iget v4, p0, Lcom/htc/widget/AdapterView;->mRight:I

    iget v5, p0, Lcom/htc/widget/AdapterView;->mLeft:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v1, v4, v5

    .line 773
    .local v1, childrenWidth:I
    iget-boolean v4, p0, Lcom/htc/widget/AdapterView;->mDataChanged:Z

    if-eqz v4, :cond_0

    .line 774
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->handleDataChanged()V

    .line 778
    :cond_0
    iget v4, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    if-nez v4, :cond_1

    .line 779
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->resetList()V

    .line 829
    :goto_0
    return-void

    .line 784
    :cond_1
    iget v4, p0, Lcom/htc/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz v4, :cond_2

    .line 785
    iget v4, p0, Lcom/htc/widget/AdapterView;->mNextSelectedPosition:I

    invoke-virtual {p0, v4}, Lcom/htc/widget/DecorFlow;->setSelectedPositionInt(I)V

    .line 789
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->recycleAllViews()V

    .line 793
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->detachAllViewsFromParent()V

    .line 799
    iput v6, p0, Lcom/htc/widget/DecorFlow;->mRightMost:I

    .line 800
    iput v6, p0, Lcom/htc/widget/DecorFlow;->mLeftMost:I

    .line 808
    iget v4, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    iput v4, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    .line 809
    iget v4, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    const/4 v5, 0x1

    invoke-direct {p0, v4, v6, v6, v5}, Lcom/htc/widget/DecorFlow;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 812
    .local v2, sel:Landroid/view/View;
    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 813
    .local v3, selectedOffset:I
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 815
    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->fillToGalleryRight()V

    .line 816
    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->fillToGalleryLeft()V

    .line 819
    iget-object v4, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v4}, Lcom/htc/widget/AbsSpinner$RecycleBin;->clear()V

    .line 821
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->invalidate()V

    .line 822
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->checkSelectionChanged()V

    .line 824
    iput-boolean v6, p0, Lcom/htc/widget/AdapterView;->mDataChanged:Z

    .line 825
    iput-boolean v6, p0, Lcom/htc/widget/AdapterView;->mNeedSync:Z

    .line 826
    iget v4, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v4}, Lcom/htc/widget/DecorFlow;->setNextSelectedPositionInt(I)V

    .line 828
    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->updateSelectedItemMetadata()V

    goto :goto_0
.end method

.method moveNext()Z
    .locals 2

    .prologue
    .line 1453
    iget v0, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1454
    iget v0, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/widget/DecorFlow;->scrollToChild(I)Z

    .line 1455
    const/4 v0, 0x1

    .line 1457
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method movePrevious()Z
    .locals 2

    .prologue
    .line 1444
    iget v0, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    if-lez v0, :cond_0

    .line 1445
    iget v0, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/htc/widget/DecorFlow;->scrollToChild(I)Z

    .line 1446
    const/4 v0, 0x1

    .line 1448
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onCancel()V
    .locals 0

    .prologue
    .line 1257
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->onUp()V

    .line 1261
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 1152
    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mFlingRunnable:Lcom/htc/widget/DecorFlow$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/DecorFlow$FlingRunnable;->stop(Z)V

    .line 1155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/DecorFlow;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    .line 1157
    iget v0, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    if-ltz v0, :cond_0

    .line 1158
    iget v0, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/DecorFlow;->mDownTouchView:Landroid/view/View;

    .line 1159
    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1163
    :cond_0
    iput-boolean v2, p0, Lcom/htc/widget/DecorFlow;->mIsFirstScroll:Z

    .line 1166
    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v3, 0x1

    .line 1077
    iget-boolean v0, p0, Lcom/htc/widget/DecorFlow;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/widget/DecorFlow;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1084
    iget-boolean v0, p0, Lcom/htc/widget/DecorFlow;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/htc/widget/DecorFlow;->mSuppressSelectionChanged:Z

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mFlingRunnable:Lcom/htc/widget/DecorFlow$FlingRunnable;

    neg-float v1, p3

    iget v2, p0, Lcom/htc/widget/DecorFlow;->mVelocityRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/DecorFlow$FlingRunnable;->startUsingVelocity(I)V

    .line 1090
    return v3
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1546
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/AbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1553
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1554
    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1557
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1388
    sparse-switch p1, :sswitch_data_0

    .line 1408
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/widget/AbsSpinner;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_1
    return v0

    .line 1391
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->movePrevious()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1392
    invoke-virtual {p0, v0}, Lcom/htc/widget/DecorFlow;->playSoundEffect(I)V

    goto :goto_1

    .line 1397
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->moveNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1398
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/htc/widget/DecorFlow;->playSoundEffect(I)V

    goto :goto_1

    .line 1404
    :sswitch_2
    iput-boolean v0, p0, Lcom/htc/widget/DecorFlow;->mReceivedInvokeKeyDown:Z

    goto :goto_0

    .line 1388
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1413
    sparse-switch p1, :sswitch_data_0

    .line 1440
    invoke-super {p0, p1, p2}, Lcom/htc/widget/AbsSpinner;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 1417
    :sswitch_0
    iget-boolean v1, p0, Lcom/htc/widget/DecorFlow;->mReceivedInvokeKeyDown:Z

    if-eqz v1, :cond_0

    .line 1418
    iget v1, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    if-lez v1, :cond_0

    .line 1420
    iget-object v1, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/htc/widget/DecorFlow;->dispatchPress(Landroid/view/View;)V

    .line 1421
    new-instance v1, Lcom/htc/widget/DecorFlow$2;

    invoke-direct {v1, p0}, Lcom/htc/widget/DecorFlow$2;-><init>(Lcom/htc/widget/DecorFlow;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/widget/DecorFlow;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1427
    iget v1, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    iget v2, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1428
    .local v0, selectedIndex:I
    invoke-virtual {p0, v0}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    iget-object v3, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v4, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    invoke-interface {v3, v4}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/htc/widget/DecorFlow;->performItemClick(Landroid/view/View;IJ)Z

    .line 1434
    .end local v0           #selectedIndex:I
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/DecorFlow;->mReceivedInvokeKeyDown:Z

    .line 1436
    const/4 v1, 0x1

    goto :goto_0

    .line 1413
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

    .line 461
    invoke-super/range {p0 .. p5}, Lcom/htc/widget/AbsSpinner;->onLayout(ZIIII)V

    .line 467
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/AdapterView;->mInLayout:Z

    .line 468
    invoke-virtual {p0, v1, v1}, Lcom/htc/widget/DecorFlow;->layout(IZ)V

    .line 469
    iput-boolean v1, p0, Lcom/htc/widget/AdapterView;->mInLayout:Z

    .line 470
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 1268
    iget v2, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    if-gez v2, :cond_1

    .line 1279
    :cond_0
    :goto_0
    return-void

    .line 1273
    :cond_1
    iget-boolean v2, p0, Lcom/htc/widget/DecorFlow;->mShouldCallbackOnUnselectedItemLongClick:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    iget v3, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    if-ne v2, v3, :cond_0

    .line 1274
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/widget/DecorFlow;->performHapticFeedback(I)Z

    .line 1275
    iget v2, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    invoke-virtual {p0, v2}, Lcom/htc/widget/DecorFlow;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 1277
    .local v0, id:J
    iget-object v2, p0, Lcom/htc/widget/DecorFlow;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/htc/widget/DecorFlow;->dispatchLongPress(Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1109
    iget-object v1, p0, Lcom/htc/widget/DecorFlow;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1113
    iget-boolean v1, p0, Lcom/htc/widget/DecorFlow;->mShouldCallbackDuringFling:Z

    if-nez v1, :cond_3

    .line 1114
    iget-boolean v1, p0, Lcom/htc/widget/DecorFlow;->mIsFirstScroll:Z

    if-eqz v1, :cond_1

    .line 1120
    iget-boolean v1, p0, Lcom/htc/widget/DecorFlow;->mSuppressSelectionChanged:Z

    if-nez v1, :cond_0

    iput-boolean v4, p0, Lcom/htc/widget/DecorFlow;->mSuppressSelectionChanged:Z

    .line 1121
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/DecorFlow;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/widget/DecorFlow;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1129
    :cond_1
    :goto_0
    const/high16 v0, 0x3f80

    .line 1130
    .local v0, times:F
    iget v1, p0, Lcom/htc/widget/DecorFlow;->mOrientation:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/htc/widget/DecorFlow;->mOrientation:I

    if-ne v1, v6, :cond_4

    .line 1131
    :cond_2
    const/high16 v0, 0x4020

    .line 1137
    :goto_1
    invoke-direct {p0, v6}, Lcom/htc/widget/DecorFlow;->setScrollStateChanged(I)V

    .line 1139
    neg-float v1, p3

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/htc/widget/DecorFlow;->mDistanceRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/htc/widget/DecorFlow;->trackMotionScroll(I)V

    .line 1142
    iput-boolean v5, p0, Lcom/htc/widget/DecorFlow;->mIsFirstScroll:Z

    .line 1143
    return v4

    .line 1124
    .end local v0           #times:F
    :cond_3
    iget-boolean v1, p0, Lcom/htc/widget/DecorFlow;->mSuppressSelectionChanged:Z

    if-eqz v1, :cond_1

    iput-boolean v5, p0, Lcom/htc/widget/DecorFlow;->mSuppressSelectionChanged:Z

    goto :goto_0

    .line 1133
    .restart local v0       #times:F
    :cond_4
    const/high16 v0, 0x4020

    goto :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1287
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    .line 1055
    iget v0, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    if-ltz v0, :cond_2

    .line 1058
    iget v0, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/htc/widget/DecorFlow;->scrollToChild(I)Z

    .line 1061
    iget-boolean v0, p0, Lcom/htc/widget/DecorFlow;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    if-ne v0, v1, :cond_1

    .line 1062
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mDownTouchView:Landroid/view/View;

    iget v1, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    iget-object v2, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v3, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/widget/DecorFlow;->performItemClick(Landroid/view/View;IJ)Z

    .line 1066
    :cond_1
    const/4 v0, 0x1

    .line 1069
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1904
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/AbsSpinner;->onSizeChanged(IIII)V

    .line 1905
    iget-object v2, p0, Lcom/htc/widget/AbsSpinner;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1906
    .local v1, manager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1907
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/DecorFlow;->mOrientation:I

    .line 1908
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/DecorFlow;->mScreenWidth:I

    .line 1909
    const/16 v2, 0x4b0

    iput v2, p0, Lcom/htc/widget/DecorFlow;->EXPAND_UNIT:I

    .line 1910
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/widget/DecorFlow;->mIsInit:Z

    .line 1911
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 1037
    iget-object v2, p0, Lcom/htc/widget/DecorFlow;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1039
    .local v1, retValue:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1040
    .local v0, action:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1042
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->onUp()V

    .line 1047
    :cond_0
    :goto_0
    return v1

    .line 1043
    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1044
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->onCancel()V

    goto :goto_0
.end method

.method onUp()V
    .locals 1

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mFlingRunnable:Lcom/htc/widget/DecorFlow$FlingRunnable;

    #getter for: Lcom/htc/widget/DecorFlow$FlingRunnable;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/htc/widget/DecorFlow$FlingRunnable;->access$200(Lcom/htc/widget/DecorFlow$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1247
    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->scrollIntoSlots()V

    .line 1250
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->dispatchUnpress()V

    .line 1251
    return-void
.end method

.method public pointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, -0x1

    .line 1170
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getChildCount()I

    move-result v0

    .line 1171
    .local v0, count:I
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getSelectedItemPosition()I

    move-result v2

    .line 1173
    .local v2, position:I
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getSelectedView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1185
    :cond_0
    :goto_0
    return v3

    .line 1175
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getSelectedView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    if-lt p1, v4, :cond_3

    .line 1176
    iget v4, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int v1, v2, v4

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_3

    if-ge v1, v0, :cond_3

    .line 1177
    invoke-direct {p0, v1, p1, p2}, Lcom/htc/widget/DecorFlow;->isHit(III)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1178
    iget v3, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_0

    .line 1176
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1181
    .end local v1           #i:I
    :cond_3
    iget v4, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int v1, v2, v4

    .restart local v1       #i:I
    :goto_2
    if-ltz v1, :cond_0

    if-ge v1, v0, :cond_0

    .line 1182
    invoke-direct {p0, v1, p1, p2}, Lcom/htc/widget/DecorFlow;->isHit(III)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1183
    iget v3, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_0

    .line 1181
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method

.method selectionChanged()V
    .locals 1

    .prologue
    .line 706
    iget-boolean v0, p0, Lcom/htc/widget/DecorFlow;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 707
    invoke-super {p0}, Lcom/htc/widget/AbsSpinner;->selectionChanged()V

    .line 709
    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .parameter "animationDurationMillis"

    .prologue
    .line 383
    iput p1, p0, Lcom/htc/widget/DecorFlow;->mAnimationDuration:I

    .line 384
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 345
    iput-boolean p1, p0, Lcom/htc/widget/DecorFlow;->mShouldCallbackDuringFling:Z

    .line 346
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 357
    iput-boolean p1, p0, Lcom/htc/widget/DecorFlow;->mShouldCallbackOnUnselectedItemClick:Z

    .line 358
    return-void
.end method

.method public setCallbackOnUnselectedItemLongClick(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 370
    iput-boolean p1, p0, Lcom/htc/widget/DecorFlow;->mShouldCallbackOnUnselectedItemLongClick:Z

    .line 371
    return-void
.end method

.method public setFlingRatio(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 278
    iput p1, p0, Lcom/htc/widget/DecorFlow;->mVelocityRatio:F

    .line 279
    return-void
.end method

.method public setGalleryMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 273
    iput-boolean p1, p0, Lcom/htc/widget/DecorFlow;->mGalleryMode:Z

    .line 274
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 1519
    iget v0, p0, Lcom/htc/widget/DecorFlow;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1520
    iput p1, p0, Lcom/htc/widget/DecorFlow;->mGravity:I

    .line 1521
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->requestLayout()V

    .line 1523
    :cond_0
    return-void
.end method

.method public setOnFinishedMovementListener(Lcom/htc/widget/DecorFlow$OnFinishedMovementListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1569
    iput-object p1, p0, Lcom/htc/widget/DecorFlow;->mOnFinishedMovementListener:Lcom/htc/widget/DecorFlow$OnFinishedMovementListener;

    .line 1570
    return-void
.end method

.method public setOnScrollListener(Lcom/htc/widget/DecorFlow$OnScrollListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 314
    if-eqz p1, :cond_0

    .line 316
    iput-object p1, p0, Lcom/htc/widget/DecorFlow;->mScrollListener:Lcom/htc/widget/DecorFlow$OnScrollListener;

    .line 318
    :cond_0
    return-void
.end method

.method public setScrollRatio(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 283
    iput p1, p0, Lcom/htc/widget/DecorFlow;->mDistanceRatio:F

    .line 284
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1475
    invoke-super {p0, p1}, Lcom/htc/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 1478
    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->updateSelectedItemMetadata()V

    .line 1479
    return-void
.end method

.method public setSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 394
    iput p1, p0, Lcom/htc/widget/DecorFlow;->mSpacing:I

    .line 395
    return-void
.end method

.method protected setStaticTransformationsEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 2087
    invoke-super {p0, p1}, Lcom/htc/widget/AbsSpinner;->setStaticTransformationsEnabled(Z)V

    .line 2089
    iput-boolean p1, p0, Lcom/htc/widget/DecorFlow;->isChildStaticTransformationEnabled:Z

    .line 2090
    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0
    .parameter "unselectedAlpha"

    .prologue
    .line 405
    iput p1, p0, Lcom/htc/widget/DecorFlow;->mUnselectedAlpha:F

    .line 406
    return-void
.end method

.method public showContextMenu()Z
    .locals 5

    .prologue
    .line 1347
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_0

    .line 1348
    iget v2, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v2, v3

    .line 1349
    .local v0, index:I
    invoke-virtual {p0, v0}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1350
    .local v1, v:Landroid/view/View;
    iget v2, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    iget-wide v3, p0, Lcom/htc/widget/AdapterView;->mSelectedRowId:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/htc/widget/DecorFlow;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v2

    .line 1353
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
    .line 1335
    invoke-virtual {p0, p1}, Lcom/htc/widget/DecorFlow;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 1336
    .local v2, longPressPosition:I
    if-gez v2, :cond_0

    .line 1337
    const/4 v3, 0x0

    .line 1341
    :goto_0
    return v3

    .line 1340
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1341
    .local v0, longPressId:J
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/htc/widget/DecorFlow;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v3

    goto :goto_0
.end method

.method trackMotionScroll(I)V
    .locals 4
    .parameter "deltaX"

    .prologue
    const/4 v2, 0x0

    .line 485
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 515
    :goto_0
    return-void

    .line 489
    :cond_0
    if-gez p1, :cond_2

    const/4 v1, 0x1

    .line 490
    .local v1, toLeft:Z
    :goto_1
    invoke-virtual {p0, v1, p1}, Lcom/htc/widget/DecorFlow;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    .line 491
    .local v0, limitedDeltaX:I
    if-eq v0, p1, :cond_1

    .line 493
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mFlingRunnable:Lcom/htc/widget/DecorFlow$FlingRunnable;

    #calls: Lcom/htc/widget/DecorFlow$FlingRunnable;->endFling(Z)V
    invoke-static {v3, v2}, Lcom/htc/widget/DecorFlow$FlingRunnable;->access$100(Lcom/htc/widget/DecorFlow$FlingRunnable;Z)V

    .line 494
    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->onFinishedMovement()V

    .line 497
    :cond_1
    invoke-direct {p0, v0}, Lcom/htc/widget/DecorFlow;->offsetChildrenLeftAndRight(I)V

    .line 499
    invoke-direct {p0, v1}, Lcom/htc/widget/DecorFlow;->detachOffScreenChildren(Z)V

    .line 501
    if-eqz v1, :cond_3

    .line 503
    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->fillToGalleryRight()V

    .line 510
    :goto_2
    iget-object v2, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2}, Lcom/htc/widget/AbsSpinner$RecycleBin;->clear()V

    .line 512
    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->setSelectionToCenterChild()V

    .line 514
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->invalidate()V

    goto :goto_0

    .end local v0           #limitedDeltaX:I
    .end local v1           #toLeft:Z
    :cond_2
    move v1, v2

    .line 489
    goto :goto_1

    .line 506
    .restart local v0       #limitedDeltaX:I
    .restart local v1       #toLeft:Z
    :cond_3
    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->fillToGalleryLeft()V

    goto :goto_2
.end method
