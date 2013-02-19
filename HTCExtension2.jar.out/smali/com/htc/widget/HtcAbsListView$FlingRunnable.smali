.class Lcom/htc/widget/HtcAbsListView$FlingRunnable;
.super Ljava/lang/Object;
.source "HtcAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# static fields
.field private static final FLYWHEEL_TIMEOUT:I = 0x28


# instance fields
.field private final mCheckFlywheel:Ljava/lang/Runnable;

.field private final mHtcScroller:Lcom/htc/widget/HtcScroller;

.field private mLastFlingY:I

.field private final mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Lcom/htc/widget/HtcAbsListView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcAbsListView;)V
    .locals 2
    .parameter

    .prologue
    .line 4108
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4082
    new-instance v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView$FlingRunnable$1;-><init>(Lcom/htc/widget/HtcAbsListView$FlingRunnable;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    .line 4109
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Lcom/htc/widget/HtcAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 4110
    new-instance v0, Lcom/htc/widget/HtcScroller;

    invoke-virtual {p1}, Lcom/htc/widget/HtcAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mHtcScroller:Lcom/htc/widget/HtcScroller;

    .line 4111
    iget-boolean v0, p1, Lcom/htc/widget/HtcAbsListView;->mHtcScrollerEnabled:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f80

    #setter for: Lcom/htc/widget/HtcAbsListView;->mVelocityScale:F
    invoke-static {p1, v0}, Lcom/htc/widget/HtcAbsListView;->access$1302(Lcom/htc/widget/HtcAbsListView;F)F

    .line 4112
    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/widget/HtcAbsListView$FlingRunnable;)Landroid/widget/OverScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4071
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method


