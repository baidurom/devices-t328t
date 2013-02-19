.class public Lcom/htc/quickselection/HtcCheckableImageView;
.super Landroid/widget/CheckedTextView;
.source "HtcCheckableImageView.java"


# static fields
.field private static final DOWN_ANIMATION_DURATION:I = 0xe6

.field private static final MAX_SCALE:F = 1.0f

.field private static final MIN_SCALE:F = 0.85f

.field private static final UP_ANIMATION_DURATION:I = 0xfa


# instance fields
.field private mCanvasBitmap:Landroid/graphics/Bitmap;

.field private mColorArray:[F

.field private mColorMatrix:Landroid/graphics/ColorMatrix;

.field private mIsAnimating:Z

.field private mPressDownAnimatorSet:Landroid/animation/AnimatorSet;

.field private mPressUpAnimatorSet:Landroid/animation/AnimatorSet;

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/quickselection/HtcCheckableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/quickselection/HtcCheckableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 43
    iput-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    .line 44
    iput-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mScreenPaint:Landroid/graphics/Paint;

    .line 45
    iput-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mPressDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 46
    iput-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mPressUpAnimatorSet:Landroid/animation/AnimatorSet;

    .line 51
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mColorMatrix:Landroid/graphics/ColorMatrix;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mIsAnimating:Z

    .line 66
    invoke-direct {p0, p1}, Lcom/htc/quickselection/HtcCheckableImageView;->init(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 70
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/quickselection/HtcCheckableImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mScreenPaint:Landroid/graphics/Paint;

    .line 72
    iget-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mScreenPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 73
    invoke-direct {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->initAnimation()V

    .line 74
    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->initPadding()V

    .line 75
    return-void
.end method

.method private initAnimation()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, 0x3f4ccccd

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, downScaleAnimator:Landroid/animation/ObjectAnimator;
    const/4 v2, 0x0

    .line 106
    .local v2, upScaleAnimator:Landroid/animation/ObjectAnimator;
    const/4 v1, 0x0

    .line 107
    .local v1, downScreenAnimator:Landroid/animation/ObjectAnimator;
    const/4 v3, 0x0

    .line 109
    .local v3, upScreenAnimator:Landroid/animation/ObjectAnimator;
    const-string/jumbo v4, "scale"

    new-array v5, v9, [F

    fill-array-data v5, :array_0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 110
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 111
    const-wide/16 v4, 0xe6

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 113
    const-string/jumbo v4, "scale"

    new-array v5, v9, [F

    fill-array-data v5, :array_1

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 114
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 115
    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 127
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mPressDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 128
    iget-object v4, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mPressDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v5, v8, [Landroid/animation/Animator;

    aput-object v0, v5, v7

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 130
    iget-object v4, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mPressDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/htc/quickselection/HtcCheckableImageView$1;

    invoke-direct {v5, p0}, Lcom/htc/quickselection/HtcCheckableImageView$1;-><init>(Lcom/htc/quickselection/HtcCheckableImageView;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 146
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mPressUpAnimatorSet:Landroid/animation/AnimatorSet;

    .line 147
    iget-object v4, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mPressUpAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v5, v8, [Landroid/animation/Animator;

    aput-object v2, v5, v7

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 149
    iget-object v4, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mPressUpAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/htc/quickselection/HtcCheckableImageView$2;

    invoke-direct {v5, p0}, Lcom/htc/quickselection/HtcCheckableImageView$2;-><init>(Lcom/htc/quickselection/HtcCheckableImageView;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 184
    return-void

    .line 109
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x59t 0x3ft
    .end array-data

    .line 113
    :array_1
    .array-data 0x4
        0x9at 0x99t 0x59t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method


# virtual methods
.method initPadding()V
    .locals 4

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getPaddingLeft()I

    move-result v1

    .line 79
    .local v1, left:I
    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getPaddingTop()I

    move-result v3

    .line 80
    .local v3, top:I
    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getPaddingRight()I

    move-result v2

    .line 81
    .local v2, right:I
    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getPaddingBottom()I

    move-result v0

    .line 82
    .local v0, bottom:I
    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/htc/quickselection/HtcCheckableImageView;->setPadding(IIII)V

    .line 83
    return-void
.end method

.method onDownAnimationCancel()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method onDownAnimationEnd()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method onDownAnimationStart()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mIsAnimating:Z

    .line 87
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 210
    if-lez p1, :cond_2

    if-lez p2, :cond_2

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_2

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 213
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    .line 217
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckedTextView;->onSizeChanged(IIII)V

    .line 218
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 250
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 223
    :pswitch_0
    iget-boolean v3, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mIsAnimating:Z

    if-eqz v3, :cond_0

    .line 224
    iget-object v3, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mPressDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 225
    iget-object v3, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mPressUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 229
    :pswitch_1
    iget-object v3, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mPressUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 230
    iget-object v3, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mPressDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 233
    :pswitch_2
    iget-object v3, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mPressDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 234
    iget-object v3, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mPressUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 235
    iget-object v3, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mPressUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_0

    .line 238
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 239
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 241
    .local v2, y:I
    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 242
    .local v0, slop:I
    rsub-int/lit8 v3, v0, 0x0

    if-lt v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    if-ge v1, v3, :cond_1

    rsub-int/lit8 v3, v0, 0x0

    if-lt v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    if-lt v2, v3, :cond_0

    .line 244
    :cond_1
    iget-object v3, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mPressDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 245
    iget-object v3, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mPressUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 246
    iget-object v3, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mPressUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_0

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method onUpAnimationCancel()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mIsAnimating:Z

    .line 101
    return-void
.end method

.method onUpAnimationEnd()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mIsAnimating:Z

    .line 97
    return-void
.end method

.method onUpAnimationStart()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method setScale(F)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/htc/quickselection/HtcCheckableImageView;->setScaleX(F)V

    .line 188
    invoke-virtual {p0, p1}, Lcom/htc/quickselection/HtcCheckableImageView;->setScaleY(F)V

    .line 189
    return-void
.end method
