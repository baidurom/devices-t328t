.class Lcom/htc/widget/HtcButton;
.super Landroid/widget/Button;
.source "HtcButton.java"


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

.field mMultiplyTextColor:I

.field private mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

.field mOverlayColor:I

.field private mShadowColor:I

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

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
    .line 33
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/htc/widget/HtcButton;->ANIMATION_DURATION_DOWN:I

    .line 34
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/htc/widget/HtcButton;->ANIMATION_DURATION_UP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const v3, 0x3f666666

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0, p1, v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-object v1, p0, Lcom/htc/widget/HtcButton;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 32
    iput-object v1, p0, Lcom/htc/widget/HtcButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    .line 36
    iput-boolean v2, p0, Lcom/htc/widget/HtcButton;->mIsAnimating:Z

    .line 37
    iput-object v1, p0, Lcom/htc/widget/HtcButton;->mMultiplyPaint:Landroid/graphics/Paint;

    .line 53
    iput-boolean v2, p0, Lcom/htc/widget/HtcButton;->mBackgroundChange:Z

    .line 54
    iput-object v1, p0, Lcom/htc/widget/HtcButton;->mMaskMode:Landroid/graphics/PorterDuff$Mode;

    .line 56
    iput v0, p0, Lcom/htc/widget/HtcButton;->mMultiplyColor:I

    .line 57
    iput v0, p0, Lcom/htc/widget/HtcButton;->mOverlayColor:I

    .line 58
    iput v0, p0, Lcom/htc/widget/HtcButton;->mMultiplyTextColor:I

    .line 64
    iput-object v1, p0, Lcom/htc/widget/HtcButton;->mDownXScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 65
    iput-object v1, p0, Lcom/htc/widget/HtcButton;->mDownYScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 66
    iput-object v1, p0, Lcom/htc/widget/HtcButton;->mUpXScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 67
    iput-object v1, p0, Lcom/htc/widget/HtcButton;->mUpYScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 68
    iput v3, p0, Lcom/htc/widget/HtcButton;->mMinScaleWidth:F

    .line 69
    iput v3, p0, Lcom/htc/widget/HtcButton;->mMinScaleHeight:F

    .line 70
    iput-boolean v2, p0, Lcom/htc/widget/HtcButton;->mUseDynamicScale:Z

    .line 74
    iput v2, p0, Lcom/htc/widget/HtcButton;->mExtAnimationMode:I

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcButton;->mIsRimMultiply:Z

    .line 80
    invoke-direct {p0, p1, v1, v2}, Lcom/htc/widget/HtcButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 5
    .parameter "context"
    .parameter "backgroundMode"
    .parameter "isContentMultiply"

    .prologue
    const v4, 0x3f666666

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 32
    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    .line 36
    iput-boolean v1, p0, Lcom/htc/widget/HtcButton;->mIsAnimating:Z

    .line 37
    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mMultiplyPaint:Landroid/graphics/Paint;

    .line 53
    iput-boolean v1, p0, Lcom/htc/widget/HtcButton;->mBackgroundChange:Z

    .line 54
    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mMaskMode:Landroid/graphics/PorterDuff$Mode;

    .line 56
    iput v2, p0, Lcom/htc/widget/HtcButton;->mMultiplyColor:I

    .line 57
    iput v2, p0, Lcom/htc/widget/HtcButton;->mOverlayColor:I

    .line 58
    iput v2, p0, Lcom/htc/widget/HtcButton;->mMultiplyTextColor:I

    .line 64
    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mDownXScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 65
    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mDownYScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 66
    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mUpXScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 67
    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mUpYScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 68
    iput v4, p0, Lcom/htc/widget/HtcButton;->mMinScaleWidth:F

    .line 69
    iput v4, p0, Lcom/htc/widget/HtcButton;->mMinScaleHeight:F

    .line 70
    iput-boolean v1, p0, Lcom/htc/widget/HtcButton;->mUseDynamicScale:Z

    .line 74
    iput v1, p0, Lcom/htc/widget/HtcButton;->mExtAnimationMode:I

    .line 75
    iput-boolean v3, p0, Lcom/htc/widget/HtcButton;->mIsRimMultiply:Z

    .line 86
    iput-boolean p3, p0, Lcom/htc/widget/HtcButton;->mIsContentMultiplyRequired:Z

    .line 87
    iput p2, p0, Lcom/htc/widget/HtcButton;->mBackgroundMode:I

    .line 89
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcButton;->setFocusable(Z)V

    .line 90
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcButton;->setClickable(Z)V

    .line 93
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcButton;->setMinWidth(I)V

    .line 94
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcButton;->setMinHeight(I)V

    .line 96
    iput v1, p0, Lcom/htc/widget/HtcButton;->mExtAnimationMode:I

    .line 98
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcButton;->init(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZI)V
    .locals 5
    .parameter "context"
    .parameter "backgroundMode"
    .parameter "isContentMultiply"
    .parameter "extAnimationMode"

    .prologue
    const v4, 0x3f666666

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, v0, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 32
    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    .line 36
    iput-boolean v2, p0, Lcom/htc/widget/HtcButton;->mIsAnimating:Z

    .line 37
    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mMultiplyPaint:Landroid/graphics/Paint;

    .line 53
    iput-boolean v2, p0, Lcom/htc/widget/HtcButton;->mBackgroundChange:Z

    .line 54
    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mMaskMode:Landroid/graphics/PorterDuff$Mode;

    .line 56
    iput v1, p0, Lcom/htc/widget/HtcButton;->mMultiplyColor:I

    .line 57
    iput v1, p0, Lcom/htc/widget/HtcButton;->mOverlayColor:I

    .line 58
    iput v1, p0, Lcom/htc/widget/HtcButton;->mMultiplyTextColor:I

    .line 64
    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mDownXScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 65
    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mDownYScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 66
    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mUpXScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 67
    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mUpYScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 68
    iput v4, p0, Lcom/htc/widget/HtcButton;->mMinScaleWidth:F

    .line 69
    iput v4, p0, Lcom/htc/widget/HtcButton;->mMinScaleHeight:F

    .line 70
    iput-boolean v2, p0, Lcom/htc/widget/HtcButton;->mUseDynamicScale:Z

    .line 74
    iput v2, p0, Lcom/htc/widget/HtcButton;->mExtAnimationMode:I

    .line 75
    iput-boolean v3, p0, Lcom/htc/widget/HtcButton;->mIsRimMultiply:Z

    .line 104
    iput-boolean p3, p0, Lcom/htc/widget/HtcButton;->mIsContentMultiplyRequired:Z

    .line 105
    iput p2, p0, Lcom/htc/widget/HtcButton;->mBackgroundMode:I

    .line 107
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcButton;->setFocusable(Z)V

    .line 108
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcButton;->setClickable(Z)V

    .line 111
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcButton;->setMinWidth(I)V

    .line 112
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcButton;->setMinHeight(I)V

    .line 114
    iput p4, p0, Lcom/htc/widget/HtcButton;->mExtAnimationMode:I

    .line 116
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcButton;->init(Landroid/content/Context;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v3, 0x3f666666

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 32
    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    .line 36
    iput-boolean v1, p0, Lcom/htc/widget/HtcButton;->mIsAnimating:Z

    .line 37
    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mMultiplyPaint:Landroid/graphics/Paint;

    .line 53
    iput-boolean v1, p0, Lcom/htc/widget/HtcButton;->mBackgroundChange:Z

    .line 54
    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mMaskMode:Landroid/graphics/PorterDuff$Mode;

    .line 56
    iput v2, p0, Lcom/htc/widget/HtcButton;->mMultiplyColor:I

    .line 57
    iput v2, p0, Lcom/htc/widget/HtcButton;->mOverlayColor:I

    .line 58
    iput v2, p0, Lcom/htc/widget/HtcButton;->mMultiplyTextColor:I

    .line 64
    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mDownXScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 65
    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mDownYScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 66
    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mUpXScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 67
    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mUpYScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 68
    iput v3, p0, Lcom/htc/widget/HtcButton;->mMinScaleWidth:F

    .line 69
    iput v3, p0, Lcom/htc/widget/HtcButton;->mMinScaleHeight:F

    .line 70
    iput-boolean v1, p0, Lcom/htc/widget/HtcButton;->mUseDynamicScale:Z

    .line 74
    iput v1, p0, Lcom/htc/widget/HtcButton;->mExtAnimationMode:I

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcButton;->mIsRimMultiply:Z

    .line 121
    invoke-direct {p0, p1, p2, v1}, Lcom/htc/widget/HtcButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v3, 0x3f666666

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 32
    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    .line 36
    iput-boolean v1, p0, Lcom/htc/widget/HtcButton;->mIsAnimating:Z

    .line 37
    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mMultiplyPaint:Landroid/graphics/Paint;

    .line 53
    iput-boolean v1, p0, Lcom/htc/widget/HtcButton;->mBackgroundChange:Z

    .line 54
    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mMaskMode:Landroid/graphics/PorterDuff$Mode;

    .line 56
    iput v2, p0, Lcom/htc/widget/HtcButton;->mMultiplyColor:I

    .line 57
    iput v2, p0, Lcom/htc/widget/HtcButton;->mOverlayColor:I

    .line 58
    iput v2, p0, Lcom/htc/widget/HtcButton;->mMultiplyTextColor:I

    .line 64
    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mDownXScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 65
    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mDownYScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 66
    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mUpXScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 67
    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mUpYScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 68
    iput v3, p0, Lcom/htc/widget/HtcButton;->mMinScaleWidth:F

    .line 69
    iput v3, p0, Lcom/htc/widget/HtcButton;->mMinScaleHeight:F

    .line 70
    iput-boolean v1, p0, Lcom/htc/widget/HtcButton;->mUseDynamicScale:Z

    .line 74
    iput v1, p0, Lcom/htc/widget/HtcButton;->mExtAnimationMode:I

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcButton;->mIsRimMultiply:Z

    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 128
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

    .line 429
    if-lt p1, p2, :cond_0

    .line 430
    iput v0, p0, Lcom/htc/widget/HtcButton;->mMinScaleHeight:F

    .line 431
    int-to-float v0, p2

    mul-float/2addr v0, v1

    int-to-float v1, p1

    div-float/2addr v0, v1

    sub-float v0, v2, v0

    iput v0, p0, Lcom/htc/widget/HtcButton;->mMinScaleWidth:F

    .line 438
    :goto_0
    return-void

    .line 433
    :cond_0
    iput v0, p0, Lcom/htc/widget/HtcButton;->mMinScaleWidth:F

    .line 434
    int-to-float v0, p1

    mul-float/2addr v0, v1

    int-to-float v1, p2

    div-float/2addr v0, v1

    sub-float v0, v2, v0

    iput v0, p0, Lcom/htc/widget/HtcButton;->mMinScaleHeight:F

    goto :goto_0
.end method

.method private cancelEvent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 695
    iput-boolean v2, p0, Lcom/htc/widget/HtcButton;->mIsAnimating:Z

    .line 696
    iget-boolean v0, p0, Lcom/htc/widget/HtcButton;->mStayInPress:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcButton;->mIsGreenOn:Z

    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcButton;->setScaleWidth(F)V

    .line 698
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcButton;->setScaleHeight(F)V

    .line 699
    iget-object v0, p0, Lcom/htc/widget/HtcButton;->mMultiplyPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 705
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->invalidate()V

    .line 706
    return-void

    .line 701
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcButton;->setScaleWidth(F)V

    .line 702
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcButton;->setScaleHeight(F)V

    .line 703
    iget-object v0, p0, Lcom/htc/widget/HtcButton;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method private cancelPropertyMove()V
    .locals 1

    .prologue
    .line 574
    iget-boolean v0, p0, Lcom/htc/widget/HtcButton;->mIsAnimating:Z

    if-eqz v0, :cond_0

    .line 575
    invoke-direct {p0}, Lcom/htc/widget/HtcButton;->cancelEvent()V

    .line 577
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->onDownAnimationCancel()V

    .line 578
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->onUpAnimationCancel()V

    .line 580
    return-void
.end method

.method private handelUpEventWithAnimation()V
    .locals 1

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/htc/widget/HtcButton;->mIsAnimating:Z

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/htc/widget/HtcButton;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcButton;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcButton;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 483
    invoke-direct {p0}, Lcom/htc/widget/HtcButton;->removePropertyUp()V

    .line 486
    iget-object v0, p0, Lcom/htc/widget/HtcButton;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcButton;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 493
    :cond_1
    return-void
.end method

.method private handleTouchEventWithAnimation(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 496
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 498
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 499
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 500
    invoke-direct {p0}, Lcom/htc/widget/HtcButton;->handelUpEventWithAnimation()V

    goto :goto_0

    .line 504
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 506
    iget-object v3, p0, Lcom/htc/widget/HtcButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 507
    iget-object v3, p0, Lcom/htc/widget/HtcButton;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 508
    const/16 v3, 0x7f

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcButton;->setMultiplyAlpha(I)V

    goto :goto_0

    .line 512
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 513
    iget-boolean v3, p0, Lcom/htc/widget/HtcButton;->mStayInPress:Z

    if-nez v3, :cond_1

    .line 514
    iget-object v3, p0, Lcom/htc/widget/HtcButton;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 515
    iget-object v3, p0, Lcom/htc/widget/HtcButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 516
    iget-object v3, p0, Lcom/htc/widget/HtcButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_0

    .line 518
    :cond_1
    iget-boolean v3, p0, Lcom/htc/widget/HtcButton;->mIsAnimating:Z

    if-eqz v3, :cond_2

    .line 519
    invoke-direct {p0}, Lcom/htc/widget/HtcButton;->cancelEvent()V

    .line 521
    :cond_2
    iget-object v3, p0, Lcom/htc/widget/HtcButton;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 522
    iget-object v3, p0, Lcom/htc/widget/HtcButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    .line 526
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 527
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 528
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 531
    .local v2, y:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 532
    .local v0, slop:I
    rsub-int/lit8 v3, v0, 0x0

    if-lt v1, v3, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    if-ge v1, v3, :cond_3

    rsub-int/lit8 v3, v0, 0x0

    if-lt v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    if-lt v2, v3, :cond_0

    .line 534
    :cond_3
    iget-boolean v3, p0, Lcom/htc/widget/HtcButton;->mStayInPress:Z

    if-nez v3, :cond_4

    .line 535
    iget-object v3, p0, Lcom/htc/widget/HtcButton;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 536
    iget-object v3, p0, Lcom/htc/widget/HtcButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 537
    iget-object v3, p0, Lcom/htc/widget/HtcButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    goto/16 :goto_0

    .line 539
    :cond_4
    iget-boolean v3, p0, Lcom/htc/widget/HtcButton;->mIsAnimating:Z

    if-eqz v3, :cond_5

    .line 540
    invoke-direct {p0}, Lcom/htc/widget/HtcButton;->cancelEvent()V

    .line 542
    :cond_5
    iget-object v3, p0, Lcom/htc/widget/HtcButton;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 543
    iget-object v3, p0, Lcom/htc/widget/HtcButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    goto/16 :goto_0

    .line 496
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
    .line 583
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 585
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 586
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 587
    iget-boolean v3, p0, Lcom/htc/widget/HtcButton;->mIsAnimating:Z

    if-eqz v3, :cond_0

    .line 588
    invoke-direct {p0}, Lcom/htc/widget/HtcButton;->removePropertyUp()V

    goto :goto_0

    .line 593
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 594
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 595
    invoke-direct {p0}, Lcom/htc/widget/HtcButton;->removePropertyDown()V

    goto :goto_0

    .line 599
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 600
    invoke-direct {p0}, Lcom/htc/widget/HtcButton;->cancelPropertyMove()V

    goto :goto_0

    .line 603
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 604
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 605
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 608
    .local v2, y:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 609
    .local v0, slop:I
    rsub-int/lit8 v3, v0, 0x0

    if-lt v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    if-ge v1, v3, :cond_1

    rsub-int/lit8 v3, v0, 0x0

    if-lt v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    if-lt v2, v3, :cond_0

    .line 611
    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/HtcButton;->cancelPropertyMove()V

    goto :goto_0

    .line 583
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

    .line 187
    invoke-direct {p0}, Lcom/htc/widget/HtcButton;->setExtendAnimationFlag()V

    .line 190
    invoke-static {p1}, Lcom/htc/widget/HtcButtonUtil;->getMultiplyColor(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcButton;->mMultiplyColor:I

    .line 191
    invoke-static {p1}, Lcom/htc/widget/HtcButtonUtil;->getOverlayColor(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcButton;->mOverlayColor:I

    .line 192
    invoke-static {p1}, Lcom/htc/widget/HtcButtonUtil;->getMultiplyTextColor(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcButton;->mMultiplyTextColor:I

    .line 194
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcButton;->setGravity(I)V

    .line 196
    invoke-direct {p0}, Lcom/htc/widget/HtcButton;->initMultiplyAnimation()V

    .line 197
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mMultiplyPaint:Landroid/graphics/Paint;

    .line 199
    iget v0, p0, Lcom/htc/widget/HtcButton;->mBackgroundMode:I

    if-ne v0, v4, :cond_1

    .line 200
    iget-object v0, p0, Lcom/htc/widget/HtcButton;->mMultiplyPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/widget/HtcButton;->mMultiplyColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    iget-object v0, p0, Lcom/htc/widget/HtcButton;->mMultiplyPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 202
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mMaskMode:Landroid/graphics/PorterDuff$Mode;

    .line 209
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcButton;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 210
    iput-boolean v3, p0, Lcom/htc/widget/HtcButton;->mStayInPress:Z

    .line 211
    iput-boolean v3, p0, Lcom/htc/widget/HtcButton;->mIsGreenOn:Z

    .line 212
    iput-boolean v3, p0, Lcom/htc/widget/HtcButton;->mDownAnimating:Z

    .line 213
    iput-boolean v3, p0, Lcom/htc/widget/HtcButton;->mUpAnimating:Z

    .line 216
    iget-boolean v0, p0, Lcom/htc/widget/HtcButton;->mIsContentMultiplyRequired:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/htc/widget/HtcButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 220
    :cond_0
    const-string v0, "HTC_BTN_PRESS"

    invoke-static {v4, p0, v5, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 221
    const-string v0, "HTC_BTN_UNPRESS"

    invoke-static {v4, p0, v5, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 223
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcButton;->mMultiplyPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/widget/HtcButton;->mOverlayColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    iget-object v0, p0, Lcom/htc/widget/HtcButton;->mMultiplyPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 206
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mMaskMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 142
    if-eqz p2, :cond_0

    .line 143
    sget-object v1, Lcom/htc/R$styleable;->HtcCompoundButtonMode:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 145
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/widget/HtcButton;->mIsContentMultiplyRequired:Z

    .line 147
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 149
    sget-object v1, Lcom/htc/R$styleable;->HtcAnimationButtonMode:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 151
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcButton;->mBackgroundMode:I

    .line 153
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcButton;->mExtAnimationMode:I

    .line 155
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 157
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 159
    const/16 v1, 0x12

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcButton;->setFocusable(Z)V

    .line 161
    const/16 v1, 0x1d

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcButton;->setClickable(Z)V

    .line 163
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 165
    sget-object v1, Lcom/android/internal/R$styleable;->TextView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 167
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcButton;->setMinWidth(I)V

    .line 168
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcButton;->setMinHeight(I)V

    .line 170
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    .end local v0           #a:Landroid/content/res/TypedArray;
    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcButton;->init(Landroid/content/Context;)V

    .line 183
    return-void

    .line 173
    :cond_0
    iput-boolean v3, p0, Lcom/htc/widget/HtcButton;->mIsContentMultiplyRequired:Z

    .line 174
    iput v2, p0, Lcom/htc/widget/HtcButton;->mBackgroundMode:I

    .line 175
    iput v2, p0, Lcom/htc/widget/HtcButton;->mExtAnimationMode:I

    .line 176
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcButton;->setFocusable(Z)V

    .line 177
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcButton;->setClickable(Z)V

    .line 178
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcButton;->setMinWidth(I)V

    .line 179
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcButton;->setMinHeight(I)V

    goto :goto_0
.end method

.method private initMultiplyAnimation()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 311
    const-string v2, "scaleWidth"

    new-array v3, v5, [F

    fill-array-data v3, :array_0

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcButton;->mDownXScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 312
    iget-object v2, p0, Lcom/htc/widget/HtcButton;->mDownXScaleAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 313
    iget-object v2, p0, Lcom/htc/widget/HtcButton;->mDownXScaleAnimator:Landroid/animation/ObjectAnimator;

    sget v3, Lcom/htc/widget/HtcButton;->ANIMATION_DURATION_DOWN:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 315
    const-string v2, "scaleHeight"

    new-array v3, v5, [F

    fill-array-data v3, :array_1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcButton;->mDownYScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 316
    iget-object v2, p0, Lcom/htc/widget/HtcButton;->mDownYScaleAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 317
    iget-object v2, p0, Lcom/htc/widget/HtcButton;->mDownYScaleAnimator:Landroid/animation/ObjectAnimator;

    sget v3, Lcom/htc/widget/HtcButton;->ANIMATION_DURATION_DOWN:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 319
    const-string v2, "scaleWidth"

    new-array v3, v5, [F

    fill-array-data v3, :array_2

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcButton;->mUpXScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 320
    iget-object v2, p0, Lcom/htc/widget/HtcButton;->mUpXScaleAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 321
    iget-object v2, p0, Lcom/htc/widget/HtcButton;->mUpXScaleAnimator:Landroid/animation/ObjectAnimator;

    sget v3, Lcom/htc/widget/HtcButton;->ANIMATION_DURATION_UP:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 323
    const-string v2, "scaleHeight"

    new-array v3, v5, [F

    fill-array-data v3, :array_3

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcButton;->mUpYScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 324
    iget-object v2, p0, Lcom/htc/widget/HtcButton;->mUpYScaleAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 325
    iget-object v2, p0, Lcom/htc/widget/HtcButton;->mUpYScaleAnimator:Landroid/animation/ObjectAnimator;

    sget v3, Lcom/htc/widget/HtcButton;->ANIMATION_DURATION_UP:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, downMultiplyAlphaAnimator:Landroid/animation/ObjectAnimator;
    const/4 v1, 0x0

    .line 331
    .local v1, upMultiplyAlphaAnimator:Landroid/animation/ObjectAnimator;
    const-string v2, "multiplyAlpha"

    new-array v3, v5, [I

    fill-array-data v3, :array_4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 332
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 333
    sget v2, Lcom/htc/widget/HtcButton;->ANIMATION_DURATION_DOWN:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 335
    const-string v2, "multiplyAlpha"

    new-array v3, v5, [I

    fill-array-data v3, :array_5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 336
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 337
    sget v2, Lcom/htc/widget/HtcButton;->ANIMATION_DURATION_UP:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 339
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/HtcButton;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 340
    iget-object v2, p0, Lcom/htc/widget/HtcButton;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v5, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/htc/widget/HtcButton;->mDownXScaleAnimator:Landroid/animation/ObjectAnimator;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/htc/widget/HtcButton;->mDownYScaleAnimator:Landroid/animation/ObjectAnimator;

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 341
    iget-object v2, p0, Lcom/htc/widget/HtcButton;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v5, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/htc/widget/HtcButton;->mDownXScaleAnimator:Landroid/animation/ObjectAnimator;

    aput-object v4, v3, v6

    aput-object v0, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 343
    iget-object v2, p0, Lcom/htc/widget/HtcButton;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/htc/widget/HtcButton$1;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcButton$1;-><init>(Lcom/htc/widget/HtcButton;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 359
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/HtcButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    .line 360
    iget-object v2, p0, Lcom/htc/widget/HtcButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v5, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/htc/widget/HtcButton;->mUpXScaleAnimator:Landroid/animation/ObjectAnimator;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/htc/widget/HtcButton;->mUpYScaleAnimator:Landroid/animation/ObjectAnimator;

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 361
    iget-object v2, p0, Lcom/htc/widget/HtcButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v5, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/htc/widget/HtcButton;->mUpXScaleAnimator:Landroid/animation/ObjectAnimator;

    aput-object v4, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 363
    iget-object v2, p0, Lcom/htc/widget/HtcButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/htc/widget/HtcButton$2;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcButton$2;-><init>(Lcom/htc/widget/HtcButton;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 378
    return-void

    .line 311
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data

    .line 315
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data

    .line 319
    :array_2
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 323
    :array_3
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 331
    :array_4
    .array-data 0x4
        0x7ft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data

    .line 335
    :array_5
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private removePropertyDown()V
    .locals 1

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->onUpAnimationEnd()V

    .line 552
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->onDownAnimationStart()V

    .line 553
    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcButton;->setMultiplyAlpha(I)V

    .line 554
    iget v0, p0, Lcom/htc/widget/HtcButton;->mMinScaleWidth:F

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcButton;->setScaleWidth(F)V

    .line 555
    iget v0, p0, Lcom/htc/widget/HtcButton;->mMinScaleHeight:F

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcButton;->setScaleHeight(F)V

    .line 556
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->onDownAnimationEnd()V

    .line 557
    return-void
.end method

.method private removePropertyUp()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 560
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->onDownAnimationEnd()V

    .line 561
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->onUpAnimationStart()V

    .line 562
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcButton;->setMultiplyAlpha(I)V

    .line 563
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcButton;->setScaleWidth(F)V

    .line 564
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcButton;->setScaleHeight(F)V

    .line 565
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->onUpAnimationEnd()V

    .line 566
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

    .line 441
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcButton;->calculateScaleRate(II)V

    .line 443
    iget-object v0, p0, Lcom/htc/widget/HtcButton;->mDownXScaleAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v6, [F

    aput v3, v1, v4

    iget v2, p0, Lcom/htc/widget/HtcButton;->mMinScaleWidth:F

    aput v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 444
    iget-object v0, p0, Lcom/htc/widget/HtcButton;->mDownYScaleAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v6, [F

    aput v3, v1, v4

    iget v2, p0, Lcom/htc/widget/HtcButton;->mMinScaleHeight:F

    aput v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 445
    const-string v0, "scaleWidth"

    new-array v1, v6, [F

    iget v2, p0, Lcom/htc/widget/HtcButton;->mMinScaleWidth:F

    aput v2, v1, v4

    aput v3, v1, v5

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mUpXScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 446
    const-string v0, "scaleHeight"

    new-array v1, v6, [F

    iget v2, p0, Lcom/htc/widget/HtcButton;->mMinScaleHeight:F

    aput v2, v1, v4

    aput v3, v1, v5

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcButton;->mUpYScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 451
    return-void
.end method

.method private setExtendAnimationFlag()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 131
    iget v0, p0, Lcom/htc/widget/HtcButton;->mExtAnimationMode:I

    if-nez v0, :cond_1

    .line 132
    iput-boolean v1, p0, Lcom/htc/widget/HtcButton;->mIsRimMultiply:Z

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcButton;->mExtAnimationMode:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcButton;->mIsRimMultiply:Z

    goto :goto_0
.end method


# virtual methods
.method onDownAnimationCancel()V
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcButton;->mDownAnimating:Z

    .line 284
    iget-object v0, p0, Lcom/htc/widget/HtcButton;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcButton;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 286
    :cond_0
    return-void
.end method

.method onDownAnimationEnd()V
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcButton;->mDownAnimating:Z

    .line 276
    iget-object v0, p0, Lcom/htc/widget/HtcButton;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcButton;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 278
    :cond_0
    return-void
.end method

.method onDownAnimationStart()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 258
    iget-object v1, p0, Lcom/htc/widget/HtcButton;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcButton;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v1}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 261
    :cond_0
    iput-boolean v0, p0, Lcom/htc/widget/HtcButton;->mIsAnimating:Z

    .line 262
    iput-boolean v0, p0, Lcom/htc/widget/HtcButton;->mDownAnimating:Z

    .line 263
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcButton;->mTextRestColor:Landroid/content/res/ColorStateList;

    .line 265
    iget-object v1, p0, Lcom/htc/widget/HtcButton;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_2

    :goto_0
    iput-boolean v0, p0, Lcom/htc/widget/HtcButton;->mIsGreenOn:Z

    .line 267
    iget-boolean v0, p0, Lcom/htc/widget/HtcButton;->mIsContentMultiplyRequired:Z

    if-eqz v0, :cond_1

    .line 268
    iget v0, p0, Lcom/htc/widget/HtcButton;->mMultiplyTextColor:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcButton;->setTextColor(I)V

    .line 270
    :cond_1
    return-void

    .line 265
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 738
    iget-boolean v0, p0, Lcom/htc/widget/HtcButton;->mIsAnimating:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcButton;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_3

    .line 739
    :cond_0
    const/4 v7, 0x0

    .line 740
    .local v7, sc:I
    iget-boolean v0, p0, Lcom/htc/widget/HtcButton;->mIsContentMultiplyRequired:Z

    if-eqz v0, :cond_1

    .line 741
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 743
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->getScrollX()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->getScrollY()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v7

    .line 744
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HtcButton;->mShadowRadius:F

    iget v2, p0, Lcom/htc/widget/HtcButton;->mShadowDx:F

    iget v3, p0, Lcom/htc/widget/HtcButton;->mShadowDy:F

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 747
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 749
    iget-boolean v0, p0, Lcom/htc/widget/HtcButton;->mIsContentMultiplyRequired:Z

    if-eqz v0, :cond_2

    .line 750
    iget-object v0, p0, Lcom/htc/widget/HtcButton;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcButton;->mMaskMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 752
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HtcButton;->mShadowRadius:F

    iget v2, p0, Lcom/htc/widget/HtcButton;->mShadowDx:F

    iget v3, p0, Lcom/htc/widget/HtcButton;->mShadowDy:F

    iget v4, p0, Lcom/htc/widget/HtcButton;->mShadowColor:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 753
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 759
    .end local v7           #sc:I
    :cond_2
    :goto_0
    return-void

    .line 757
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onFocusLost()V
    .locals 1

    .prologue
    .line 766
    iget-boolean v0, p0, Lcom/htc/widget/HtcButton;->mIsAnimating:Z

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/htc/widget/HtcButton;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 768
    invoke-direct {p0}, Lcom/htc/widget/HtcButton;->cancelEvent()V

    .line 769
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->invalidate()V

    .line 771
    :cond_0
    invoke-super {p0}, Landroid/widget/Button;->onFocusLost()V

    .line 772
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 622
    sparse-switch p1, :sswitch_data_0

    .line 641
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 625
    :sswitch_0
    invoke-static {}, Lcom/htc/widget/HtcButtonUtil;->getEnableAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 626
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/htc/widget/HtcButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 629
    iget-object v0, p0, Lcom/htc/widget/HtcButton;->mMultiplyDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 633
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    invoke-direct {p0}, Lcom/htc/widget/HtcButton;->removePropertyDown()V

    goto :goto_0

    .line 622
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
    .line 645
    sparse-switch p1, :sswitch_data_0

    .line 665
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 648
    :sswitch_0
    invoke-static {}, Lcom/htc/widget/HtcButtonUtil;->getEnableAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 649
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    invoke-direct {p0}, Lcom/htc/widget/HtcButton;->handelUpEventWithAnimation()V

    goto :goto_0

    .line 655
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    iget-boolean v0, p0, Lcom/htc/widget/HtcButton;->mIsAnimating:Z

    if-eqz v0, :cond_0

    .line 658
    invoke-direct {p0}, Lcom/htc/widget/HtcButton;->removePropertyUp()V

    goto :goto_0

    .line 645
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
    .line 713
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->onScrollChanged(IIII)V

    .line 715
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcButton;->mBackgroundChange:Z

    .line 716
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

    .line 454
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 455
    :cond_0
    int-to-float v0, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcButton;->mCenterX:I

    .line 456
    int-to-float v0, p2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcButton;->mCenterY:I

    .line 457
    iget-boolean v0, p0, Lcom/htc/widget/HtcButton;->mIsAnimating:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/widget/HtcButton;->mUseDynamicScale:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcButton;->resetScaleAnimation(II)V

    .line 460
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->onSizeChanged(IIII)V

    .line 461
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 685
    invoke-static {}, Lcom/htc/widget/HtcButtonUtil;->getEnableAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcButton;->handleTouchEventWithAnimation(Landroid/view/MotionEvent;)V

    .line 691
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 688
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcButton;->handleTouchEventWithoutAnimation(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method onUpAnimationCancel()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 300
    iput-boolean v0, p0, Lcom/htc/widget/HtcButton;->mIsAnimating:Z

    .line 301
    iput-boolean v0, p0, Lcom/htc/widget/HtcButton;->mUpAnimating:Z

    .line 302
    iput-boolean v0, p0, Lcom/htc/widget/HtcButton;->mDownAnimating:Z

    .line 303
    iget-object v0, p0, Lcom/htc/widget/HtcButton;->mTextRestColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcButton;->mIsContentMultiplyRequired:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcButton;->mTextRestColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 304
    :cond_0
    return-void
.end method

.method onUpAnimationEnd()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 293
    iput-boolean v0, p0, Lcom/htc/widget/HtcButton;->mIsAnimating:Z

    .line 294
    iput-boolean v0, p0, Lcom/htc/widget/HtcButton;->mUpAnimating:Z

    .line 295
    iput-boolean v0, p0, Lcom/htc/widget/HtcButton;->mDownAnimating:Z

    .line 296
    iget-object v0, p0, Lcom/htc/widget/HtcButton;->mTextRestColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcButton;->mIsContentMultiplyRequired:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcButton;->mTextRestColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 297
    :cond_0
    return-void
.end method

.method onUpAnimationStart()V
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcButton;->mUpAnimating:Z

    .line 290
    return-void
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 673
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    return v0
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 681
    invoke-super {p0}, Landroid/widget/Button;->performLongClick()Z

    move-result v0

    return v0
.end method

.method setBackgroundMode(I)V
    .locals 4
    .parameter "backgroundMode"

    .prologue
    .line 238
    iget v1, p0, Lcom/htc/widget/HtcButton;->mBackgroundMode:I

    if-ne v1, p1, :cond_0

    .line 254
    :goto_0
    return-void

    .line 240
    :cond_0
    iput p1, p0, Lcom/htc/widget/HtcButton;->mBackgroundMode:I

    .line 241
    iget-object v1, p0, Lcom/htc/widget/HtcButton;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 242
    .local v0, alpha:I
    iget v1, p0, Lcom/htc/widget/HtcButton;->mBackgroundMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 243
    iget-object v1, p0, Lcom/htc/widget/HtcButton;->mMultiplyPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/htc/widget/HtcButton;->mMultiplyColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    iget-object v1, p0, Lcom/htc/widget/HtcButton;->mMultiplyPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 245
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lcom/htc/widget/HtcButton;->mMaskMode:Landroid/graphics/PorterDuff$Mode;

    .line 251
    :goto_1
    iget-object v1, p0, Lcom/htc/widget/HtcButton;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 253
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->invalidate()V

    goto :goto_0

    .line 247
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcButton;->mMultiplyPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/htc/widget/HtcButton;->mOverlayColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 248
    iget-object v1, p0, Lcom/htc/widget/HtcButton;->mMultiplyPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 249
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lcom/htc/widget/HtcButton;->mMaskMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1
.end method

.method public setColorOn(Z)V
    .locals 4
    .parameter "on"

    .prologue
    const/16 v3, 0xff

    const/4 v1, 0x0

    .line 779
    iget-object v2, p0, Lcom/htc/widget/HtcButton;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    .line 780
    .local v0, current_on:Z
    :goto_0
    if-eq v0, p1, :cond_0

    .line 781
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/HtcButton;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 784
    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->invalidate()V

    .line 786
    :cond_0
    return-void

    .end local v0           #current_on:Z
    :cond_1
    move v0, v1

    .line 779
    goto :goto_0

    .line 782
    .restart local v0       #current_on:Z
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/HtcButton;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 471
    :goto_0
    return-void

    .line 465
    :cond_0
    if-nez p1, :cond_1

    .line 466
    const v0, 0x3ecccccd

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcButton;->setAlpha(F)V

    .line 470
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 468
    :cond_1
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcButton;->setAlpha(F)V

    goto :goto_1
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 1
    .parameter "layerType"
    .parameter "paint"

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/htc/widget/HtcButton;->mIsContentMultiplyRequired:Z

    if-eqz v0, :cond_0

    .line 231
    const/4 v0, 0x1

    invoke-super {p0, v0, p2}, Landroid/widget/Button;->setLayerType(ILandroid/graphics/Paint;)V

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method setMultiplyAlpha(I)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/htc/widget/HtcButton;->mStayInPress:Z

    if-nez v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/htc/widget/HtcButton;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 383
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->invalidate()V

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    iget-boolean v0, p0, Lcom/htc/widget/HtcButton;->mIsGreenOn:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/widget/HtcButton;->mDownAnimating:Z

    if-nez v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/htc/widget/HtcButton;->mIsGreenOn:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/htc/widget/HtcButton;->mUpAnimating:Z

    if-eqz v0, :cond_4

    .line 386
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HtcButton;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 387
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->invalidate()V

    goto :goto_0

    .line 388
    :cond_4
    iget-boolean v0, p0, Lcom/htc/widget/HtcButton;->mIsGreenOn:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/htc/widget/HtcButton;->mUpAnimating:Z

    if-nez v0, :cond_6

    :cond_5
    iget-boolean v0, p0, Lcom/htc/widget/HtcButton;->mIsGreenOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcButton;->mDownAnimating:Z

    if-eqz v0, :cond_0

    .line 389
    :cond_6
    iget-object v0, p0, Lcom/htc/widget/HtcButton;->mMultiplyPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 390
    invoke-virtual {p0}, Lcom/htc/widget/HtcButton;->invalidate()V

    goto :goto_0
.end method

.method setScaleHeight(F)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 400
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcButton;->setScaleY(F)V

    .line 401
    return-void
.end method

.method setScaleWidth(F)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 396
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcButton;->setScaleX(F)V

    .line 397
    return-void
.end method

.method public setShadowLayer(FFFI)V
    .locals 0
    .parameter "radius"
    .parameter "dx"
    .parameter "dy"
    .parameter "color"

    .prologue
    .line 725
    iput p1, p0, Lcom/htc/widget/HtcButton;->mShadowRadius:F

    .line 726
    iput p2, p0, Lcom/htc/widget/HtcButton;->mShadowDx:F

    .line 727
    iput p3, p0, Lcom/htc/widget/HtcButton;->mShadowDy:F

    .line 728
    iput p4, p0, Lcom/htc/widget/HtcButton;->mShadowColor:I

    .line 730
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    .line 731
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 416
    invoke-super {p0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 417
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 3
    .parameter "colors"

    .prologue
    .line 420
    if-eqz p1, :cond_0

    .line 421
    sget-object v1, Landroid/view/View;->ENABLED_STATE_SET:[I

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 422
    .local v0, restColor:I
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcButton;->setTextColor(I)V

    .line 426
    .end local v0           #restColor:I
    :goto_0
    return-void

    .line 424
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public stayInPress(Z)V
    .locals 0
    .parameter "stay"

    .prologue
    .line 775
    iput-boolean p1, p0, Lcom/htc/widget/HtcButton;->mStayInPress:Z

    .line 776
    return-void
.end method
