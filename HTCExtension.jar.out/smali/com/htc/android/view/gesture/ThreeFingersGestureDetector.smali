.class public Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;
.super Ljava/lang/Object;
.source "ThreeFingersGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$GestureHandler;,
        Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$SimpleOnGestureListener;,
        Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$OnGestureListener;
    }
.end annotation


# static fields
.field private static final FLING_CANCEL_TIMEOUT:I = 0x64

.field private static final MSG_FLING_CANCEL:I = 0x1388


# instance fields
.field private mAlwaysInTapRegion:Z

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mFlingEvent:Landroid/view/MotionEvent;

.field private mFlingTime:J

.field private final mHandler:Landroid/os/Handler;

.field private mIs3FingersDetected:Z

.field private final mListener:Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVelocityX:F

.field private mVelocityY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$OnGestureListener;)V
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 128
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 130
    if-nez p1, :cond_0

    .line 131
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mMinimumFlingVelocity:I

    .line 132
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mMaximumFlingVelocity:I

    .line 133
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v1

    .line 140
    .local v1, touchSlop:I
    :goto_0
    mul-int v2, v1, v1

    iput v2, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mTouchSlopSquare:I

    .line 141
    iput-object p2, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mListener:Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$OnGestureListener;

    .line 142
    new-instance v2, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$GestureHandler;

    invoke-direct {v2, p0}, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$GestureHandler;-><init>(Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;)V

    iput-object v2, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mHandler:Landroid/os/Handler;

    .line 143
    return-void

    .line 135
    .end local v1           #touchSlop:I
    :cond_0
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 136
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mMinimumFlingVelocity:I

    .line 137
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mMaximumFlingVelocity:I

    .line 138
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .restart local v1       #touchSlop:I
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mIs3FingersDetected:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;)Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$OnGestureListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mListener:Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$OnGestureListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->cancel()V

    return-void
.end method

