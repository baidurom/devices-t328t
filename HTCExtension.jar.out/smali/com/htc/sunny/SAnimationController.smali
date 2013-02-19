.class public Lcom/htc/sunny/SAnimationController;
.super Ljava/lang/Object;
.source "SAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny/SAnimationController$1;,
        Lcom/htc/sunny/SAnimationController$Layout;,
        Lcom/htc/sunny/SAnimationController$INTERPOLATOR;,
        Lcom/htc/sunny/SAnimationController$AnimationListener;
    }
.end annotation


# instance fields
.field protected mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

.field protected mCurrentTime:J

.field protected mDelayTime:J

.field protected mEndLayout:Lcom/htc/sunny/SAnimationController$Layout;

.field protected mEndTime:J

.field private mHasMore:Z

.field protected mInterpolator:Lcom/htc/sunny/SAnimationController$INTERPOLATOR;

.field private mIsAlphaAnimation:Z

.field private mIsEnded:Z

.field protected mIsFileAfter:Z

.field protected mIsFileBefore:Z

.field private mIsPosAnimation:Z

.field private mIsReady:Z

.field private mIsRotateAnimation:Z

.field private mIsScaleAnimation:Z

.field private mIsStarted:Z

.field protected mListener:Lcom/htc/sunny/SAnimationController$AnimationListener;

.field protected mOffset:J

.field protected mStartLayout:Lcom/htc/sunny/SAnimationController$Layout;

.field protected mStartTime:J

.field protected mTotalTime:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 139
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny/SAnimationController;->mListener:Lcom/htc/sunny/SAnimationController$AnimationListener;

    .line 65
    sget-object v0, Lcom/htc/sunny/SAnimationController$INTERPOLATOR;->LINEAR:Lcom/htc/sunny/SAnimationController$INTERPOLATOR;

    iput-object v0, p0, Lcom/htc/sunny/SAnimationController;->mInterpolator:Lcom/htc/sunny/SAnimationController$INTERPOLATOR;

    .line 71
    iput-boolean v1, p0, Lcom/htc/sunny/SAnimationController;->mIsReady:Z

    .line 72
    iput-boolean v1, p0, Lcom/htc/sunny/SAnimationController;->mIsStarted:Z

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsEnded:Z

    .line 74
    iput-boolean v1, p0, Lcom/htc/sunny/SAnimationController;->mHasMore:Z

    .line 76
    iput-boolean v1, p0, Lcom/htc/sunny/SAnimationController;->mIsPosAnimation:Z

    .line 77
    iput-boolean v1, p0, Lcom/htc/sunny/SAnimationController;->mIsAlphaAnimation:Z

    .line 78
    iput-boolean v1, p0, Lcom/htc/sunny/SAnimationController;->mIsScaleAnimation:Z

    .line 79
    iput-boolean v1, p0, Lcom/htc/sunny/SAnimationController;->mIsRotateAnimation:Z

    .line 85
    iput-wide v2, p0, Lcom/htc/sunny/SAnimationController;->mStartTime:J

    .line 90
    iput-wide v2, p0, Lcom/htc/sunny/SAnimationController;->mTotalTime:J

    .line 95
    iput-wide v2, p0, Lcom/htc/sunny/SAnimationController;->mEndTime:J

    .line 100
    iput-wide v2, p0, Lcom/htc/sunny/SAnimationController;->mDelayTime:J

    .line 105
    iput-wide v2, p0, Lcom/htc/sunny/SAnimationController;->mOffset:J

    .line 110
    iput-wide v2, p0, Lcom/htc/sunny/SAnimationController;->mCurrentTime:J

    .line 116
    iput-boolean v1, p0, Lcom/htc/sunny/SAnimationController;->mIsFileBefore:Z

    .line 121
    iput-boolean v1, p0, Lcom/htc/sunny/SAnimationController;->mIsFileAfter:Z

    .line 127
    new-instance v0, Lcom/htc/sunny/SAnimationController$Layout;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SAnimationController$Layout;-><init>(Lcom/htc/sunny/SAnimationController;)V

    iput-object v0, p0, Lcom/htc/sunny/SAnimationController;->mStartLayout:Lcom/htc/sunny/SAnimationController$Layout;

    .line 132
    new-instance v0, Lcom/htc/sunny/SAnimationController$Layout;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SAnimationController$Layout;-><init>(Lcom/htc/sunny/SAnimationController;)V

    iput-object v0, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    .line 137
    new-instance v0, Lcom/htc/sunny/SAnimationController$Layout;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SAnimationController$Layout;-><init>(Lcom/htc/sunny/SAnimationController;)V

    iput-object v0, p0, Lcom/htc/sunny/SAnimationController;->mEndLayout:Lcom/htc/sunny/SAnimationController$Layout;

    .line 141
    return-void
