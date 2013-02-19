.class public Lcom/htc/widget/HtcSpinner;
.super Lcom/htc/widget/HtcAbsSpinner;
.source "HtcSpinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcSpinner$DropDownAdapter;,
        Lcom/htc/widget/HtcSpinner$BackgroundDrawable;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_DOWN:I

.field private static final ANIMATION_DURATION_UP:I


# instance fields
.field private mBackground:Lcom/htc/widget/HtcSpinner$BackgroundDrawable;

.field private mCenterX:I

.field private mCenterY:I

.field private mCurrentScale:F

.field private mDefaultColor:I

.field private mDownAnimatorSet:Landroid/animation/AnimatorSet;

.field private mIsAnimating:Z

.field private mMultiplyColor:I

.field private mOverlayColor:I

.field private mPrompt:Ljava/lang/CharSequence;

.field private mUpAnimatorSet:Landroid/animation/AnimatorSet;

.field private rect:Landroid/graphics/Rect;

.field private selectedItemView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/htc/widget/HtcSpinner;->ANIMATION_DURATION_DOWN:I

    .line 66
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/htc/widget/HtcSpinner;->ANIMATION_DURATION_UP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 84
    const v0, 0x1010081

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcAbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    sget-object v1, Lcom/android/internal/R$styleable;->Spinner:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcSpinner;->mPrompt:Ljava/lang/CharSequence;

    .line 92
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcSpinner;->initBackground(Landroid/content/Context;)V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcSpinner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/htc/widget/HtcSpinner;->mIsAnimating:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/widget/HtcSpinner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/htc/widget/HtcSpinner;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/widget/HtcSpinner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/htc/widget/HtcSpinner;->mMultiplyColor:I

    return v0
.end method