# virtual methods
.method edgeReached(I)V
    .locals 6
    .parameter "delta"

    .prologue
    .line 4158
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mScrollY:I
    invoke-static {v3}, Lcom/htc/widget/HtcAbsListView;->access$1700(Lcom/htc/widget/HtcAbsListView;)I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v5, v5, Lcom/htc/widget/HtcAbsListView;->mOverflingDistance:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/OverScroller;->notifyVerticalEdgeReached(III)V

    .line 4159
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAbsListView;->getOverScrollMode()I

    move-result v0

    .line 4160
    .local v0, overscrollMode:I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #calls: Lcom/htc/widget/HtcAbsListView;->contentFits()Z
    invoke-static {v2}, Lcom/htc/widget/HtcAbsListView;->access$1800(Lcom/htc/widget/HtcAbsListView;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4162
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v3, 0x6

    iput v3, v2, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 4163
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v1, v2

    .line 4164
    .local v1, vel:I
    if-lez p1, :cond_2

    .line 4165
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v2}, Lcom/htc/widget/HtcAbsListView;->access$1900(Lcom/htc/widget/HtcAbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 4175
    .end local v1           #vel:I
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 4176
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4177
    return-void

    .line 4167
    .restart local v1       #vel:I
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v2}, Lcom/htc/widget/HtcAbsListView;->access$2000(Lcom/htc/widget/HtcAbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_0

    .line 4170
    .end local v1           #vel:I
    :cond_3
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v3, -0x1

    iput v3, v2, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 4171
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;
    invoke-static {v2}, Lcom/htc/widget/HtcAbsListView;->access$2100(Lcom/htc/widget/HtcAbsListView;)Lcom/htc/widget/HtcAbsListView$PositionScroller;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4172
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;
    invoke-static {v2}, Lcom/htc/widget/HtcAbsListView;->access$2100(Lcom/htc/widget/HtcAbsListView;)Lcom/htc/widget/HtcAbsListView$PositionScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->stop()V

    goto :goto_0
.end method

.method endFling()V
    .locals 2

    .prologue
    .line 4192
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 4194
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4195
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4197
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    .line 4198
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView;->clearScrollingCache()V

    .line 4199
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mHtcScrollerEnabled:Z

    if-nez v0, :cond_2

    .line 4200
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 4205
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Lcom/htc/widget/HtcAbsListView;->access$1400(Lcom/htc/widget/HtcAbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4206
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Lcom/htc/widget/HtcAbsListView;->access$1400(Lcom/htc/widget/HtcAbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 4207
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v1, 0x0

    #setter for: Lcom/htc/widget/HtcAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0, v1}, Lcom/htc/widget/HtcAbsListView;->access$1402(Lcom/htc/widget/HtcAbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 4210
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mScrollForAddAnimation:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4211
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mScrollToCorrectPosListener:Lcom/htc/widget/HtcAbsListView$ScrollToCorrectPosListener;

    if-eqz v0, :cond_1

    .line 4212
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mScrollToCorrectPosListener:Lcom/htc/widget/HtcAbsListView$ScrollToCorrectPosListener;

    invoke-interface {v0}, Lcom/htc/widget/HtcAbsListView$ScrollToCorrectPosListener;->onScrollEnd()V

    .line 4215
    :cond_1
    return-void

    .line 4202
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mHtcScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->abortAnimation()V

    goto :goto_0
.end method

.method flywheelTouch()V
    .locals 4

    .prologue
    .line 4218
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4219
    return-void
.end method

.method public run()V
    .locals 29

    .prologue
    .line 4226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v2, v2, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    packed-switch v2, :pswitch_data_0

    .line 4228
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->endFling()V

    .line 4369
    :cond_0
    :goto_0
    return-void

    .line 4232
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-boolean v2, v2, Lcom/htc/widget/HtcAbsListView;->mHtcScrollerEnabled:Z

    if-nez v2, :cond_4

    .line 4233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4243
    :cond_1
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-boolean v2, v2, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-eqz v2, :cond_2

    .line 4244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAbsListView;->layoutChildren()V

    .line 4247
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v2, v2, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 4248
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->endFling()V

    goto :goto_0

    .line 4237
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mHtcScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v2}, Lcom/htc/widget/HtcScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 4254
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-boolean v2, v2, Lcom/htc/widget/HtcAbsListView;->mHtcScrollerEnabled:Z

    if-nez v2, :cond_9

    .line 4255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v26, v0

    .line 4256
    .local v26, scroller:Landroid/widget/OverScroller;
    invoke-virtual/range {v26 .. v26}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v22

    .line 4257
    .local v22, more:Z
    invoke-virtual/range {v26 .. v26}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v28

    .line 4266
    .end local v26           #scroller:Landroid/widget/OverScroller;
    .local v28, y:I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mLastFlingY:I

    sub-int v19, v2, v28

    .line 4269
    .local v19, delta:I
    if-lez v19, :cond_a

    .line 4271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v3, v3, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iput v3, v2, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    .line 4272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 4273
    .local v20, firstView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v2, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    .line 4276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I
    invoke-static {v3}, Lcom/htc/widget/HtcAbsListView;->access$2200(Lcom/htc/widget/HtcAbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I
    invoke-static {v3}, Lcom/htc/widget/HtcAbsListView;->access$2300(Lcom/htc/widget/HtcAbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 4290
    .end local v20           #firstView:Landroid/view/View;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v3, v3, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v5, v5, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 4291
    .local v23, motionView:Landroid/view/View;
    const/16 v25, 0x0

    .line 4292
    .local v25, oldTop:I
    if-eqz v23, :cond_6

    .line 4293
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v25

    .line 4297
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v2, v2, Lcom/htc/widget/HtcAbsListView;->mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

    if-eqz v2, :cond_7

    .line 4298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v2, v2, Lcom/htc/widget/HtcAbsListView;->mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v19

    invoke-interface {v2, v3, v0, v5, v6}, Landroid/text/method/TextSelectionMovementMethod;->onScrollChanged(IIII)V

    .line 4303
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    move/from16 v0, v19

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/htc/widget/HtcAbsListView;->trackMotionScroll(II)Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz v19, :cond_b

    const/4 v15, 0x1

    .line 4304
    .local v15, atEnd:Z
    :goto_3
    if-eqz v15, :cond_c

    .line 4305
    if-eqz v23, :cond_8

    .line 4307
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, v2, v25

    sub-int v2, v19, v2

    neg-int v4, v2

    .line 4308
    .local v4, overshoot:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mScrollY:I
    invoke-static {v6}, Lcom/htc/widget/HtcAbsListView;->access$2600(Lcom/htc/widget/HtcAbsListView;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v10, v10, Lcom/htc/widget/HtcAbsListView;->mOverflingDistance:I

    const/4 v11, 0x0

    #calls: Lcom/htc/widget/HtcAbsListView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v2 .. v11}, Lcom/htc/widget/HtcAbsListView;->access$2700(Lcom/htc/widget/HtcAbsListView;IIIIIIIIZ)Z

    .line 4311
    .end local v4           #overshoot:I
    :cond_8
    if-eqz v22, :cond_0

    .line 4312
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->edgeReached(I)V

    goto/16 :goto_0

    .line 4259
    .end local v15           #atEnd:Z
    .end local v19           #delta:I
    .end local v22           #more:Z
    .end local v23           #motionView:Landroid/view/View;
    .end local v25           #oldTop:I
    .end local v28           #y:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mHtcScroller:Lcom/htc/widget/HtcScroller;

    move-object/from16 v26, v0

    .line 4260
    .local v26, scroller:Lcom/htc/widget/HtcScroller;
    invoke-virtual/range {v26 .. v26}, Lcom/htc/widget/HtcScroller;->computeScrollOffset()Z

    move-result v22

    .line 4261
    .restart local v22       #more:Z
    invoke-virtual/range {v26 .. v26}, Lcom/htc/widget/HtcScroller;->getCurrY()I

    move-result v28

    .restart local v28       #y:I
    goto/16 :goto_1

    .line 4279
    .end local v26           #scroller:Lcom/htc/widget/HtcScroller;
    .restart local v19       #delta:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v2

    add-int/lit8 v24, v2, -0x1

    .line 4280
    .local v24, offsetToLast:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v3, v3, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int v3, v3, v24

    iput v3, v2, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    .line 4282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 4283
    .local v21, lastView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v2, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    .line 4286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I
    invoke-static {v3}, Lcom/htc/widget/HtcAbsListView;->access$2400(Lcom/htc/widget/HtcAbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I
    invoke-static {v3}, Lcom/htc/widget/HtcAbsListView;->access$2500(Lcom/htc/widget/HtcAbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    neg-int v2, v2

    move/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    goto/16 :goto_2

    .line 4303
    .end local v21           #lastView:Landroid/view/View;
    .end local v24           #offsetToLast:I
    .restart local v23       #motionView:Landroid/view/View;
    .restart local v25       #oldTop:I
    :cond_b
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 4317
    .restart local v15       #atEnd:Z
    :cond_c
    if-eqz v22, :cond_d

    if-nez v15, :cond_d

    .line 4318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 4319
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mLastFlingY:I

    .line 4320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4322
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 4340
    .end local v15           #atEnd:Z
    .end local v19           #delta:I
    .end local v22           #more:Z
    .end local v23           #motionView:Landroid/view/View;
    .end local v25           #oldTop:I
    .end local v28           #y:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v26, v0

    .line 4341
    .local v26, scroller:Landroid/widget/OverScroller;
    invoke-virtual/range {v26 .. v26}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 4342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mScrollY:I
    invoke-static {v2}, Lcom/htc/widget/HtcAbsListView;->access$2800(Lcom/htc/widget/HtcAbsListView;)I

    move-result v9

    .line 4343
    .local v9, scrollY:I
    invoke-virtual/range {v26 .. v26}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v18

    .line 4344
    .local v18, currY:I
    sub-int v7, v18, v9

    .line 4345
    .local v7, deltaY:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v13, v2, Lcom/htc/widget/HtcAbsListView;->mOverflingDistance:I

    const/4 v14, 0x0

    #calls: Lcom/htc/widget/HtcAbsListView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v5 .. v14}, Lcom/htc/widget/HtcAbsListView;->access$2900(Lcom/htc/widget/HtcAbsListView;IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 4347
    if-gtz v9, :cond_10

    if-lez v18, :cond_10

    const/16 v16, 0x1

    .line 4348
    .local v16, crossDown:Z
    :goto_4
    if-ltz v9, :cond_11

    if-gez v18, :cond_11

    const/16 v17, 0x1

    .line 4349
    .local v17, crossUp:Z
    :goto_5
    if-nez v16, :cond_e

    if-eqz v17, :cond_12

    .line 4350
    :cond_e
    invoke-virtual/range {v26 .. v26}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v27, v0

    .line 4351
    .local v27, velocity:I
    if-eqz v17, :cond_f

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    .line 4354
    :cond_f
    invoke-virtual/range {v26 .. v26}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 4355
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_0

    .line 4347
    .end local v16           #crossDown:Z
    .end local v17           #crossUp:Z
    .end local v27           #velocity:I
    :cond_10
    const/16 v16, 0x0

    goto :goto_4

    .line 4348
    .restart local v16       #crossDown:Z
    :cond_11
    const/16 v17, 0x0

    goto :goto_5

    .line 4357
    .restart local v17       #crossUp:Z
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    .line 4360
    .end local v16           #crossDown:Z
    .end local v17           #crossUp:Z
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 4361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4364
    .end local v7           #deltaY:I
    .end local v9           #scrollY:I
    .end local v18           #currY:I
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 4226
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method start(I)V
    .locals 9
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 4115
    if-gez p1, :cond_1

    move v2, v6

    .line 4116
    .local v2, initialY:I
    :goto_0
    iput v2, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mLastFlingY:I

    .line 4117
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mHtcScrollerEnabled:Z

    if-nez v0, :cond_2

    .line 4118
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 4123
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 4124
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4133
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Lcom/htc/widget/HtcAbsListView;->access$1400(Lcom/htc/widget/HtcAbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4134
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    const-string v1, "AbsListView-fling"

    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v1

    #setter for: Lcom/htc/widget/HtcAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0, v1}, Lcom/htc/widget/HtcAbsListView;->access$1402(Lcom/htc/widget/HtcAbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 4136
    :cond_0
    return-void

    .end local v2           #initialY:I
    :cond_1
    move v2, v1

    .line 4115
    goto :goto_0

    .line 4121
    .restart local v2       #initialY:I
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mHtcScroller:Lcom/htc/widget/HtcScroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/htc/widget/HtcScroller;->fling(IIIIIIII)V

    goto :goto_1
.end method

.method startOverfling(I)V
    .locals 11
    .parameter "initialVelocity"

    .prologue
    const/4 v1, 0x0

    .line 4150
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mScrollY:I
    invoke-static {v2}, Lcom/htc/widget/HtcAbsListView;->access$1600(Lcom/htc/widget/HtcAbsListView;)I

    move-result v2

    const/high16 v7, -0x8000

    const v8, 0x7fffffff

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v10

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v9, v1

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 4152
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v1, 0x6

    iput v1, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 4153
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 4154
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4155
    return-void
.end method

.method startScroll(II)V
    .locals 6
    .parameter "distance"
    .parameter "duration"

    .prologue
    const/4 v1, 0x0

    .line 4180
    if-gez p1, :cond_0

    const v2, 0x7fffffff

    .line 4181
    .local v2, initialY:I
    :goto_0
    iput v2, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mLastFlingY:I

    .line 4182
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mHtcScrollerEnabled:Z

    if-nez v0, :cond_1

    .line 4183
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 4187
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 4188
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4189
    return-void

    .end local v2           #initialY:I
    :cond_0
    move v2, v1

    .line 4180
    goto :goto_0

    .line 4185
    .restart local v2       #initialY:I
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mHtcScroller:Lcom/htc/widget/HtcScroller;

    move v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcScroller;->startScroll(IIIII)V

    goto :goto_1
.end method

.method startSpringback()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 4139
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mScrollY:I
    invoke-static {v2}, Lcom/htc/widget/HtcAbsListView;->access$1500(Lcom/htc/widget/HtcAbsListView;)I

    move-result v2

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4140
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v1, 0x6

    iput v1, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 4141
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 4142
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4147
    :goto_0
    return-void

    .line 4144
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v2, -0x1

    iput v2, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 4145
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    goto :goto_0
.end method