.end method


# virtual methods
.method public animate()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 470
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/sunny/SAnimationController;->mCurrentTime:J

    .line 472
    iget-wide v2, p0, Lcom/htc/sunny/SAnimationController;->mCurrentTime:J

    iget-wide v4, p0, Lcom/htc/sunny/SAnimationController;->mStartTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/htc/sunny/SAnimationController;->mDelayTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    iget-wide v2, p0, Lcom/htc/sunny/SAnimationController;->mCurrentTime:J

    iget-wide v4, p0, Lcom/htc/sunny/SAnimationController;->mEndTime:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 477
    iput-boolean v6, p0, Lcom/htc/sunny/SAnimationController;->mHasMore:Z

    .line 479
    invoke-virtual {p0}, Lcom/htc/sunny/SAnimationController;->animationEnd()V

    .line 481
    iput-boolean v6, p0, Lcom/htc/sunny/SAnimationController;->mIsStarted:Z

    .line 482
    iput-boolean v8, p0, Lcom/htc/sunny/SAnimationController;->mIsEnded:Z

    .line 483
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mListener:Lcom/htc/sunny/SAnimationController$AnimationListener;

    if-eqz v2, :cond_0

    .line 484
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mListener:Lcom/htc/sunny/SAnimationController$AnimationListener;

    invoke-interface {v2}, Lcom/htc/sunny/SAnimationController$AnimationListener;->onAnimationEnd()V

    goto :goto_0

    .line 489
    :cond_2
    iget-boolean v2, p0, Lcom/htc/sunny/SAnimationController;->mIsStarted:Z

    if-nez v2, :cond_4

    .line 490
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mListener:Lcom/htc/sunny/SAnimationController$AnimationListener;

    if-eqz v2, :cond_3

    .line 491
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mListener:Lcom/htc/sunny/SAnimationController$AnimationListener;

    invoke-interface {v2}, Lcom/htc/sunny/SAnimationController$AnimationListener;->onAnimationStart()V

    .line 493
    :cond_3
    iput-boolean v8, p0, Lcom/htc/sunny/SAnimationController;->mIsStarted:Z

    .line 496
    :cond_4
    iget-wide v2, p0, Lcom/htc/sunny/SAnimationController;->mCurrentTime:J

    iget-wide v4, p0, Lcom/htc/sunny/SAnimationController;->mStartTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/htc/sunny/SAnimationController;->mDelayTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/htc/sunny/SAnimationController;->mOffset:J

    .line 498
    iget-boolean v2, p0, Lcom/htc/sunny/SAnimationController;->mIsPosAnimation:Z

    if-ne v8, v2, :cond_5

    .line 499
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mStartLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v1, v2, Lcom/htc/sunny/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny/Vector3F;

    .line 500
    .local v1, start:Lcom/htc/sunny/Vector3F;
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mEndLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v0, v2, Lcom/htc/sunny/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny/Vector3F;

    .line 502
    .local v0, end:Lcom/htc/sunny/Vector3F;
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunny/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunny/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunny/Vector3F;->mX:F

    iget v5, v0, Lcom/htc/sunny/Vector3F;->mX:F

    iget v6, v1, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunny/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunny/Vector3F;->mX:F

    .line 503
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunny/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunny/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunny/Vector3F;->mY:F

    iget v5, v0, Lcom/htc/sunny/Vector3F;->mY:F

    iget v6, v1, Lcom/htc/sunny/Vector3F;->mY:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunny/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunny/Vector3F;->mY:F

    .line 504
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunny/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunny/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunny/Vector3F;->mZ:F

    iget v5, v0, Lcom/htc/sunny/Vector3F;->mZ:F

    iget v6, v1, Lcom/htc/sunny/Vector3F;->mZ:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunny/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunny/Vector3F;->mZ:F

    .line 507
    .end local v0           #end:Lcom/htc/sunny/Vector3F;
    .end local v1           #start:Lcom/htc/sunny/Vector3F;
    :cond_5
    iget-boolean v2, p0, Lcom/htc/sunny/SAnimationController;->mIsScaleAnimation:Z

    if-ne v8, v2, :cond_6

    .line 508
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mStartLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v1, v2, Lcom/htc/sunny/SAnimationController$Layout;->mScale:Lcom/htc/sunny/Vector3F;

    .line 509
    .restart local v1       #start:Lcom/htc/sunny/Vector3F;
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mEndLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v0, v2, Lcom/htc/sunny/SAnimationController$Layout;->mScale:Lcom/htc/sunny/Vector3F;

    .line 511
    .restart local v0       #end:Lcom/htc/sunny/Vector3F;
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunny/SAnimationController$Layout;->mScale:Lcom/htc/sunny/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunny/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunny/Vector3F;->mX:F

    iget v5, v0, Lcom/htc/sunny/Vector3F;->mX:F

    iget v6, v1, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunny/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunny/Vector3F;->mX:F

    .line 512
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunny/SAnimationController$Layout;->mScale:Lcom/htc/sunny/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunny/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunny/Vector3F;->mY:F

    iget v5, v0, Lcom/htc/sunny/Vector3F;->mY:F

    iget v6, v1, Lcom/htc/sunny/Vector3F;->mY:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunny/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunny/Vector3F;->mY:F

    .line 513
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunny/SAnimationController$Layout;->mScale:Lcom/htc/sunny/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunny/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunny/Vector3F;->mZ:F

    iget v5, v0, Lcom/htc/sunny/Vector3F;->mZ:F

    iget v6, v1, Lcom/htc/sunny/Vector3F;->mZ:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunny/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunny/Vector3F;->mZ:F

    .line 516
    .end local v0           #end:Lcom/htc/sunny/Vector3F;
    .end local v1           #start:Lcom/htc/sunny/Vector3F;
    :cond_6
    iget-boolean v2, p0, Lcom/htc/sunny/SAnimationController;->mIsRotateAnimation:Z

    if-ne v8, v2, :cond_7

    .line 517
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mStartLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v1, v2, Lcom/htc/sunny/SAnimationController$Layout;->mRotation:Lcom/htc/sunny/Vector3F;

    .line 518
    .restart local v1       #start:Lcom/htc/sunny/Vector3F;
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mEndLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v0, v2, Lcom/htc/sunny/SAnimationController$Layout;->mRotation:Lcom/htc/sunny/Vector3F;

    .line 520
    .restart local v0       #end:Lcom/htc/sunny/Vector3F;
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunny/SAnimationController$Layout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunny/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunny/Vector3F;->mX:F

    iget v5, v0, Lcom/htc/sunny/Vector3F;->mX:F

    iget v6, v1, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunny/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunny/Vector3F;->mX:F

    .line 521
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunny/SAnimationController$Layout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunny/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunny/Vector3F;->mY:F

    iget v5, v0, Lcom/htc/sunny/Vector3F;->mY:F

    iget v6, v1, Lcom/htc/sunny/Vector3F;->mY:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunny/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunny/Vector3F;->mY:F

    .line 522
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunny/SAnimationController$Layout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunny/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunny/Vector3F;->mZ:F

    iget v5, v0, Lcom/htc/sunny/Vector3F;->mZ:F

    iget v6, v1, Lcom/htc/sunny/Vector3F;->mZ:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunny/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunny/Vector3F;->mZ:F

    .line 525
    .end local v0           #end:Lcom/htc/sunny/Vector3F;
    .end local v1           #start:Lcom/htc/sunny/Vector3F;
    :cond_7
    iget-boolean v2, p0, Lcom/htc/sunny/SAnimationController;->mIsAlphaAnimation:Z

    if-ne v8, v2, :cond_0

    .line 526
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mStartLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget v1, v2, Lcom/htc/sunny/SAnimationController$Layout;->mAlpha:I

    .line 527
    .local v1, start:I
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mEndLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget v0, v2, Lcom/htc/sunny/SAnimationController$Layout;->mAlpha:I

    .line 529
    .local v0, end:I
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-wide v3, p0, Lcom/htc/sunny/SAnimationController;->mOffset:J

    long-to-float v3, v3

    int-to-float v4, v1

    sub-int v5, v0, v1

    int-to-float v5, v5

    iget-wide v6, p0, Lcom/htc/sunny/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny/SAnimationController;->interpolate(FFFF)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Lcom/htc/sunny/SAnimationController$Layout;->mAlpha:I

    goto/16 :goto_0
