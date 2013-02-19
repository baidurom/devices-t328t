.class public Lcom/htc/widget/HtcImageButton;
.super Landroid/widget/ImageButton;
.source "HtcImageButton.java"


# static fields
.field private static final ANIMATION_DURATION_DOWN:I

.field private static final ANIMATION_DURATION_UP:I


# instance fields
.field mBackgroundChange:Z

.field mBackgroundMode:I

.field mCenterX:I

.field mCenterY:I

.field mDownAnimating:Z

.field mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field mDownXScaleAnimator:Landroid/animation/ObjectAnimator;

.field mDownYScaleAnimator:Landroid/animation/ObjectAnimator;

.field mExtAnimationMode:I

.field mIsAnimating:Z

.field mIsContentMultiplyRequired:Z

.field mIsGreenOn:Z

.field mIsRimMultiply:Z

.field mMaskMode:Landroid/graphics/PorterDuff$Mode;

.field mMinScaleHeight:F

.field mMinScaleWidth:F

.field mMultiplyColor:I

.field private mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

.field mMultiplyPaint:Landroid/graphics/Paint;

.field private mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

.field mOriginalColorFilter:Landroid/graphics/ColorFilter;

.field mOverlayColor:I

.field mStayInPress:Z

.field mTextRestColor:Landroid/content/res/ColorStateList;

.field mUpAnimating:Z

.field mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field mUpXScaleAnimator:Landroid/animation/ObjectAnimator;

.field mUpYScaleAnimator:Landroid/animation/ObjectAnimator;