.method private initAnimation()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 112
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 113
    .local v0, accInterpolator:Landroid/view/animation/AccelerateInterpolator;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 116
    .local v1, decInterpolator:Landroid/view/animation/DecelerateInterpolator;
    const-string v6, "scale"

    new-array v7, v9, [F

    fill-array-data v7, :array_0

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 118
    .local v3, downScaleAnimator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 119
    sget v6, Lcom/htc/widget/HtcSpinner;->ANIMATION_DURATION_DOWN:I

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 121
    const-string v6, "scale"

    new-array v7, v9, [F

    fill-array-data v7, :array_1

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 123
    .local v5, upScaleAnimator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v5, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 124
    sget v6, Lcom/htc/widget/HtcSpinner;->ANIMATION_DURATION_UP:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 127
    iget-object v6, p0, Lcom/htc/widget/HtcSpinner;->mBackground:Lcom/htc/widget/HtcSpinner$BackgroundDrawable;

    const-string v7, "alpha"

    new-array v8, v9, [I

    fill-array-data v8, :array_2

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 130
    .local v2, downMultiplyAlphaAnimator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 131
    sget v6, Lcom/htc/widget/HtcSpinner;->ANIMATION_DURATION_DOWN:I

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 133
    iget-object v6, p0, Lcom/htc/widget/HtcSpinner;->mBackground:Lcom/htc/widget/HtcSpinner$BackgroundDrawable;

    const-string v7, "alpha"

    new-array v8, v9, [I

    fill-array-data v8, :array_3

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 136
    .local v4, upMultiplyAlphaAnimator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v4, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 137
    sget v6, Lcom/htc/widget/HtcSpinner;->ANIMATION_DURATION_UP:I

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 140
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcSpinner;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 141
    iget-object v6, p0, Lcom/htc/widget/HtcSpinner;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v7, v9, [Landroid/animation/Animator;

    aput-object v3, v7, v10

    aput-object v2, v7, v11

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 143
    iget-object v6, p0, Lcom/htc/widget/HtcSpinner;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/htc/widget/HtcSpinner$1;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcSpinner$1;-><init>(Lcom/htc/widget/HtcSpinner;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 149
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcSpinner;->mUpAnimatorSet:Landroid/animation/AnimatorSet;

    .line 150
    iget-object v6, p0, Lcom/htc/widget/HtcSpinner;->mUpAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v7, v9, [Landroid/animation/Animator;

    aput-object v5, v7, v10

    aput-object v4, v7, v11

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 151
    iget-object v6, p0, Lcom/htc/widget/HtcSpinner;->mUpAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/htc/widget/HtcSpinner$2;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcSpinner$2;-><init>(Lcom/htc/widget/HtcSpinner;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 161
    return-void

    .line 116
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data

    .line 121
    :array_1
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 127
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data

    .line 133
    :array_3
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private initBackground(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 98
    new-instance v0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;

    invoke-direct {v0, p0, p1}, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;-><init>(Lcom/htc/widget/HtcSpinner;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcSpinner;->mBackground:Lcom/htc/widget/HtcSpinner$BackgroundDrawable;

    .line 99
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner;->mBackground:Lcom/htc/widget/HtcSpinner$BackgroundDrawable;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcSpinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    invoke-static {p1}, Lcom/htc/widget/HtcButtonUtil;->getMultiplyColor(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcSpinner;->mMultiplyColor:I

    .line 101
    invoke-static {p1}, Lcom/htc/widget/HtcButtonUtil;->getOverlayColor(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcSpinner;->mOverlayColor:I

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/HtcSpinner;->mContext:Landroid/content/Context;

    const-string v2, "light_primaryfont_color"

    const v3, 0x206004b

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcSpinner;->mDefaultColor:I

    .line 104
    invoke-direct {p0}, Lcom/htc/widget/HtcSpinner;->initAnimation()V

    .line 105
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/htc/widget/HtcSpinner;->setPadding(IIII)V

    .line 106
    invoke-virtual {p0, p0}, Lcom/htc/widget/HtcSpinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 107
    return-void
.end method

.method private makeAndAddView(I)Landroid/view/View;
    .locals 4
    .parameter "position"

    .prologue
    .line 430
    iget-boolean v2, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-nez v2, :cond_0

    .line 431
    iget-object v2, p0, Lcom/htc/widget/HtcAbsSpinner;->mRecycler:Lcom/htc/widget/HtcAbsSpinner$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/htc/widget/HtcAbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 432
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 434
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcSpinner;->setUpChild(Landroid/view/View;)V

    move-object v1, v0

    .line 446
    .end local v0           #child:Landroid/view/View;
    .local v1, child:Landroid/view/View;
    :goto_0
    return-object v1

    .line 441
    .end local v1           #child:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 444
    .restart local v0       #child:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcSpinner;->setUpChild(Landroid/view/View;)V

    move-object v1, v0

    .line 446
    .end local v0           #child:Landroid/view/View;
    .restart local v1       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private setScale(F)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 218
    iput p1, p0, Lcom/htc/widget/HtcSpinner;->mCurrentScale:F

    .line 219
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner;->mBackground:Lcom/htc/widget/HtcSpinner$BackgroundDrawable;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->setScale(F)V

    .line 220
    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->invalidate()V

    .line 221
    return-void
.end method

.method private setUpChild(Landroid/view/View;)V
    .locals 11
    .parameter "child"

    .prologue
    .line 461
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 462
    .local v6, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v6, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 466
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {p0, p1, v8, v6}, Lcom/htc/widget/HtcSpinner;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 468
    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->hasFocus()Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 471
    iget v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mHeightMeasureSpec:I

    iget-object v9, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 473
    .local v1, childHeightSpec:I
    iget v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mWidthMeasureSpec:I

    iget-object v9, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 477
    .local v5, childWidthSpec:I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 483
    iget-object v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->getMeasuredHeight()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v4, v8, v9

    .line 486
    .local v4, childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    .line 488
    .local v0, childBottom:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 489
    .local v7, width:I
    const/4 v2, 0x0

    .line 490
    .local v2, childLeft:I
    add-int v3, v2, v7

    .line 492
    .local v3, childRight:I
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 493
    return-void
.end method


# virtual methods
.method public getBaseline()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 327
    const/4 v0, 0x0

    .line 329
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 330
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 336
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 337
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v2

    add-int/2addr v1, v2

    .line 339
    :goto_1
    return v1

    .line 331
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 332
    invoke-direct {p0, v2}, Lcom/htc/widget/HtcSpinner;->makeAndAddView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 339
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner;->mPrompt:Ljava/lang/CharSequence;

    return-object v0
.end method

.method layout(IZ)V
    .locals 8
    .parameter "delta"
    .parameter "animate"

    .prologue
    const/4 v7, 0x0

    .line 376
    iget-object v5, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 377
    .local v0, childrenLeft:I
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mRight:I

    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mLeft:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v1, v5, v6

    .line 379
    .local v1, childrenWidth:I
    iget-boolean v5, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-eqz v5, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->handleDataChanged()V

    .line 384
    :cond_0
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-nez v5, :cond_1

    .line 385
    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->resetList()V

    .line 415
    :goto_0
    return-void

    .line 389
    :cond_1
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    if-ltz v5, :cond_2

    .line 390
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcSpinner;->setSelectedPositionInt(I)V

    .line 393
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->recycleAllViews()V

    .line 396
    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->removeAllViewsInLayout()V

    .line 399
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iput v5, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 400
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    invoke-direct {p0, v5}, Lcom/htc/widget/HtcSpinner;->makeAndAddView(I)Landroid/view/View;

    move-result-object v2

    .line 401
    .local v2, sel:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 402
    .local v4, width:I
    div-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v0

    div-int/lit8 v6, v4, 0x2

    sub-int v3, v5, v6

    .line 403
    .local v3, selectedOffset:I
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 406
    iget-object v5, p0, Lcom/htc/widget/HtcAbsSpinner;->mRecycler:Lcom/htc/widget/HtcAbsSpinner$RecycleBin;

    invoke-virtual {v5}, Lcom/htc/widget/HtcAbsSpinner$RecycleBin;->clear()V

    .line 408
    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->invalidate()V

    .line 410
    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->checkSelectionChanged()V

    .line 412
    iput-boolean v7, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 413
    iput-boolean v7, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 414
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcSpinner;->setNextSelectedPositionInt(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 531
    invoke-virtual {p0, p2}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 532
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 533
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->getSelectedView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/HtcSpinner;->selectedItemView:Landroid/widget/TextView;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner;->selectedItemView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 197
    iget-boolean v0, p0, Lcom/htc/widget/HtcSpinner;->mIsAnimating:Z

    if-eqz v0, :cond_4

    .line 199
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner;->selectedItemView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcSpinner;->mOverlayColor:I

    if-eq v0, v1, :cond_1

    .line 200
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner;->selectedItemView:Landroid/widget/TextView;

    iget v1, p0, Lcom/htc/widget/HtcSpinner;->mOverlayColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner;->rect:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    .line 203
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcSpinner;->rect:Landroid/graphics/Rect;

    .line 204
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/htc/widget/HtcSpinner;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/widget/HtcSpinner;->mCenterX:I

    .line 205
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/htc/widget/HtcSpinner;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/widget/HtcSpinner;->mCenterY:I

    .line 208
    :cond_2
    iget v0, p0, Lcom/htc/widget/HtcSpinner;->mCurrentScale:F

    iget v1, p0, Lcom/htc/widget/HtcSpinner;->mCurrentScale:F

    iget v2, p0, Lcom/htc/widget/HtcSpinner;->mCenterX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/htc/widget/HtcSpinner;->mCenterY:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 214
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsSpinner;->onDraw(Landroid/graphics/Canvas;)V

    .line 215
    return-void

    .line 211
    :cond_4
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner;->selectedItemView:Landroid/widget/TextView;

    iget v1, p0, Lcom/htc/widget/HtcSpinner;->mDefaultColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
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

    .line 362
    invoke-super/range {p0 .. p5}, Lcom/htc/widget/HtcAbsSpinner;->onLayout(ZIIII)V

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    .line 364
    invoke-virtual {p0, v1, v1}, Lcom/htc/widget/HtcSpinner;->layout(IZ)V

    .line 365
    iput-boolean v1, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    .line 366
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 187
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsSpinner;->onSizeChanged(IIII)V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcSpinner;->rect:Landroid/graphics/Rect;

    .line 189
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 165
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 182
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 167
    :pswitch_1
    iget-boolean v0, p0, Lcom/htc/widget/HtcSpinner;->mIsAnimating:Z

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 169
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner;->mUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 173
    :pswitch_2
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner;->mUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 174
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 177
    :pswitch_3
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 178
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner;->mUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public performClick()Z
    .locals 6

    .prologue
    .line 497
    invoke-super {p0}, Lcom/htc/widget/HtcAbsSpinner;->performClick()Z

    move-result v3

    .line 499
    .local v3, handled:Z
    if-nez v3, :cond_2

    .line 500
    const/4 v3, 0x1

    .line 501
    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 503
    .local v2, context:Landroid/content/Context;
    new-instance v0, Lcom/htc/widget/HtcSpinner$DropDownAdapter;

    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/htc/widget/HtcSpinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;)V

    .line 505
    .local v0, adapter:Lcom/htc/widget/HtcSpinner$DropDownAdapter;
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 507
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-object v4, p0, Lcom/htc/widget/HtcSpinner;->mPrompt:Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    .line 508
    iget-object v4, p0, Lcom/htc/widget/HtcSpinner;->mPrompt:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 511
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {v1, v0, v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 514
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v4, :cond_1

    .line 515
    const v4, 0x2040152

    new-instance v5, Lcom/htc/widget/HtcSpinner$3;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcSpinner$3;-><init>(Lcom/htc/widget/HtcSpinner;)V

    invoke-virtual {v1, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 524
    :cond_1
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 527
    .end local v0           #adapter:Lcom/htc/widget/HtcSpinner$DropDownAdapter;
    .end local v1           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v2           #context:Landroid/content/Context;
    :cond_2
    return v3
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 236
    :goto_0
    return-void

    .line 228
    :cond_0
    if-nez p1, :cond_1

    .line 229
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 230
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner;->mUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 231
    const v0, 0x3ecccccd

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcSpinner;->setAlpha(F)V

    .line 235
    :goto_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsSpinner;->setEnabled(Z)V

    goto :goto_0

    .line 233
    :cond_1
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcSpinner;->setAlpha(F)V

    goto :goto_1
.end method

.method public setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 351
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOnItemClickListener cannot be used with a spinner."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "prompt"

    .prologue
    .line 540
    iput-object p1, p0, Lcom/htc/widget/HtcSpinner;->mPrompt:Ljava/lang/CharSequence;

    .line 541
    return-void
.end method

.method public setPromptId(I)V
    .locals 1
    .parameter "promptId"

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcSpinner;->mPrompt:Ljava/lang/CharSequence;

    .line 549
    return-void
.end method