.method private cancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 296
    iget-object v0, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 298
    iput-object v1, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 302
    iput-object v1, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mFlingEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_2

    .line 305
    iget-object v0, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mFlingEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 306
    iput-object v1, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mFlingEvent:Landroid/view/MotionEvent;

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 309
    iget-object v0, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 312
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mIs3FingersDetected:Z

    .line 313
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mFlingTime:J

    .line 314
    iput v2, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mVelocityY:F

    .line 315
    iput v2, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mVelocityX:F

    .line 316
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 155
    .local v0, action:I
    const/4 v5, 0x0

    .line 158
    .local v5, handled:Z
    const/4 v8, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 159
    iget-object v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v8, :cond_0

    .line 160
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 162
    :cond_0
    iget-object v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 165
    :cond_1
    iget-boolean v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mIs3FingersDetected:Z

    if-eqz v8, :cond_b

    .line 166
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_0

    .line 292
    :cond_2
    :goto_0
    :pswitch_0
    return v5

    .line 168
    :pswitch_1
    iget-boolean v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mAlwaysInTapRegion:Z

    if-nez v8, :cond_5

    .line 170
    iget-object v7, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 171
    .local v7, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v8, 0x3e8

    iget v9, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mMaximumFlingVelocity:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 172
    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    iput v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mVelocityY:F

    .line 173
    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v8

    iput v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mVelocityX:F

    .line 175
    iget v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mVelocityY:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mMinimumFlingVelocity:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_3

    iget v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mVelocityX:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mMinimumFlingVelocity:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_5

    .line 177
    :cond_3
    iget-object v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mFlingEvent:Landroid/view/MotionEvent;

    if-eqz v8, :cond_4

    .line 178
    iget-object v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mFlingEvent:Landroid/view/MotionEvent;

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 180
    :cond_4
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mFlingEvent:Landroid/view/MotionEvent;

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mFlingTime:J

    .line 182
    iget-object v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x1388

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 183
    iget-object v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x1388

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 186
    .end local v7           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_5
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mIs3FingersDetected:Z

    .line 187
    iget-object v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x1388

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 188
    iget-object v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mListener:Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$OnGestureListener;

    if-eqz v8, :cond_6

    .line 189
    iget-object v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mListener:Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$OnGestureListener;

    invoke-interface {v8}, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$OnGestureListener;->onEnd()V

    .line 191
    :cond_6
    invoke-direct {p0}, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->cancel()V

    goto :goto_0

    .line 196
    :pswitch_2
    iget-boolean v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mAlwaysInTapRegion:Z

    if-eqz v8, :cond_2

    .line 197
    iget-object v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-nez v8, :cond_7

    .line 198
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 199
    iget-object v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    and-int/lit16 v9, v0, -0x100

    or-int/lit8 v9, v9, 0x5

    invoke-virtual {v8, v9}, Landroid/view/MotionEvent;->setAction(I)V

    goto/16 :goto_0

    .line 201
    :cond_7
    const/4 v1, 0x0

    .line 202
    .local v1, bInTapRegion:Z
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    const/4 v8, 0x3

    if-ge v6, v8, :cond_8

    .line 203
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    iget-object v9, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v9, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    sub-float/2addr v8, v9

    float-to-int v2, v8

    .line 204
    .local v2, deltaX:I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iget-object v9, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v9, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    sub-float/2addr v8, v9

    float-to-int v3, v8

    .line 205
    .local v3, deltaY:I
    mul-int v8, v2, v2

    mul-int v9, v3, v3

    add-int v4, v8, v9

    .line 206
    .local v4, distance:I
    iget v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mTouchSlopSquare:I

    if-gt v4, v8, :cond_9

    .line 207
    const/4 v1, 0x1

    .line 211
    .end local v2           #deltaX:I
    .end local v3           #deltaY:I
    .end local v4           #distance:I
    :cond_8
    iput-boolean v1, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mAlwaysInTapRegion:Z

    goto/16 :goto_0

    .line 202
    .restart local v2       #deltaX:I
    .restart local v3       #deltaY:I
    .restart local v4       #distance:I
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 218
    .end local v1           #bInTapRegion:Z
    .end local v2           #deltaX:I
    .end local v3           #deltaY:I
    .end local v4           #distance:I
    .end local v6           #i:I
    :pswitch_3
    iget-object v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mListener:Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$OnGestureListener;

    if-eqz v8, :cond_a

    .line 219
    iget-object v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mListener:Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$OnGestureListener;

    invoke-interface {v8}, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$OnGestureListener;->onEnd()V

    .line 221
    :cond_a
    invoke-direct {p0}, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->cancel()V

    goto/16 :goto_0

    .line 225
    :cond_b
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_1

    :pswitch_4
    goto/16 :goto_0

    .line 266
    :pswitch_5
    const-wide/16 v8, 0x0

    iget-wide v10, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mFlingTime:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_c

    .line 267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mFlingTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x64

    cmp-long v8, v8, v10

    if-gtz v8, :cond_c

    .line 268
    iget-object v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mListener:Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$OnGestureListener;

    if-eqz v8, :cond_c

    .line 269
    iget-object v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mListener:Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$OnGestureListener;

    iget-object v9, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    iget-object v10, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mFlingEvent:Landroid/view/MotionEvent;

    iget v11, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mVelocityX:F

    iget v12, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mVelocityY:F

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v5

    .line 273
    :cond_c
    const/4 v8, 0x1

    iget-object v9, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x1388

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-ne v8, v9, :cond_d

    .line 274
    iget-object v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mListener:Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$OnGestureListener;

    if-eqz v8, :cond_d

    .line 275
    iget-object v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mListener:Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$OnGestureListener;

    invoke-interface {v8}, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$OnGestureListener;->onEnd()V

    .line 278
    :cond_d
    invoke-direct {p0}, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->cancel()V

    goto/16 :goto_0

    .line 227
    :pswitch_6
    const-wide/16 v8, 0x0

    iget-wide v10, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mFlingTime:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_f

    .line 228
    iget-object v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mFlingEvent:Landroid/view/MotionEvent;

    if-eqz v8, :cond_e

    .line 229
    iget-object v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mFlingEvent:Landroid/view/MotionEvent;

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 230
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mFlingEvent:Landroid/view/MotionEvent;

    .line 232
    :cond_e
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mFlingTime:J

    .line 233
    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mVelocityY:F

    .line 234
    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mVelocityX:F

    .line 236
    :cond_f
    const/4 v8, 0x1

    iget-object v9, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x1388

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-ne v8, v9, :cond_10

    .line 237
    iget-object v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x1388

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 238
    iget-object v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mListener:Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$OnGestureListener;

    if-eqz v8, :cond_10

    .line 239
    iget-object v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mListener:Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$OnGestureListener;

    invoke-interface {v8}, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$OnGestureListener;->onEnd()V

    .line 242
    :cond_10
    const/4 v8, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-ne v8, v9, :cond_2

    .line 243
    iget-object v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v8, :cond_11

    .line 244
    iget-object v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 246
    :cond_11
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 247
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mAlwaysInTapRegion:Z

    .line 248
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mIs3FingersDetected:Z

    .line 249
    iget-object v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mListener:Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$OnGestureListener;

    if-eqz v8, :cond_2

    .line 250
    iget-object v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mListener:Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$OnGestureListener;

    invoke-interface {v8}, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$OnGestureListener;->onBegin()V

    goto/16 :goto_0

    .line 256
    :pswitch_7
    const/4 v8, 0x4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-ne v8, v9, :cond_2

    .line 257
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mAlwaysInTapRegion:Z

    .line 258
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mIs3FingersDetected:Z

    .line 259
    iget-object v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mListener:Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$OnGestureListener;

    if-eqz v8, :cond_2

    .line 260
    iget-object v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mListener:Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$OnGestureListener;

    invoke-interface {v8}, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$OnGestureListener;->onBegin()V

    goto/16 :goto_0

    .line 282
    :pswitch_8
    const/4 v8, 0x1

    iget-object v9, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x1388

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-ne v8, v9, :cond_12

    .line 283
    iget-object v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mListener:Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$OnGestureListener;

    if-eqz v8, :cond_12

    .line 284
    iget-object v8, p0, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->mListener:Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$OnGestureListener;

    invoke-interface {v8}, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector$OnGestureListener;->onEnd()V

    .line 287
    :cond_12
    invoke-direct {p0}, Lcom/htc/android/view/gesture/ThreeFingersGestureDetector;->cancel()V

    goto/16 :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch

    .line 225
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