.field mUseDynamicScale:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/htc/widget/HtcImageButton;->ANIMATION_DURATION_DOWN:I

    .line 33
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/htc/widget/HtcImageButton;->ANIMATION_DURATION_UP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    const v0, 0x3f666666

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object v1, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 31
    iput-object v1, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    .line 35
    iput-boolean v2, p0, Lcom/htc/widget/HtcImageButton;->mIsAnimating:Z

    .line 36
    iput-object v1, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyPaint:Landroid/graphics/Paint;

    .line 52
    iput-boolean v2, p0, Lcom/htc/widget/HtcImageButton;->mBackgroundChange:Z

    .line 53
    iput-object v1, p0, Lcom/htc/widget/HtcImageButton;->mMaskMode:Landroid/graphics/PorterDuff$Mode;

    .line 55
    iput v3, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyColor:I

    .line 56
    iput v3, p0, Lcom/htc/widget/HtcImageButton;->mOverlayColor:I

    .line 58
    iput-object v1, p0, Lcom/htc/widget/HtcImageButton;->mOriginalColorFilter:Landroid/graphics/ColorFilter;

    .line 65
    iput-object v1, p0, Lcom/htc/widget/HtcImageButton;->mDownXScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 66
    iput-object v1, p0, Lcom/htc/widget/HtcImageButton;->mDownYScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 67
    iput-object v1, p0, Lcom/htc/widget/HtcImageButton;->mUpXScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 68
    iput-object v1, p0, Lcom/htc/widget/HtcImageButton;->mUpYScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 69
    iput v0, p0, Lcom/htc/widget/HtcImageButton;->mMinScaleWidth:F

    .line 70
    iput v0, p0, Lcom/htc/widget/HtcImageButton;->mMinScaleHeight:F

    .line 71
    iput-boolean v2, p0, Lcom/htc/widget/HtcImageButton;->mUseDynamicScale:Z

    .line 75
    iput v2, p0, Lcom/htc/widget/HtcImageButton;->mExtAnimationMode:I

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mIsRimMultiply:Z

    .line 81
    invoke-direct {p0, p1, v1, v2}, Lcom/htc/widget/HtcImageButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 4
    .parameter "context"
    .parameter "backgroundMode"
    .parameter "isContentMultiply"

    .prologue
    const/4 v3, -0x1

    const v0, 0x3f666666

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object v1, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 31
    iput-object v1, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    .line 35
    iput-boolean v2, p0, Lcom/htc/widget/HtcImageButton;->mIsAnimating:Z

    .line 36
    iput-object v1, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyPaint:Landroid/graphics/Paint;

    .line 52
    iput-boolean v2, p0, Lcom/htc/widget/HtcImageButton;->mBackgroundChange:Z

    .line 53
    iput-object v1, p0, Lcom/htc/widget/HtcImageButton;->mMaskMode:Landroid/graphics/PorterDuff$Mode;

    .line 55
    iput v3, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyColor:I

    .line 56
    iput v3, p0, Lcom/htc/widget/HtcImageButton;->mOverlayColor:I

    .line 58
    iput-object v1, p0, Lcom/htc/widget/HtcImageButton;->mOriginalColorFilter:Landroid/graphics/ColorFilter;

    .line 65
    iput-object v1, p0, Lcom/htc/widget/HtcImageButton;->mDownXScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 66
    iput-object v1, p0, Lcom/htc/widget/HtcImageButton;->mDownYScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 67
    iput-object v1, p0, Lcom/htc/widget/HtcImageButton;->mUpXScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 68
    iput-object v1, p0, Lcom/htc/widget/HtcImageButton;->mUpYScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 69
    iput v0, p0, Lcom/htc/widget/HtcImageButton;->mMinScaleWidth:F

    .line 70
    iput v0, p0, Lcom/htc/widget/HtcImageButton;->mMinScaleHeight:F

    .line 71
    iput-boolean v2, p0, Lcom/htc/widget/HtcImageButton;->mUseDynamicScale:Z

    .line 75
    iput v2, p0, Lcom/htc/widget/HtcImageButton;->mExtAnimationMode:I

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mIsRimMultiply:Z

    .line 87
    iput-boolean p3, p0, Lcom/htc/widget/HtcImageButton;->mIsContentMultiplyRequired:Z

    .line 88
    iput p2, p0, Lcom/htc/widget/HtcImageButton;->mBackgroundMode:I

    .line 90
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/htc/widget/HtcImageButton;->setPadding(IIII)V

    .line 93
    iput v2, p0, Lcom/htc/widget/HtcImageButton;->mExtAnimationMode:I

    .line 95
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcImageButton;->init(Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZI)V
    .locals 4
    .parameter "context"
    .parameter "backgroundMode"
    .parameter "isContentMultiply"
    .parameter "extAnimationMode"

    .prologue
    const/4 v3, -0x1

    const v0, 0x3f666666

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object v1, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 31
    iput-object v1, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    .line 35
    iput-boolean v2, p0, Lcom/htc/widget/HtcImageButton;->mIsAnimating:Z

    .line 36
    iput-object v1, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyPaint:Landroid/graphics/Paint;

    .line 52
    iput-boolean v2, p0, Lcom/htc/widget/HtcImageButton;->mBackgroundChange:Z

    .line 53
    iput-object v1, p0, Lcom/htc/widget/HtcImageButton;->mMaskMode:Landroid/graphics/PorterDuff$Mode;

    .line 55
    iput v3, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyColor:I

    .line 56
    iput v3, p0, Lcom/htc/widget/HtcImageButton;->mOverlayColor:I

    .line 58
    iput-object v1, p0, Lcom/htc/widget/HtcImageButton;->mOriginalColorFilter:Landroid/graphics/ColorFilter;

    .line 65
    iput-object v1, p0, Lcom/htc/widget/HtcImageButton;->mDownXScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 66
    iput-object v1, p0, Lcom/htc/widget/HtcImageButton;->mDownYScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 67
    iput-object v1, p0, Lcom/htc/widget/HtcImageButton;->mUpXScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 68
    iput-object v1, p0, Lcom/htc/widget/HtcImageButton;->mUpYScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 69
    iput v0, p0, Lcom/htc/widget/HtcImageButton;->mMinScaleWidth:F

    .line 70
    iput v0, p0, Lcom/htc/widget/HtcImageButton;->mMinScaleHeight:F

    .line 71
    iput-boolean v2, p0, Lcom/htc/widget/HtcImageButton;->mUseDynamicScale:Z

    .line 75
    iput v2, p0, Lcom/htc/widget/HtcImageButton;->mExtAnimationMode:I

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mIsRimMultiply:Z

    .line 101
    iput-boolean p3, p0, Lcom/htc/widget/HtcImageButton;->mIsContentMultiplyRequired:Z

    .line 102
    iput p2, p0, Lcom/htc/widget/HtcImageButton;->mBackgroundMode:I

    .line 104
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/htc/widget/HtcImageButton;->setPadding(IIII)V

    .line 107
    iput p4, p0, Lcom/htc/widget/HtcImageButton;->mExtAnimationMode:I

    .line 109
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcImageButton;->init(Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, -0x1

    const v2, 0x3f666666

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput-object v0, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 31
    iput-object v0, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    .line 35
    iput-boolean v1, p0, Lcom/htc/widget/HtcImageButton;->mIsAnimating:Z

    .line 36
    iput-object v0, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyPaint:Landroid/graphics/Paint;

    .line 52
    iput-boolean v1, p0, Lcom/htc/widget/HtcImageButton;->mBackgroundChange:Z

    .line 53
    iput-object v0, p0, Lcom/htc/widget/HtcImageButton;->mMaskMode:Landroid/graphics/PorterDuff$Mode;

    .line 55
    iput v3, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyColor:I

    .line 56
    iput v3, p0, Lcom/htc/widget/HtcImageButton;->mOverlayColor:I

    .line 58
    iput-object v0, p0, Lcom/htc/widget/HtcImageButton;->mOriginalColorFilter:Landroid/graphics/ColorFilter;

    .line 65
    iput-object v0, p0, Lcom/htc/widget/HtcImageButton;->mDownXScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 66
    iput-object v0, p0, Lcom/htc/widget/HtcImageButton;->mDownYScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 67
    iput-object v0, p0, Lcom/htc/widget/HtcImageButton;->mUpXScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 68
    iput-object v0, p0, Lcom/htc/widget/HtcImageButton;->mUpYScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 69
    iput v2, p0, Lcom/htc/widget/HtcImageButton;->mMinScaleWidth:F

    .line 70
    iput v2, p0, Lcom/htc/widget/HtcImageButton;->mMinScaleHeight:F

    .line 71
    iput-boolean v1, p0, Lcom/htc/widget/HtcImageButton;->mUseDynamicScale:Z

    .line 75
    iput v1, p0, Lcom/htc/widget/HtcImageButton;->mExtAnimationMode:I

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mIsRimMultiply:Z

    .line 114
    invoke-direct {p0, p1, p2, v1}, Lcom/htc/widget/HtcImageButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, -0x1

    const v2, 0x3f666666

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    iput-object v0, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 31
    iput-object v0, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    .line 35
    iput-boolean v1, p0, Lcom/htc/widget/HtcImageButton;->mIsAnimating:Z

    .line 36
    iput-object v0, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyPaint:Landroid/graphics/Paint;

    .line 52
    iput-boolean v1, p0, Lcom/htc/widget/HtcImageButton;->mBackgroundChange:Z

    .line 53
    iput-object v0, p0, Lcom/htc/widget/HtcImageButton;->mMaskMode:Landroid/graphics/PorterDuff$Mode;

    .line 55
    iput v3, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyColor:I

    .line 56
    iput v3, p0, Lcom/htc/widget/HtcImageButton;->mOverlayColor:I

    .line 58
    iput-object v0, p0, Lcom/htc/widget/HtcImageButton;->mOriginalColorFilter:Landroid/graphics/ColorFilter;

    .line 65
    iput-object v0, p0, Lcom/htc/widget/HtcImageButton;->mDownXScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 66
    iput-object v0, p0, Lcom/htc/widget/HtcImageButton;->mDownYScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 67
    iput-object v0, p0, Lcom/htc/widget/HtcImageButton;->mUpXScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 68
    iput-object v0, p0, Lcom/htc/widget/HtcImageButton;->mUpYScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 69
    iput v2, p0, Lcom/htc/widget/HtcImageButton;->mMinScaleWidth:F

    .line 70
    iput v2, p0, Lcom/htc/widget/HtcImageButton;->mMinScaleHeight:F

    .line 71
    iput-boolean v1, p0, Lcom/htc/widget/HtcImageButton;->mUseDynamicScale:Z

    .line 75
    iput v1, p0, Lcom/htc/widget/HtcImageButton;->mExtAnimationMode:I

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mIsRimMultiply:Z

    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcImageButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    return-void
.end method

.method private calculateScaleRate(II)V
    .locals 3
    .parameter "w"
    .parameter "h"

    .prologue
    const/high16 v2, 0x3f80

    const v0, 0x3f666666

    const v1, 0x3dccccd0

    .line 378
    if-lt p1, p2, :cond_0

    .line 379
    iput v0, p0, Lcom/htc/widget/HtcImageButton;->mMinScaleHeight:F

    .line 380
    int-to-float v0, p2

    mul-float/2addr v0, v1

    int-to-float v1, p1

    div-float/2addr v0, v1

    sub-float v0, v2, v0

    iput v0, p0, Lcom/htc/widget/HtcImageButton;->mMinScaleWidth:F

    .line 387
    :goto_0
    return-void

    .line 382
    :cond_0
    iput v0, p0, Lcom/htc/widget/HtcImageButton;->mMinScaleWidth:F

    .line 383
    int-to-float v0, p1

    mul-float/2addr v0, v1

    int-to-float v1, p2

    div-float/2addr v0, v1

    sub-float v0, v2, v0

    iput v0, p0, Lcom/htc/widget/HtcImageButton;->mMinScaleHeight:F

    goto :goto_0
.end method

.method private cancelEvent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 649
    iput-boolean v2, p0, Lcom/htc/widget/HtcImageButton;->mIsAnimating:Z

    .line 650
    iget-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mStayInPress:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mIsGreenOn:Z

    if-eqz v0, :cond_2

    .line 651
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcImageButton;->setScaleWidth(F)V

    .line 652
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcImageButton;->setScaleHeight(F)V

    .line 653
    iget-object v0, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 654
    iget-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mIsContentMultiplyRequired:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcImageButton;->mMaskMode:Landroid/graphics/PorterDuff$Mode;

    invoke-super {p0, v0, v1}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 661
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mIsContentMultiplyRequired:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->invalidate()V

    .line 662
    :cond_1
    return-void

    .line 656
    :cond_2
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcImageButton;->setScaleWidth(F)V

    .line 657
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcImageButton;->setScaleHeight(F)V

    .line 658
    iget-object v0, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 659
    iget-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mIsContentMultiplyRequired:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/ImageButton;->clearColorFilter()V

    goto :goto_0
.end method

.method private cancelPropertyMove()V
    .locals 1

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mIsAnimating:Z

    if-eqz v0, :cond_0

    .line 530
    invoke-direct {p0}, Lcom/htc/widget/HtcImageButton;->cancelEvent()V

    .line 535
    :cond_0
    return-void
.end method

.method private handelUpEventWithAnimation()V
    .locals 1

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mIsAnimating:Z

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/htc/widget/HtcImageButton;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcImageButton;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 438
    invoke-direct {p0}, Lcom/htc/widget/HtcImageButton;->removePropertyUp()V

    .line 441
    iget-object v0, p0, Lcom/htc/widget/HtcImageButton;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcImageButton;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 448
    :cond_1
    return-void
.end method

.method private handleTouchEventWithAnimation(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 451
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 453
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 454
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 455
    invoke-direct {p0}, Lcom/htc/widget/HtcImageButton;->handelUpEventWithAnimation()V

    goto :goto_0

    .line 459
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 461
    iget-object v3, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 462
    iget-object v3, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 463
    const/16 v3, 0x7f

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcImageButton;->setMultiplyAlpha(I)V

    goto :goto_0

    .line 467
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 468
    iget-boolean v3, p0, Lcom/htc/widget/HtcImageButton;->mStayInPress:Z

    if-nez v3, :cond_1

    .line 469
    iget-object v3, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 470
    iget-object v3, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 471
    iget-object v3, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_0

    .line 473
    :cond_1
    iget-boolean v3, p0, Lcom/htc/widget/HtcImageButton;->mIsAnimating:Z

    if-eqz v3, :cond_2

    .line 474
    invoke-direct {p0}, Lcom/htc/widget/HtcImageButton;->cancelEvent()V

    .line 476
    :cond_2
    iget-object v3, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 477
    iget-object v3, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    .line 481
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 482
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 483
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 486
    .local v2, y:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 487
    .local v0, slop:I
    rsub-int/lit8 v3, v0, 0x0

    if-lt v1, v3, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    if-ge v1, v3, :cond_3

    rsub-int/lit8 v3, v0, 0x0

    if-lt v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    if-lt v2, v3, :cond_0

    .line 489
    :cond_3
    iget-boolean v3, p0, Lcom/htc/widget/HtcImageButton;->mStayInPress:Z

    if-nez v3, :cond_4

    .line 490
    iget-object v3, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 491
    iget-object v3, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 492
    iget-object v3, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    goto/16 :goto_0

    .line 494
    :cond_4
    iget-boolean v3, p0, Lcom/htc/widget/HtcImageButton;->mIsAnimating:Z

    if-eqz v3, :cond_5

    .line 495
    invoke-direct {p0}, Lcom/htc/widget/HtcImageButton;->cancelEvent()V

    .line 497
    :cond_5
    iget-object v3, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 498
    iget-object v3, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    goto/16 :goto_0

    .line 451
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private handleTouchEventWithoutAnimation(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 538
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 540
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 541
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 542
    iget-boolean v3, p0, Lcom/htc/widget/HtcImageButton;->mIsAnimating:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HtcImageButton;->removePropertyUp()V

    goto :goto_0

    .line 546
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 548
    invoke-direct {p0}, Lcom/htc/widget/HtcImageButton;->removePropertyDown()V

    goto :goto_0

    .line 552
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 553
    invoke-direct {p0}, Lcom/htc/widget/HtcImageButton;->cancelPropertyMove()V

    goto :goto_0

    .line 557
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 558
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 559
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 562
    .local v2, y:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 563
    .local v0, slop:I
    rsub-int/lit8 v3, v0, 0x0

    if-lt v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    if-ge v1, v3, :cond_1

    rsub-int/lit8 v3, v0, 0x0

    if-lt v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    if-lt v2, v3, :cond_0

    .line 565
    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/HtcImageButton;->cancelPropertyMove()V

    goto :goto_0

    .line 538
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/16 v5, 0x5dd

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 167
    invoke-direct {p0}, Lcom/htc/widget/HtcImageButton;->setExtendAnimationFlag()V

    .line 170
    invoke-static {p1}, Lcom/htc/widget/HtcButtonUtil;->getMultiplyColor(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyColor:I

    .line 171
    invoke-static {p1}, Lcom/htc/widget/HtcButtonUtil;->getOverlayColor(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcImageButton;->mOverlayColor:I

    .line 173
    invoke-direct {p0}, Lcom/htc/widget/HtcImageButton;->initMultiplyAnimation()V

    .line 174
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyPaint:Landroid/graphics/Paint;

    .line 176
    iget v0, p0, Lcom/htc/widget/HtcImageButton;->mBackgroundMode:I

    if-ne v0, v4, :cond_0

    .line 177
    iget-object v0, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    iget-object v0, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 179
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/htc/widget/HtcImageButton;->mMaskMode:Landroid/graphics/PorterDuff$Mode;

    .line 185
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 186
    iput-boolean v3, p0, Lcom/htc/widget/HtcImageButton;->mStayInPress:Z

    .line 187
    iput-boolean v3, p0, Lcom/htc/widget/HtcImageButton;->mIsGreenOn:Z

    .line 188
    iput-boolean v3, p0, Lcom/htc/widget/HtcImageButton;->mDownAnimating:Z

    .line 189
    iput-boolean v3, p0, Lcom/htc/widget/HtcImageButton;->mUpAnimating:Z

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcImageButton;->mOriginalColorFilter:Landroid/graphics/ColorFilter;

    .line 197
    const-string v0, "HTC_BTN_PRESS"

    invoke-static {v4, p0, v5, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcImageButton;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 198
    const-string v0, "HTC_BTN_UNPRESS"

    invoke-static {v4, p0, v5, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcImageButton;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 201
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/widget/HtcImageButton;->mOverlayColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    iget-object v0, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 183
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/htc/widget/HtcImageButton;->mMaskMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 135
    if-eqz p2, :cond_0

    .line 136
    sget-object v1, Lcom/htc/R$styleable;->HtcCompoundButtonMode:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 138
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/widget/HtcImageButton;->mIsContentMultiplyRequired:Z

    .line 140
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    sget-object v1, Lcom/htc/R$styleable;->HtcAnimationButtonMode:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 144
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcImageButton;->mBackgroundMode:I

    .line 145
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcImageButton;->mExtAnimationMode:I

    .line 147
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 149
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 152
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    .end local v0           #a:Landroid/content/res/TypedArray;
    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcImageButton;->init(Landroid/content/Context;)V

    .line 163
    return-void

    .line 155
    :cond_0
    iput-boolean v3, p0, Lcom/htc/widget/HtcImageButton;->mIsContentMultiplyRequired:Z

    .line 156
    iput v2, p0, Lcom/htc/widget/HtcImageButton;->mBackgroundMode:I

    .line 157
    iput v2, p0, Lcom/htc/widget/HtcImageButton;->mExtAnimationMode:I

    .line 158
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/htc/widget/HtcImageButton;->setPadding(IIII)V

    goto :goto_0
.end method

.method private initMultiplyAnimation()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f80

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 265
    const-string v2, "scaleWidth"

    new-array v3, v5, [F

    aput v8, v3, v6

    iget v4, p0, Lcom/htc/widget/HtcImageButton;->mMinScaleWidth:F

    aput v4, v3, v7

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcImageButton;->mDownXScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 266
    iget-object v2, p0, Lcom/htc/widget/HtcImageButton;->mDownXScaleAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 267
    iget-object v2, p0, Lcom/htc/widget/HtcImageButton;->mDownXScaleAnimator:Landroid/animation/ObjectAnimator;

    sget v3, Lcom/htc/widget/HtcImageButton;->ANIMATION_DURATION_DOWN:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 269
    const-string v2, "scaleHeight"

    new-array v3, v5, [F

    aput v8, v3, v6

    iget v4, p0, Lcom/htc/widget/HtcImageButton;->mMinScaleHeight:F

    aput v4, v3, v7

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcImageButton;->mDownYScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 270
    iget-object v2, p0, Lcom/htc/widget/HtcImageButton;->mDownYScaleAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 271
    iget-object v2, p0, Lcom/htc/widget/HtcImageButton;->mDownYScaleAnimator:Landroid/animation/ObjectAnimator;

    sget v3, Lcom/htc/widget/HtcImageButton;->ANIMATION_DURATION_DOWN:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 273
    const-string v2, "scaleWidth"

    new-array v3, v5, [F

    iget v4, p0, Lcom/htc/widget/HtcImageButton;->mMinScaleWidth:F

    aput v4, v3, v6

    aput v8, v3, v7

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcImageButton;->mUpXScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 274
    iget-object v2, p0, Lcom/htc/widget/HtcImageButton;->mUpXScaleAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 275
    iget-object v2, p0, Lcom/htc/widget/HtcImageButton;->mUpXScaleAnimator:Landroid/animation/ObjectAnimator;

    sget v3, Lcom/htc/widget/HtcImageButton;->ANIMATION_DURATION_UP:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 277
    const-string v2, "scaleHeight"

    new-array v3, v5, [F

    iget v4, p0, Lcom/htc/widget/HtcImageButton;->mMinScaleHeight:F

    aput v4, v3, v6

    aput v8, v3, v7

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcImageButton;->mUpYScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 278
    iget-object v2, p0, Lcom/htc/widget/HtcImageButton;->mUpYScaleAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 279
    iget-object v2, p0, Lcom/htc/widget/HtcImageButton;->mUpYScaleAnimator:Landroid/animation/ObjectAnimator;

    sget v3, Lcom/htc/widget/HtcImageButton;->ANIMATION_DURATION_UP:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, downMultiplyAlphaAnimator:Landroid/animation/ObjectAnimator;
    const/4 v1, 0x0

    .line 285
    .local v1, upMultiplyAlphaAnimator:Landroid/animation/ObjectAnimator;
    const-string v2, "multiplyAlpha"

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 286
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 287
    sget v2, Lcom/htc/widget/HtcImageButton;->ANIMATION_DURATION_DOWN:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 289
    const-string v2, "multiplyAlpha"

    new-array v3, v5, [I

    fill-array-data v3, :array_1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 290
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 291
    sget v2, Lcom/htc/widget/HtcImageButton;->ANIMATION_DURATION_UP:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 293
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 294
    iget-object v2, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v5, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/htc/widget/HtcImageButton;->mDownXScaleAnimator:Landroid/animation/ObjectAnimator;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/htc/widget/HtcImageButton;->mDownYScaleAnimator:Landroid/animation/ObjectAnimator;

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 295
    iget-object v2, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v5, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/htc/widget/HtcImageButton;->mDownXScaleAnimator:Landroid/animation/ObjectAnimator;

    aput-object v4, v3, v6

    aput-object v0, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 297
    iget-object v2, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/htc/widget/HtcImageButton$1;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcImageButton$1;-><init>(Lcom/htc/widget/HtcImageButton;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 313
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    .line 314
    iget-object v2, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v5, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/htc/widget/HtcImageButton;->mUpXScaleAnimator:Landroid/animation/ObjectAnimator;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/htc/widget/HtcImageButton;->mUpYScaleAnimator:Landroid/animation/ObjectAnimator;

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 315
    iget-object v2, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v5, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/htc/widget/HtcImageButton;->mUpXScaleAnimator:Landroid/animation/ObjectAnimator;

    aput-object v4, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 317
    iget-object v2, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/htc/widget/HtcImageButton$2;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcImageButton$2;-><init>(Lcom/htc/widget/HtcImageButton;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 332
    return-void

    .line 285
    :array_0
    .array-data 0x4
        0x7ft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data

    .line 289
    :array_1
    .array-data 0x4
        0x7ft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private removePropertyDown()V
    .locals 1

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->onUpAnimationEnd()V

    .line 507
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->onDownAnimationStart()V

    .line 508
    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcImageButton;->setMultiplyAlpha(I)V

    .line 509
    iget v0, p0, Lcom/htc/widget/HtcImageButton;->mMinScaleWidth:F

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcImageButton;->setScaleWidth(F)V

    .line 510
    iget v0, p0, Lcom/htc/widget/HtcImageButton;->mMinScaleHeight:F

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcImageButton;->setScaleHeight(F)V

    .line 511
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->onDownAnimationEnd()V

    .line 512
    return-void
.end method

.method private removePropertyUp()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 515
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->onDownAnimationEnd()V

    .line 516
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->onUpAnimationStart()V

    .line 517
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcImageButton;->setMultiplyAlpha(I)V

    .line 518
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcImageButton;->setScaleWidth(F)V

    .line 519
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcImageButton;->setScaleHeight(F)V

    .line 520
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->onUpAnimationEnd()V

    .line 521
    return-void
.end method

.method private resetScaleAnimation(II)V
    .locals 7
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 390
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcImageButton;->calculateScaleRate(II)V

    .line 392
    iget-object v0, p0, Lcom/htc/widget/HtcImageButton;->mDownXScaleAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v6, [F

    aput v3, v1, v4

    iget v2, p0, Lcom/htc/widget/HtcImageButton;->mMinScaleWidth:F

    aput v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 393
    iget-object v0, p0, Lcom/htc/widget/HtcImageButton;->mDownYScaleAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v6, [F

    aput v3, v1, v4

    iget v2, p0, Lcom/htc/widget/HtcImageButton;->mMinScaleHeight:F

    aput v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 394
    const-string v0, "scaleWidth"

    new-array v1, v6, [F

    iget v2, p0, Lcom/htc/widget/HtcImageButton;->mMinScaleWidth:F

    aput v2, v1, v4

    aput v3, v1, v5

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcImageButton;->mUpXScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 395
    const-string v0, "scaleHeight"

    new-array v1, v6, [F

    iget v2, p0, Lcom/htc/widget/HtcImageButton;->mMinScaleHeight:F

    aput v2, v1, v4

    aput v3, v1, v5

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcImageButton;->mUpYScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 400
    return-void
.end method

.method private setExtendAnimationFlag()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 124
    iget v0, p0, Lcom/htc/widget/HtcImageButton;->mExtAnimationMode:I

    if-nez v0, :cond_1

    .line 125
    iput-boolean v1, p0, Lcom/htc/widget/HtcImageButton;->mIsRimMultiply:Z

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcImageButton;->mExtAnimationMode:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mIsRimMultiply:Z

    goto :goto_0
.end method


# virtual methods
.method onDownAnimationCancel()V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mDownAnimating:Z

    .line 234
    iget-object v0, p0, Lcom/htc/widget/HtcImageButton;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcImageButton;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 236
    :cond_0
    return-void
.end method

.method onDownAnimationEnd()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mDownAnimating:Z

    .line 226
    iget-object v0, p0, Lcom/htc/widget/HtcImageButton;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcImageButton;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 228
    :cond_0
    return-void
.end method

.method onDownAnimationStart()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 209
    iget-object v2, p0, Lcom/htc/widget/HtcImageButton;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcImageButton;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v2}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 212
    :cond_0
    iput-boolean v1, p0, Lcom/htc/widget/HtcImageButton;->mIsAnimating:Z

    .line 213
    iput-boolean v1, p0, Lcom/htc/widget/HtcImageButton;->mDownAnimating:Z

    .line 215
    iget-object v2, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    const/16 v3, 0xff

    if-ne v2, v3, :cond_3

    :goto_0
    iput-boolean v1, p0, Lcom/htc/widget/HtcImageButton;->mIsGreenOn:Z

    .line 216
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 217
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    :cond_1
    invoke-static {}, Lcom/htc/widget/HtcButtonUtil;->getEnableAnimation()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->clearColorFilter()V

    .line 220
    :cond_2
    return-void

    .line 215
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 690
    iget-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mIsAnimating:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/htc/widget/HtcButtonUtil;->getEnableAnimation()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 691
    const/4 v8, 0x0

    .line 692
    .local v8, sc:I
    const/4 v7, 0x0

    .line 693
    .local v7, d:Landroid/graphics/drawable/Drawable;
    iget-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mIsContentMultiplyRequired:Z

    if-eqz v0, :cond_0

    .line 694
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 696
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->getScrollX()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->getScrollY()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v8

    .line 697
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 700
    if-eqz v7, :cond_0

    .line 701
    iget-object v0, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcImageButton;->mMaskMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 706
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 708
    iget-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mIsContentMultiplyRequired:Z

    if-eqz v0, :cond_2

    .line 709
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 710
    if-eqz v7, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcImageButton;->mOriginalColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 715
    :cond_1
    :goto_0
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 721
    .end local v7           #d:Landroid/graphics/drawable/Drawable;
    .end local v8           #sc:I
    :cond_2
    :goto_1
    return-void

    .line 713
    .restart local v7       #d:Landroid/graphics/drawable/Drawable;
    .restart local v8       #sc:I
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcImageButton;->mMaskMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 719
    .end local v7           #d:Landroid/graphics/drawable/Drawable;
    .end local v8           #sc:I
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected onFocusLost()V
    .locals 1

    .prologue
    .line 728
    iget-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mIsAnimating:Z

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 730
    invoke-direct {p0}, Lcom/htc/widget/HtcImageButton;->cancelEvent()V

    .line 731
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->invalidate()V

    .line 734
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageButton;->onFocusLost()V

    .line 735
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 576
    sparse-switch p1, :sswitch_data_0

    .line 595
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 579
    :sswitch_0
    invoke-static {}, Lcom/htc/widget/HtcButtonUtil;->getEnableAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 580
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 583
    iget-object v0, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 587
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    invoke-direct {p0}, Lcom/htc/widget/HtcImageButton;->removePropertyDown()V

    goto :goto_0

    .line 576
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 599
    sparse-switch p1, :sswitch_data_0

    .line 619
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 602
    :sswitch_0
    invoke-static {}, Lcom/htc/widget/HtcButtonUtil;->getEnableAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    invoke-direct {p0}, Lcom/htc/widget/HtcImageButton;->handelUpEventWithAnimation()V

    goto :goto_0

    .line 609
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    iget-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mIsAnimating:Z

    if-eqz v0, :cond_0

    .line 612
    invoke-direct {p0}, Lcom/htc/widget/HtcImageButton;->removePropertyUp()V

    goto :goto_0

    .line 599
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 669
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;->onScrollChanged(IIII)V

    .line 671
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mBackgroundChange:Z

    .line 672
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/high16 v1, 0x3f00

    .line 407
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 408
    :cond_0
    int-to-float v0, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcImageButton;->mCenterX:I

    .line 409
    int-to-float v0, p2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcImageButton;->mCenterY:I

    .line 410
    iget-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mIsAnimating:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mUseDynamicScale:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcImageButton;->resetScaleAnimation(II)V

    .line 415
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;->onSizeChanged(IIII)V

    .line 416
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 639
    invoke-static {}, Lcom/htc/widget/HtcButtonUtil;->getEnableAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcImageButton;->handleTouchEventWithAnimation(Landroid/view/MotionEvent;)V

    .line 645
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 642
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcImageButton;->handleTouchEventWithoutAnimation(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method onUpAnimationCancel()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 255
    iput-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mIsAnimating:Z

    .line 256
    iput-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mUpAnimating:Z

    .line 257
    iput-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mDownAnimating:Z

    .line 258
    return-void
.end method

.method onUpAnimationEnd()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 243
    iput-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mIsAnimating:Z

    .line 244
    iput-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mUpAnimating:Z

    .line 245
    iput-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mDownAnimating:Z

    .line 247
    iget-object v0, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_1

    .line 248
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->clearColorFilter()V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mIsContentMultiplyRequired:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcImageButton;->mMaskMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method onUpAnimationStart()V
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mUpAnimating:Z

    .line 240
    return-void
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 627
    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    return v0
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 635
    invoke-super {p0}, Landroid/widget/ImageButton;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 680
    iput-object p1, p0, Lcom/htc/widget/HtcImageButton;->mOriginalColorFilter:Landroid/graphics/ColorFilter;

    .line 681
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 682
    return-void
.end method

.method public setColorOn(Z)V
    .locals 4
    .parameter "on"

    .prologue
    const/16 v3, 0xff

    const/4 v1, 0x0

    .line 742
    iget-object v2, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    .line 743
    .local v0, current_on:Z
    :goto_0
    if-eq v0, p1, :cond_1

    .line 744
    if-eqz p1, :cond_3

    .line 745
    iget-object v1, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 746
    iget-boolean v1, p0, Lcom/htc/widget/HtcImageButton;->mIsContentMultiplyRequired:Z

    if-eqz v1, :cond_0

    .line 747
    iget-object v1, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcImageButton;->mMaskMode:Landroid/graphics/PorterDuff$Mode;

    invoke-super {p0, v1, v2}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 757
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/htc/widget/HtcImageButton;->mIsContentMultiplyRequired:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->invalidate()V

    .line 759
    :cond_1
    return-void

    .end local v0           #current_on:Z
    :cond_2
    move v0, v1

    .line 742
    goto :goto_0

    .line 751
    .restart local v0       #current_on:Z
    :cond_3
    iget-object v2, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 752
    iget-boolean v1, p0, Lcom/htc/widget/HtcImageButton;->mIsContentMultiplyRequired:Z

    if-eqz v1, :cond_0

    .line 753
    invoke-super {p0}, Landroid/widget/ImageButton;->clearColorFilter()V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 426
    :goto_0
    return-void

    .line 420
    :cond_0
    if-nez p1, :cond_1

    .line 421
    const v0, 0x3ecccccd

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcImageButton;->setAlpha(F)V

    .line 425
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 423
    :cond_1
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcImageButton;->setAlpha(F)V

    goto :goto_1
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 762
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 763
    return-void
.end method

.method public setIconResource(I)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 766
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcImageButton;->setImageResource(I)V

    .line 767
    return-void
.end method

.method setMultiplyAlpha(I)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mStayInPress:Z

    if-nez v0, :cond_2

    .line 336
    iget-object v0, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 337
    iget-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mIsContentMultiplyRequired:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/htc/widget/HtcButtonUtil;->getEnableAnimation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcImageButton;->mMaskMode:Landroid/graphics/PorterDuff$Mode;

    invoke-super {p0, v0, v1}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->invalidate()V

    goto :goto_0

    .line 343
    :cond_2
    iget-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mIsGreenOn:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mDownAnimating:Z

    if-nez v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mIsGreenOn:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mUpAnimating:Z

    if-eqz v0, :cond_6

    .line 344
    :cond_4
    iget-object v0, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 345
    iget-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mIsContentMultiplyRequired:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/htc/widget/HtcButtonUtil;->getEnableAnimation()Z

    move-result v0

    if-nez v0, :cond_5

    .line 346
    iget-object v0, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcImageButton;->mMaskMode:Landroid/graphics/PorterDuff$Mode;

    invoke-super {p0, v0, v1}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 348
    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->invalidate()V

    goto :goto_0

    .line 350
    :cond_6
    iget-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mIsGreenOn:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mUpAnimating:Z

    if-nez v0, :cond_8

    :cond_7
    iget-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mIsGreenOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mDownAnimating:Z

    if-eqz v0, :cond_0

    .line 351
    :cond_8
    iget-object v0, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 352
    iget-boolean v0, p0, Lcom/htc/widget/HtcImageButton;->mIsContentMultiplyRequired:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/htc/widget/HtcButtonUtil;->getEnableAnimation()Z

    move-result v0

    if-nez v0, :cond_9

    .line 353
    iget-object v0, p0, Lcom/htc/widget/HtcImageButton;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcImageButton;->mMaskMode:Landroid/graphics/PorterDuff$Mode;

    invoke-super {p0, v0, v1}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 355
    :cond_9
    invoke-virtual {p0}, Lcom/htc/widget/HtcImageButton;->invalidate()V

    goto :goto_0
.end method

.method setScaleHeight(F)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 374
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcImageButton;->setScaleY(F)V

    .line 375
    return-void
.end method

.method setScaleWidth(F)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 370
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcImageButton;->setScaleX(F)V

    .line 371
    return-void
.end method

.method public stayInPress(Z)V
    .locals 0
    .parameter "stay"

    .prologue
    .line 738
    iput-boolean p1, p0, Lcom/htc/widget/HtcImageButton;->mStayInPress:Z

    .line 739
    return-void
.end method