.end method

.method protected animationEnd()V
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget-object v1, p0, Lcom/htc/sunny/SAnimationController;->mEndLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v1, v1, Lcom/htc/sunny/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, v1}, Lcom/htc/sunny/Vector3F;->setVector3F(Lcom/htc/sunny/Vector3F;)V

    .line 539
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny/SAnimationController$Layout;->mScale:Lcom/htc/sunny/Vector3F;

    iget-object v1, p0, Lcom/htc/sunny/SAnimationController;->mEndLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v1, v1, Lcom/htc/sunny/SAnimationController$Layout;->mScale:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, v1}, Lcom/htc/sunny/Vector3F;->setVector3F(Lcom/htc/sunny/Vector3F;)V

    .line 540
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny/SAnimationController$Layout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget-object v1, p0, Lcom/htc/sunny/SAnimationController;->mEndLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v1, v1, Lcom/htc/sunny/SAnimationController$Layout;->mRotation:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, v1}, Lcom/htc/sunny/Vector3F;->setVector3F(Lcom/htc/sunny/Vector3F;)V

    .line 541
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v1, p0, Lcom/htc/sunny/SAnimationController;->mEndLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget v1, v1, Lcom/htc/sunny/SAnimationController$Layout;->mAlpha:I

    iput v1, v0, Lcom/htc/sunny/SAnimationController$Layout;->mAlpha:I

    .line 542
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/htc/sunny/SAnimationController;->reset()V

    .line 437
    invoke-virtual {p0}, Lcom/htc/sunny/SAnimationController;->animationEnd()V

    .line 439
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mListener:Lcom/htc/sunny/SAnimationController$AnimationListener;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mListener:Lcom/htc/sunny/SAnimationController$AnimationListener;

    invoke-interface {v0}, Lcom/htc/sunny/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 442
    :cond_0
    return-void
