.class public Lcom/htc/server/gesture/BaseGestureDetector;
.super Ljava/lang/Object;
.source "BaseGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/gesture/BaseGestureDetector$OnMyGestureListener;
    }
.end annotation


# instance fields
.field private mAlwaysInTapRegion:Z

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private final mListener:Lcom/htc/server/gesture/BaseGestureDetector$OnMyGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/server/gesture/BaseGestureDetector$OnMyGestureListener;)V
    .locals 0
    .parameter "context"
    .parameter "Listener"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/htc/server/gesture/BaseGestureDetector;->mListener:Lcom/htc/server/gesture/BaseGestureDetector$OnMyGestureListener;

    .line 43
    invoke-direct {p0, p1}, Lcom/htc/server/gesture/BaseGestureDetector;->init(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method private cancel()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/server/gesture/BaseGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/server/gesture/BaseGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/server/gesture/BaseGestureDetector;->mAlwaysInTapRegion:Z

    .line 188
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 50
    if-nez p1, :cond_0

    .line 52
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v1

    .line 55
    .local v1, touchSlop:I
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/htc/server/gesture/BaseGestureDetector;->mMinimumFlingVelocity:I

    .line 56
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/htc/server/gesture/BaseGestureDetector;->mMaximumFlingVelocity:I

    .line 64
    :goto_0
    mul-int v2, v1, v1

    iput v2, p0, Lcom/htc/server/gesture/BaseGestureDetector;->mTouchSlopSquare:I

    .line 66
    return-void

    .line 58
    .end local v1           #touchSlop:I
    :cond_0
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 59
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 61
    .restart local v1       #touchSlop:I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/htc/server/gesture/BaseGestureDetector;->mMinimumFlingVelocity:I

    .line 62
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/htc/server/gesture/BaseGestureDetector;->mMaximumFlingVelocity:I

    goto :goto_0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .parameter "ev"

    .prologue
    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    .line 79
    .local v9, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    .line 80
    .local v18, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    .line 82
    .local v17, x:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_0

    .line 83
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 85
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 87
    const/4 v14, 0x0

    .line 89
    .local v14, handled:Z
    and-int/lit16 v2, v9, 0xff

    packed-switch v2, :pswitch_data_0

    .line 179
    :cond_1
    :goto_0
    :pswitch_0
    return v14

    .line 93
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 94
    const v2, 0xff00

    and-int/2addr v2, v9

    shr-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_2

    const/4 v15, 0x1

    .line 96
    .local v15, index:I
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mLastMotionX:F

    .line 97
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mLastMotionY:F

    .line 98
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 99
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 94
    .end local v15           #index:I
    :cond_2
    const/4 v15, 0x0

    goto :goto_1

    .line 105
    :pswitch_2
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/gesture/BaseGestureDetector;->mLastMotionX:F

    .line 106
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/gesture/BaseGestureDetector;->mLastMotionY:F

    .line 107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_3

    .line 108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 110
    :cond_3
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 111
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mAlwaysInTapRegion:Z

    goto :goto_0

    .line 118
    :pswitch_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mLastMotionX:F

    sub-float v5, v2, v17

    .line 119
    .local v5, scrollX:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mLastMotionY:F

    sub-float v6, v2, v18

    .line 120
    .local v6, scrollY:F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mAlwaysInTapRegion:Z

    if-eqz v2, :cond_4

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float v2, v17, v2

    float-to-int v11, v2

    .line 122
    .local v11, deltaX:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float v2, v18, v2

    float-to-int v12, v2

    .line 123
    .local v12, deltaY:I
    mul-int v2, v11, v11

    mul-int v3, v12, v12

    add-int v13, v2, v3

    .line 124
    .local v13, distance:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mTouchSlopSquare:I

    if-le v13, v2, :cond_1

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    .line 126
    .local v16, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mMaximumFlingVelocity:I

    int-to-float v3, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 127
    invoke-virtual/range {v16 .. v16}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    .line 128
    .local v8, velocityY:F
    invoke-virtual/range {v16 .. v16}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    .line 129
    .local v7, velocityX:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mListener:Lcom/htc/server/gesture/BaseGestureDetector$OnMyGestureListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lcom/htc/server/gesture/BaseGestureDetector$OnMyGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFFF)Z

    move-result v14

    .line 130
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/gesture/BaseGestureDetector;->mLastMotionX:F

    .line 131
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/gesture/BaseGestureDetector;->mLastMotionY:F

    .line 132
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mAlwaysInTapRegion:Z

    goto/16 :goto_0

    .line 136
    .end local v7           #velocityX:F
    .end local v8           #velocityY:F
    .end local v11           #deltaX:I
    .end local v12           #deltaY:I
    .end local v13           #distance:I
    .end local v16           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_4
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-gez v2, :cond_5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 137
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    .line 138
    .restart local v16       #velocityTracker:Landroid/view/VelocityTracker;
    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mMaximumFlingVelocity:I

    int-to-float v3, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 139
    invoke-virtual/range {v16 .. v16}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    .line 140
    .restart local v8       #velocityY:F
    invoke-virtual/range {v16 .. v16}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    .line 141
    .restart local v7       #velocityX:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mListener:Lcom/htc/server/gesture/BaseGestureDetector$OnMyGestureListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lcom/htc/server/gesture/BaseGestureDetector$OnMyGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFFF)Z

    move-result v14

    .line 142
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/gesture/BaseGestureDetector;->mLastMotionX:F

    .line 143
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/gesture/BaseGestureDetector;->mLastMotionY:F

    goto/16 :goto_0

    .line 149
    .end local v5           #scrollX:F
    .end local v6           #scrollY:F
    .end local v7           #velocityX:F
    .end local v8           #velocityY:F
    .end local v16           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_4
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v10

    .line 152
    .local v10, currentUpEvent:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    .line 153
    .restart local v16       #velocityTracker:Landroid/view/VelocityTracker;
    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mMaximumFlingVelocity:I

    int-to-float v3, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 154
    invoke-virtual/range {v16 .. v16}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    .line 155
    .restart local v8       #velocityY:F
    invoke-virtual/range {v16 .. v16}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    .line 157
    .restart local v7       #velocityX:F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mMinimumFlingVelocity:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mMinimumFlingVelocity:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 160
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mListener:Lcom/htc/server/gesture/BaseGestureDetector$OnMyGestureListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v0, p1

    invoke-interface {v2, v3, v0, v7, v8}, Lcom/htc/server/gesture/BaseGestureDetector$OnMyGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v14

    .line 163
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_8

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 167
    :cond_8
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 169
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/server/gesture/BaseGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 174
    .end local v7           #velocityX:F
    .end local v8           #velocityY:F
    .end local v10           #currentUpEvent:Landroid/view/MotionEvent;
    .end local v16           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/gesture/BaseGestureDetector;->cancel()V

    goto/16 :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
