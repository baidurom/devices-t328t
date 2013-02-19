.class public Lcom/htc/widget/HtcAbsListView2$FlingRunnable;
.super Ljava/lang/Object;
.source "HtcAbsListView2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAbsListView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FlingRunnable"
.end annotation


# instance fields
.field protected mLastFlingX:I

.field protected mLastFlingY:I

.field protected mScroller:Lcom/htc/widget/HtcScroller;

.field final synthetic this$0:Lcom/htc/widget/HtcAbsListView2;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HtcAbsListView2;)V
    .locals 2
    .parameter

    .prologue
    .line 3009
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3010
    new-instance v0, Lcom/htc/widget/HtcScroller;

    invoke-virtual {p1}, Lcom/htc/widget/HtcAbsListView2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    .line 3011
    return-void
.end method


# virtual methods
.method protected endFling()V
    .locals 2

    .prologue
    .line 3050
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    const/4 v1, -0x1

    iput v1, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 3051
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->reportScrollStateChange(I)V

    .line 3052
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView2;->clearScrollingCache()V

    .line 3053
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    .line 3060
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget v9, v9, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_0

    .line 3169
    :goto_0
    return-void

    .line 3064
    :cond_0
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget v9, v9, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v9

    if-nez v9, :cond_2

    .line 3065
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->endFling()V

    goto :goto_0

    .line 3069
    :cond_2
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    .line 3070
    .local v6, scroller:Lcom/htc/widget/HtcScroller;
    invoke-virtual {v6}, Lcom/htc/widget/HtcScroller;->computeScrollOffset()Z

    move-result v3

    .line 3071
    .local v3, more:Z
    invoke-virtual {v6}, Lcom/htc/widget/HtcScroller;->getCurrY()I

    move-result v8

    .line 3074
    .local v8, y:I
    invoke-virtual {v6}, Lcom/htc/widget/HtcScroller;->getCurrX()I

    move-result v7

    .line 3082
    .local v7, x:I
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3083
    iget v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mLastFlingX:I

    sub-int v0, v9, v7

    .line 3090
    .local v0, delta:I
    :goto_1
    if-lez v0, :cond_6

    .line 3092
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget v10, v10, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    iput v10, v9, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    .line 3093
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3096
    .local v1, firstView:Landroid/view/View;
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3097
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    iput v10, v9, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalLeft:I

    .line 3100
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    #getter for: Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I
    invoke-static {v10}, Lcom/htc/widget/HtcAbsListView2;->access$700(Lcom/htc/widget/HtcAbsListView2;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    #getter for: Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I
    invoke-static {v10}, Lcom/htc/widget/HtcAbsListView2;->access$800(Lcom/htc/widget/HtcAbsListView2;)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3130
    .end local v1           #firstView:Landroid/view/View;
    :goto_2
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v9, v0, v0}, Lcom/htc/widget/HtcAbsListView2;->trackMotionScroll(II)V

    .line 3133
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget v10, v10, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    iget-object v11, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget v11, v11, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    sub-int/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3134
    .local v4, motionView:Landroid/view/View;
    if-eqz v4, :cond_3

    .line 3139
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 3140
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget v10, v10, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewLeft:I

    if-eq v9, v10, :cond_3

    .line 3141
    const/4 v3, 0x0

    .line 3151
    :cond_3
    :goto_3
    if-eqz v3, :cond_a

    .line 3153
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 3154
    iput v7, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mLastFlingX:I

    .line 3159
    :goto_4
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v9, p0}, Lcom/htc/widget/HtcAbsListView2;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3085
    .end local v0           #delta:I
    .end local v4           #motionView:Landroid/view/View;
    :cond_4
    iget v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mLastFlingY:I

    sub-int v0, v9, v8

    .restart local v0       #delta:I
    goto :goto_1

    .line 3102
    .restart local v1       #firstView:Landroid/view/View;
    :cond_5
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, v9, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalTop:I

    .line 3105
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    #getter for: Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I
    invoke-static {v10}, Lcom/htc/widget/HtcAbsListView2;->access$900(Lcom/htc/widget/HtcAbsListView2;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    #getter for: Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I
    invoke-static {v10}, Lcom/htc/widget/HtcAbsListView2;->access$1000(Lcom/htc/widget/HtcAbsListView2;)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    .line 3110
    .end local v1           #firstView:Landroid/view/View;
    :cond_6
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .line 3111
    .local v5, offsetToLast:I
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget v10, v10, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/2addr v10, v5

    iput v10, v9, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    .line 3113
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v9, v5}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3116
    .local v2, lastView:Landroid/view/View;
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 3117
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v10

    iput v10, v9, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalLeft:I

    .line 3120
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    #getter for: Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I
    invoke-static {v10}, Lcom/htc/widget/HtcAbsListView2;->access$1100(Lcom/htc/widget/HtcAbsListView2;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    #getter for: Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I
    invoke-static {v10}, Lcom/htc/widget/HtcAbsListView2;->access$1200(Lcom/htc/widget/HtcAbsListView2;)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto/16 :goto_2

    .line 3122
    :cond_7
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, v9, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalTop:I

    .line 3125
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    #getter for: Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I
    invoke-static {v10}, Lcom/htc/widget/HtcAbsListView2;->access$1300(Lcom/htc/widget/HtcAbsListView2;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    #getter for: Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I
    invoke-static {v10}, Lcom/htc/widget/HtcAbsListView2;->access$1400(Lcom/htc/widget/HtcAbsListView2;)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto/16 :goto_2

    .line 3144
    .end local v2           #lastView:Landroid/view/View;
    .end local v5           #offsetToLast:I
    .restart local v4       #motionView:Landroid/view/View;
    :cond_8
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget v10, v10, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewTop:I

    if-eq v9, v10, :cond_3

    .line 3145
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 3156
    :cond_9
    iput v8, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mLastFlingY:I

    goto/16 :goto_4

    .line 3161
    :cond_a
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->endFling()V

    goto/16 :goto_0
.end method

.method public start(I)V
    .locals 11
    .parameter "initialVelocity"

    .prologue
    .line 3022
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3023
    if-gez p1, :cond_0

    const v1, 0x7fffffff

    .line 3024
    .local v1, initialX:I
    :goto_0
    iput v1, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mLastFlingX:I

    .line 3025
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7fffffff

    const/4 v7, 0x0

    const v8, 0x7fffffff

    move v3, p1

    invoke-virtual/range {v0 .. v8}, Lcom/htc/widget/HtcScroller;->fling(IIIIIIII)V

    .line 3034
    .end local v1           #initialX:I
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    const/4 v2, 0x4

    iput v2, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 3035
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAbsListView2;->post(Ljava/lang/Runnable;)Z

    .line 3043
    return-void

    .line 3023
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3028
    :cond_1
    if-gez p1, :cond_2

    const v4, 0x7fffffff

    .line 3029
    .local v4, initialY:I
    :goto_2
    iput v4, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mLastFlingY:I

    .line 3030
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const v8, 0x7fffffff

    const/4 v9, 0x0

    const v10, 0x7fffffff

    move v6, p1

    invoke-virtual/range {v2 .. v10}, Lcom/htc/widget/HtcScroller;->fling(IIIIIIII)V

    goto :goto_1

    .line 3028
    .end local v4           #initialY:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method