.end method

.method public final getCurrentAlpha()I
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget v0, v0, Lcom/htc/sunny/SAnimationController$Layout;->mAlpha:I

    return v0
.end method

.method public final getCurrentPosition()Lcom/htc/sunny/Vector3F;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny/Vector3F;

    return-object v0
.end method

.method public final getCurrentRotation()Lcom/htc/sunny/Vector3F;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny/SAnimationController$Layout;->mRotation:Lcom/htc/sunny/Vector3F;

    return-object v0
.end method

.method public final getCurrentScale()Lcom/htc/sunny/Vector3F;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny/SAnimationController$Layout;->mScale:Lcom/htc/sunny/Vector3F;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 329
    iget-wide v0, p0, Lcom/htc/sunny/SAnimationController;->mTotalTime:J

    return-wide v0
.end method

.method public hasMore()Z
    .locals 1

    .prologue
    .line 461
    iget-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mHasMore:Z

    return v0
.end method

.method protected interpolate(FFFF)F
    .locals 11
    .parameter "current"
    .parameter "start"
    .parameter "total"
    .parameter "duration"

    .prologue
    const/high16 v9, 0x3f80

    const/4 v3, 0x0

    .line 549
    cmpl-float v7, v3, p4

    if-nez v7, :cond_0

    .line 575
    :goto_0
    return v3

    .line 551
    :cond_0
    const/4 v3, 0x0

    .line 552
    .local v3, nRes:F
    const/4 v6, 0x0

    .local v6, ts:F
    const/4 v5, 0x0

    .line 553
    .local v5, tc:F
    move v4, p1

    .line 554
    .local v4, t:F
    move v0, p2

    .line 555
    .local v0, b:F
    move v1, p3

    .line 556
    .local v1, c:F
    move v2, p4

    .line 558
    .local v2, d:F
    sget-object v7, Lcom/htc/sunny/SAnimationController$1;->$SwitchMap$com$htc$sunny$SAnimationController$INTERPOLATOR:[I

    iget-object v8, p0, Lcom/htc/sunny/SAnimationController;->mInterpolator:Lcom/htc/sunny/SAnimationController$INTERPOLATOR;

    invoke-virtual {v8}, Lcom/htc/sunny/SAnimationController$INTERPOLATOR;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 560
    :pswitch_0
    div-float v7, v1, v2

    mul-float/2addr v7, v4

    add-float v3, v7, v0

    .line 561
    goto :goto_0

    .line 563
    :pswitch_1
    div-float/2addr v4, v2

    .line 564
    mul-float v6, v4, v4

    .line 565
    mul-float v5, v6, v4

    .line 566
    mul-float v7, v9, v5

    mul-float/2addr v7, v6

    const/high16 v8, -0x3f60

    mul-float/2addr v8, v6

    mul-float/2addr v8, v6

    add-float/2addr v7, v8

    const/high16 v8, 0x4120

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    const/high16 v8, -0x3ee0

    mul-float/2addr v8, v6

    add-float/2addr v7, v8

    const/high16 v8, 0x40a0

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    mul-float/2addr v7, v1

    add-float v3, v7, v0

    .line 567
    goto :goto_0

    .line 570
    :pswitch_2
    div-float v7, v4, v2

    add-float/2addr v7, v9

    float-to-double v7, v7

    const-wide v9, 0x400921fb54442d18L

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x4000

    div-double/2addr v7, v9

    const-wide/high16 v9, 0x3fe0

    add-double/2addr v7, v9

    double-to-float v7, v7

    mul-float/2addr v7, v1

    add-float v3, v7, v0

    .line 571
    goto :goto_0

    .line 558
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isAlphaAnimation()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsAlphaAnimation:Z

    return v0
.end method

.method public isEnded()Z
    .locals 1

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsEnded:Z

    return v0
.end method

.method public isFillAfter()Z
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsFileAfter:Z

    return v0
.end method

.method public isFillBefore()Z
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsFileBefore:Z

    return v0
.end method

.method public isPositionAnimation()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsPosAnimation:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsReady:Z

    return v0
.end method

.method public isRotateAnimation()Z
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsRotateAnimation:Z

    return v0
.end method

.method public isScaleAnimation()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsScaleAnimation:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsStarted:Z

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsEnded:Z

    .line 424
    iput-boolean v2, p0, Lcom/htc/sunny/SAnimationController;->mIsStarted:Z

    .line 425
    iget-wide v0, p0, Lcom/htc/sunny/SAnimationController;->mEndTime:J

    iput-wide v0, p0, Lcom/htc/sunny/SAnimationController;->mCurrentTime:J

    .line 426
    iput-boolean v2, p0, Lcom/htc/sunny/SAnimationController;->mHasMore:Z

    .line 427
    iput-boolean v2, p0, Lcom/htc/sunny/SAnimationController;->mIsReady:Z

    .line 428
    return-void
.end method

.method public setAlphaAnimation(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mStartLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iput p1, v0, Lcom/htc/sunny/SAnimationController$Layout;->mAlpha:I

    .line 240
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mEndLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iput p2, v0, Lcom/htc/sunny/SAnimationController$Layout;->mAlpha:I

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsAlphaAnimation:Z

    .line 243
    return-void
.end method

.method public setAnimationListener(Lcom/htc/sunny/SAnimationController$AnimationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/htc/sunny/SAnimationController;->mListener:Lcom/htc/sunny/SAnimationController$AnimationListener;

    .line 171
    return-void
.end method

.method public setDuration(J)V
    .locals 2
    .parameter "nMilliseconds"

    .prologue
    .line 313
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 314
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Animation duration cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_0
    iput-wide p1, p0, Lcom/htc/sunny/SAnimationController;->mTotalTime:J

    .line 317
    return-void
.end method

.method public setFillAfter(Z)V
    .locals 0
    .parameter "bFillAfter"

    .prologue
    .line 358
    iput-boolean p1, p0, Lcom/htc/sunny/SAnimationController;->mIsFileAfter:Z

    .line 359
    return-void
.end method

.method public setFillBefore(Z)V
    .locals 0
    .parameter "bFillBefore"

    .prologue
    .line 344
    iput-boolean p1, p0, Lcom/htc/sunny/SAnimationController;->mIsFileBefore:Z

    .line 345
    return-void
.end method

.method public setInterpolator(Lcom/htc/sunny/SAnimationController$INTERPOLATOR;)V
    .locals 0
    .parameter "interpolator"

    .prologue
    .line 298
    iput-object p1, p0, Lcom/htc/sunny/SAnimationController;->mInterpolator:Lcom/htc/sunny/SAnimationController$INTERPOLATOR;

    .line 299
    return-void
.end method

.method public setPositionAnimation(Lcom/htc/sunny/Vector3F;Lcom/htc/sunny/Vector3F;)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mStartLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, p1}, Lcom/htc/sunny/Vector3F;->setVector3F(Lcom/htc/sunny/Vector3F;)V

    .line 186
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mEndLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, p2}, Lcom/htc/sunny/Vector3F;->setVector3F(Lcom/htc/sunny/Vector3F;)V

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsPosAnimation:Z

    .line 189
    return-void
.end method

.method protected setReady()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsReady:Z

    .line 149
    return-void
.end method

.method public setRotationAnimation(Lcom/htc/sunny/Vector3F;Lcom/htc/sunny/Vector3F;)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mStartLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny/SAnimationController$Layout;->mRotation:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, p1}, Lcom/htc/sunny/Vector3F;->setVector3F(Lcom/htc/sunny/Vector3F;)V

    .line 204
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mEndLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny/SAnimationController$Layout;->mRotation:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, p2}, Lcom/htc/sunny/Vector3F;->setVector3F(Lcom/htc/sunny/Vector3F;)V

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsRotateAnimation:Z

    .line 207
    return-void
