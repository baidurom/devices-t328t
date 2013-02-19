.class public Lcom/htc/widget/HtcScroller;
.super Ljava/lang/Object;
.source "HtcScroller.java"


# static fields
.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FLING_MODE:I = 0x1

.field private static final SCROLL_MODE:I


# instance fields
.field private mCoeffX:F

.field private mCoeffY:F

.field private mCurrX:I

.field private mCurrY:I

.field private final mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mEasingFunction:Lcom/htc/widget/EasingFunction;

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F

.field private mViscousFluidNormalize:F

.field private mViscousFluidScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 3
    .parameter "context"
    .parameter "interpolator"

    .prologue
    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/widget/HtcScroller;->mCoeffX:F

    .line 58
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/htc/widget/HtcScroller;->mCoeffY:F

    .line 81
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/HtcScroller;->mFinished:Z

    .line 82
    iput-object p2, p0, Lcom/htc/widget/HtcScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    .line 84
    .local v0, ppi:F
    const v1, 0x43c0e9ba

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/htc/widget/HtcScroller;->mDeceleration:F

    .line 88
    return-void
.end method

.method private viscousFluid(F)F
    .locals 4
    .parameter "x"

    .prologue
    const/high16 v3, 0x3f80

    .line 436
    iget v1, p0, Lcom/htc/widget/HtcScroller;->mViscousFluidScale:F

    mul-float/2addr p1, v1

    .line 437
    cmpg-float v1, p1, v3

    if-gez v1, :cond_0

    .line 438
    neg-float v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v3, v1

    sub-float/2addr p1, v1

    .line 444
    :goto_0
    iget v1, p0, Lcom/htc/widget/HtcScroller;->mViscousFluidNormalize:F

    mul-float/2addr p1, v1

    .line 445
    return p1

    .line 440
    :cond_0
    const v0, 0x3ebc5ab2

    .line 441
    .local v0, start:F
    sub-float v1, v3, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float p1, v3, v1

    .line 442
    sub-float v1, v3, v0

    mul-float/2addr v1, p1

    add-float p1, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Lcom/htc/widget/HtcScroller;->mFinalX:I

    iput v0, p0, Lcom/htc/widget/HtcScroller;->mCurrX:I

    .line 457
    iget v0, p0, Lcom/htc/widget/HtcScroller;->mFinalY:I

    iput v0, p0, Lcom/htc/widget/HtcScroller;->mCurrY:I

    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcScroller;->mFinished:Z

    .line 459
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x1

    .line 218
    iget-boolean v0, p0, Lcom/htc/widget/HtcScroller;->mFinished:Z

    if-eqz v0, :cond_0

    .line 219
    const/4 v0, 0x0

    .line 273
    :goto_0
    return v0

    .line 222
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/htc/widget/HtcScroller;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-int v7, v2

    .line 224
    .local v7, timePassed:I
    iget v0, p0, Lcom/htc/widget/HtcScroller;->mDuration:I

    if-ge v7, v0, :cond_4

    .line 225
    iget v0, p0, Lcom/htc/widget/HtcScroller;->mMode:I

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    move v0, v10

    .line 273
    goto :goto_0

    .line 227
    :pswitch_0
    int-to-float v0, v7

    iget v2, p0, Lcom/htc/widget/HtcScroller;->mDurationReciprocal:F

    mul-float v9, v0, v2

    .line 228
    .local v9, x:F
    iget-object v0, p0, Lcom/htc/widget/HtcScroller;->mEasingFunction:Lcom/htc/widget/EasingFunction;

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/htc/widget/HtcScroller;->mEasingFunction:Lcom/htc/widget/EasingFunction;

    int-to-float v2, v7

    iget v3, p0, Lcom/htc/widget/HtcScroller;->mStartX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/widget/HtcScroller;->mDeltaX:F

    iget v5, p0, Lcom/htc/widget/HtcScroller;->mDuration:I

    int-to-float v5, v5

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/EasingFunction;->currentResult(FFFFF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/widget/HtcScroller;->mCurrX:I

    .line 230
    iget-object v0, p0, Lcom/htc/widget/HtcScroller;->mEasingFunction:Lcom/htc/widget/EasingFunction;

    int-to-float v2, v7

    iget v3, p0, Lcom/htc/widget/HtcScroller;->mStartY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/widget/HtcScroller;->mDeltaY:F

    iget v5, p0, Lcom/htc/widget/HtcScroller;->mDuration:I

    int-to-float v5, v5

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/EasingFunction;->currentResult(FFFFF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/widget/HtcScroller;->mCurrY:I

    goto :goto_1

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_3

    .line 234
    invoke-direct {p0, v9}, Lcom/htc/widget/HtcScroller;->viscousFluid(F)F

    move-result v9

    .line 238
    :goto_2
    iget v0, p0, Lcom/htc/widget/HtcScroller;->mStartX:I

    iget v1, p0, Lcom/htc/widget/HtcScroller;->mDeltaX:F

    mul-float/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcScroller;->mCurrX:I

    .line 239
    iget v0, p0, Lcom/htc/widget/HtcScroller;->mStartY:I

    iget v1, p0, Lcom/htc/widget/HtcScroller;->mDeltaY:F

    mul-float/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcScroller;->mCurrY:I

    .line 240
    iget v0, p0, Lcom/htc/widget/HtcScroller;->mCurrX:I

    iget v1, p0, Lcom/htc/widget/HtcScroller;->mFinalX:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/htc/widget/HtcScroller;->mCurrY:I

    iget v1, p0, Lcom/htc/widget/HtcScroller;->mFinalY:I

    if-ne v0, v1, :cond_1

    .line 241
    iput-boolean v10, p0, Lcom/htc/widget/HtcScroller;->mFinished:Z

    goto :goto_1

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HtcScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    goto :goto_2

    .line 247
    .end local v9           #x:F
    :pswitch_1
    int-to-float v0, v7

    const/high16 v1, 0x447a

    div-float v8, v0, v1

    .line 248
    .local v8, timePassedSeconds:F
    iget v0, p0, Lcom/htc/widget/HtcScroller;->mVelocity:F

    mul-float/2addr v0, v8

    iget v1, p0, Lcom/htc/widget/HtcScroller;->mDeceleration:F

    mul-float/2addr v1, v8

    mul-float/2addr v1, v8

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float v6, v0, v1

    .line 251
    .local v6, distance:F
    iget v0, p0, Lcom/htc/widget/HtcScroller;->mStartX:I

    iget v1, p0, Lcom/htc/widget/HtcScroller;->mCoeffX:F

    mul-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcScroller;->mCurrX:I

    .line 253
    iget v0, p0, Lcom/htc/widget/HtcScroller;->mCurrX:I

    iget v1, p0, Lcom/htc/widget/HtcScroller;->mMaxX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcScroller;->mCurrX:I

    .line 254
    iget v0, p0, Lcom/htc/widget/HtcScroller;->mCurrX:I

    iget v1, p0, Lcom/htc/widget/HtcScroller;->mMinX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcScroller;->mCurrX:I

    .line 256
    iget v0, p0, Lcom/htc/widget/HtcScroller;->mStartY:I

    iget v1, p0, Lcom/htc/widget/HtcScroller;->mCoeffY:F

    mul-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcScroller;->mCurrY:I

    .line 258
    iget v0, p0, Lcom/htc/widget/HtcScroller;->mCurrY:I

    iget v1, p0, Lcom/htc/widget/HtcScroller;->mMaxY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcScroller;->mCurrY:I

    .line 259
    iget v0, p0, Lcom/htc/widget/HtcScroller;->mCurrY:I

    iget v1, p0, Lcom/htc/widget/HtcScroller;->mMinY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcScroller;->mCurrY:I

    .line 261
    iget v0, p0, Lcom/htc/widget/HtcScroller;->mCurrX:I

    iget v1, p0, Lcom/htc/widget/HtcScroller;->mFinalX:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/htc/widget/HtcScroller;->mCurrY:I

    iget v1, p0, Lcom/htc/widget/HtcScroller;->mFinalY:I

    if-ne v0, v1, :cond_1

    .line 262
    iput-boolean v10, p0, Lcom/htc/widget/HtcScroller;->mFinished:Z

    goto/16 :goto_1

    .line 269
    .end local v6           #distance:F
    .end local v8           #timePassedSeconds:F
    :cond_4
    iget v0, p0, Lcom/htc/widget/HtcScroller;->mFinalX:I

    iput v0, p0, Lcom/htc/widget/HtcScroller;->mCurrX:I

    .line 270
    iget v0, p0, Lcom/htc/widget/HtcScroller;->mFinalY:I

    iput v0, p0, Lcom/htc/widget/HtcScroller;->mCurrY:I

    .line 271
    iput-boolean v10, p0, Lcom/htc/widget/HtcScroller;->mFinished:Z

    goto/16 :goto_1

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 3
    .parameter "extend"

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/htc/widget/HtcScroller;->timePassed()I

    move-result v0

    .line 473
    .local v0, passed:I
    add-int v1, v0, p1

    iput v1, p0, Lcom/htc/widget/HtcScroller;->mDuration:I

    .line 474
    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/htc/widget/HtcScroller;->mDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/htc/widget/HtcScroller;->mDurationReciprocal:F

    .line 475
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/HtcScroller;->mFinished:Z

    .line 476
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"

    .prologue
    .line 397
    const/4 v2, 0x1

    iput v2, p0, Lcom/htc/widget/HtcScroller;->mMode:I

    .line 398
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/widget/HtcScroller;->mFinished:Z

    .line 400
    int-to-double v2, p3

    int-to-double v4, p4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v1, v2

    .line 402
    .local v1, velocity:F
    iput v1, p0, Lcom/htc/widget/HtcScroller;->mVelocity:F

    .line 403
    const/high16 v2, 0x447a

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/htc/widget/HtcScroller;->mDeceleration:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/htc/widget/HtcScroller;->mDuration:I

    .line 405
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/widget/HtcScroller;->mStartTime:J

    .line 406
    iput p1, p0, Lcom/htc/widget/HtcScroller;->mStartX:I

    .line 407
    iput p2, p0, Lcom/htc/widget/HtcScroller;->mStartY:I

    .line 409
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    const/high16 v2, 0x3f80

    :goto_0
    iput v2, p0, Lcom/htc/widget/HtcScroller;->mCoeffX:F

    .line 410
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    const/high16 v2, 0x3f80

    :goto_1
    iput v2, p0, Lcom/htc/widget/HtcScroller;->mCoeffY:F

    .line 412
    mul-float v2, v1, v1

    const/high16 v3, 0x4000

    iget v4, p0, Lcom/htc/widget/HtcScroller;->mDeceleration:F

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 414
    .local v0, totalDistance:I
    iput p5, p0, Lcom/htc/widget/HtcScroller;->mMinX:I

    .line 415
    iput p6, p0, Lcom/htc/widget/HtcScroller;->mMaxX:I

    .line 416
    iput p7, p0, Lcom/htc/widget/HtcScroller;->mMinY:I

    .line 417
    iput p8, p0, Lcom/htc/widget/HtcScroller;->mMaxY:I

    .line 420
    int-to-float v2, v0

    iget v3, p0, Lcom/htc/widget/HtcScroller;->mCoeffX:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, p1

    iput v2, p0, Lcom/htc/widget/HtcScroller;->mFinalX:I

    .line 422
    iget v2, p0, Lcom/htc/widget/HtcScroller;->mFinalX:I

    iget v3, p0, Lcom/htc/widget/HtcScroller;->mMaxX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcScroller;->mFinalX:I

    .line 423
    iget v2, p0, Lcom/htc/widget/HtcScroller;->mFinalX:I

    iget v3, p0, Lcom/htc/widget/HtcScroller;->mMinX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcScroller;->mFinalX:I

    .line 425
    int-to-float v2, v0

    iget v3, p0, Lcom/htc/widget/HtcScroller;->mCoeffY:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, p2

    iput v2, p0, Lcom/htc/widget/HtcScroller;->mFinalY:I

    .line 427
    iget v2, p0, Lcom/htc/widget/HtcScroller;->mFinalY:I

    iget v3, p0, Lcom/htc/widget/HtcScroller;->mMaxY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcScroller;->mFinalY:I

    .line 428
    iget v2, p0, Lcom/htc/widget/HtcScroller;->mFinalY:I

    iget v3, p0, Lcom/htc/widget/HtcScroller;->mMinY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcScroller;->mFinalY:I

    .line 429
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/widget/HtcScroller;->mEasingFunction:Lcom/htc/widget/EasingFunction;

    .line 430
    return-void

    .line 409
    .end local v0           #totalDistance:I
    :cond_0
    int-to-float v2, p3

    div-float/2addr v2, v1

    goto :goto_0

    .line 410
    :cond_1
    int-to-float v2, p4

    div-float/2addr v2, v1

    goto :goto_1
.end method

.method public final forceFinished(Z)V
    .locals 0
    .parameter "finished"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/htc/widget/HtcScroller;->mFinished:Z

    .line 115
    return-void
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/htc/widget/HtcScroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/htc/widget/HtcScroller;->mCurrY:I

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/htc/widget/HtcScroller;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/htc/widget/HtcScroller;->mFinalX:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/htc/widget/HtcScroller;->mFinalY:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/htc/widget/HtcScroller;->mStartX:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/htc/widget/HtcScroller;->mStartY:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/htc/widget/HtcScroller;->mFinished:Z

    return v0
.end method

.method public setFinalX(I)V
    .locals 2
    .parameter "newX"

    .prologue
    .line 491
    iput p1, p0, Lcom/htc/widget/HtcScroller;->mFinalX:I

    .line 492
    iget v0, p0, Lcom/htc/widget/HtcScroller;->mFinalX:I

    iget v1, p0, Lcom/htc/widget/HtcScroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/htc/widget/HtcScroller;->mDeltaX:F

    .line 493
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcScroller;->mFinished:Z

    .line 494
    return-void
.end method

.method public setFinalY(I)V
    .locals 2
    .parameter "newY"

    .prologue
    .line 501
    iput p1, p0, Lcom/htc/widget/HtcScroller;->mFinalY:I

    .line 502
    iget v0, p0, Lcom/htc/widget/HtcScroller;->mFinalY:I

    iget v1, p0, Lcom/htc/widget/HtcScroller;->mStartY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/htc/widget/HtcScroller;->mDeltaY:F

    .line 503
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcScroller;->mFinished:Z

    .line 504
    return-void
.end method

.method public startScroll(IIII)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 295
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcScroller;->startScroll(IIIII)V

    .line 296
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 3
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"

    .prologue
    const/4 v0, 0x0

    const/high16 v2, 0x3f80

    .line 316
    iput v0, p0, Lcom/htc/widget/HtcScroller;->mMode:I

    .line 317
    iput-boolean v0, p0, Lcom/htc/widget/HtcScroller;->mFinished:Z

    .line 318
    iput p5, p0, Lcom/htc/widget/HtcScroller;->mDuration:I

    .line 319
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcScroller;->mStartTime:J

    .line 320
    iput p1, p0, Lcom/htc/widget/HtcScroller;->mStartX:I

    .line 321
    iput p2, p0, Lcom/htc/widget/HtcScroller;->mStartY:I

    .line 322
    add-int v0, p1, p3

    iput v0, p0, Lcom/htc/widget/HtcScroller;->mFinalX:I

    .line 323
    add-int v0, p2, p4

    iput v0, p0, Lcom/htc/widget/HtcScroller;->mFinalY:I

    .line 324
    int-to-float v0, p3

    iput v0, p0, Lcom/htc/widget/HtcScroller;->mDeltaX:F

    .line 325
    int-to-float v0, p4

    iput v0, p0, Lcom/htc/widget/HtcScroller;->mDeltaY:F

    .line 326
    iget v0, p0, Lcom/htc/widget/HtcScroller;->mDuration:I

    int-to-float v0, v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/htc/widget/HtcScroller;->mDurationReciprocal:F

    .line 328
    const/high16 v0, 0x4100

    iput v0, p0, Lcom/htc/widget/HtcScroller;->mViscousFluidScale:F

    .line 330
    iput v2, p0, Lcom/htc/widget/HtcScroller;->mViscousFluidNormalize:F

    .line 331
    invoke-direct {p0, v2}, Lcom/htc/widget/HtcScroller;->viscousFluid(F)F

    move-result v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/htc/widget/HtcScroller;->mViscousFluidNormalize:F

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcScroller;->mEasingFunction:Lcom/htc/widget/EasingFunction;

    .line 333
    return-void
.end method

.method public startScroll(IIIIILcom/htc/widget/EasingFunction;)V
    .locals 3
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"
    .parameter "function"

    .prologue
    const/4 v0, 0x0

    const/high16 v2, 0x3f80

    .line 353
    iput v0, p0, Lcom/htc/widget/HtcScroller;->mMode:I

    .line 354
    iput-object p6, p0, Lcom/htc/widget/HtcScroller;->mEasingFunction:Lcom/htc/widget/EasingFunction;

    .line 355
    iput-boolean v0, p0, Lcom/htc/widget/HtcScroller;->mFinished:Z

    .line 356
    iput p5, p0, Lcom/htc/widget/HtcScroller;->mDuration:I

    .line 357
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcScroller;->mStartTime:J

    .line 358
    iput p1, p0, Lcom/htc/widget/HtcScroller;->mStartX:I

    .line 359
    iput p2, p0, Lcom/htc/widget/HtcScroller;->mStartY:I

    .line 360
    add-int v0, p1, p3

    iput v0, p0, Lcom/htc/widget/HtcScroller;->mFinalX:I

    .line 361
    add-int v0, p2, p4

    iput v0, p0, Lcom/htc/widget/HtcScroller;->mFinalY:I

    .line 362
    int-to-float v0, p3

    iput v0, p0, Lcom/htc/widget/HtcScroller;->mDeltaX:F

    .line 363
    int-to-float v0, p4

    iput v0, p0, Lcom/htc/widget/HtcScroller;->mDeltaY:F

    .line 364
    iget v0, p0, Lcom/htc/widget/HtcScroller;->mDuration:I

    int-to-float v0, v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/htc/widget/HtcScroller;->mDurationReciprocal:F

    .line 366
    const/high16 v0, 0x4100

    iput v0, p0, Lcom/htc/widget/HtcScroller;->mViscousFluidScale:F

    .line 368
    iput v2, p0, Lcom/htc/widget/HtcScroller;->mViscousFluidNormalize:F

    .line 369
    invoke-direct {p0, v2}, Lcom/htc/widget/HtcScroller;->viscousFluid(F)F

    move-result v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/htc/widget/HtcScroller;->mViscousFluidNormalize:F

    .line 370
    return-void
.end method

.method public timePassed()I
    .locals 4

    .prologue
    .line 483
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/widget/HtcScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