.end method

.method public setScaleAnimation(Lcom/htc/sunny/Vector3F;Lcom/htc/sunny/Vector3F;)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mStartLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny/SAnimationController$Layout;->mScale:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, p1}, Lcom/htc/sunny/Vector3F;->setVector3F(Lcom/htc/sunny/Vector3F;)V

    .line 222
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mEndLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny/SAnimationController$Layout;->mScale:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, p2}, Lcom/htc/sunny/Vector3F;->setVector3F(Lcom/htc/sunny/Vector3F;)V

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsScaleAnimation:Z

    .line 225
    return-void
.end method

.method public setStartOffset(J)V
    .locals 0
    .parameter "nMilliseconds"

    .prologue
    .line 256
    iput-wide p1, p0, Lcom/htc/sunny/SAnimationController;->mDelayTime:J

    .line 257
    return-void
.end method

.method protected start()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 406
    iput-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsReady:Z

    .line 407
    iput-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsEnded:Z

    iput-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsStarted:Z

    .line 408
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mHasMore:Z

    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sunny/SAnimationController;->mStartTime:J

    .line 410
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/sunny/SAnimationController;->mTotalTime:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/htc/sunny/SAnimationController;->mDelayTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/sunny/SAnimationController;->mEndTime:J

    .line 412
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget-object v1, p0, Lcom/htc/sunny/SAnimationController;->mStartLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v1, v1, Lcom/htc/sunny/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, v1}, Lcom/htc/sunny/Vector3F;->setVector3F(Lcom/htc/sunny/Vector3F;)V

    .line 413
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny/SAnimationController$Layout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget-object v1, p0, Lcom/htc/sunny/SAnimationController;->mStartLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v1, v1, Lcom/htc/sunny/SAnimationController$Layout;->mRotation:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, v1}, Lcom/htc/sunny/Vector3F;->setVector3F(Lcom/htc/sunny/Vector3F;)V

    .line 414
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny/SAnimationController$Layout;->mScale:Lcom/htc/sunny/Vector3F;

    iget-object v1, p0, Lcom/htc/sunny/SAnimationController;->mStartLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v1, v1, Lcom/htc/sunny/SAnimationController$Layout;->mScale:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, v1}, Lcom/htc/sunny/Vector3F;->setVector3F(Lcom/htc/sunny/Vector3F;)V

    .line 415
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v1, p0, Lcom/htc/sunny/SAnimationController;->mStartLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget v1, v1, Lcom/htc/sunny/SAnimationController$Layout;->mAlpha:I

    iput v1, v0, Lcom/htc/sunny/SAnimationController$Layout;->mAlpha:I

    .line 416
    return-void
.end method
