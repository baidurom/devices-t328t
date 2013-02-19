.class final Lcom/htc/widget/HtcListView$CheckForPressAnimation;
.super Ljava/lang/Object;
.source "HtcListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForPressAnimation"
.end annotation


# instance fields
.field mAnimatedView:Landroid/view/View;

.field final synthetic this$0:Lcom/htc/widget/HtcListView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcListView;)V
    .locals 0
    .parameter

    .prologue
    .line 4215
    iput-object p1, p0, Lcom/htc/widget/HtcListView$CheckForPressAnimation;->this$0:Lcom/htc/widget/HtcListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4222
    iget-object v2, p0, Lcom/htc/widget/HtcListView$CheckForPressAnimation;->mAnimatedView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 4243
    :goto_0
    return-void

    .line 4223
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcListView$CheckForPressAnimation;->this$0:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->isInTouchMode()Z

    move-result v0

    .line 4224
    .local v0, inTouchMode:Z
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/htc/widget/HtcListView$CheckForPressAnimation;->this$0:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->isInBouncing()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/htc/widget/HtcListView$CheckForPressAnimation;->this$0:Lcom/htc/widget/HtcListView;

    iget v2, v2, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/htc/widget/HtcListView$CheckForPressAnimation;->this$0:Lcom/htc/widget/HtcListView;

    iget v2, v2, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/HtcListView$CheckForPressAnimation;->this$0:Lcom/htc/widget/HtcListView;

    iget v2, v2, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/htc/widget/HtcListView$CheckForPressAnimation;->this$0:Lcom/htc/widget/HtcListView;

    iget v2, v2, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 4226
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/HtcListView$CheckForPressAnimation;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v2, v2, Lcom/htc/widget/HtcListView;->mPressedViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/widget/HtcListView$CheckForPressAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4227
    iget-object v2, p0, Lcom/htc/widget/HtcListView$CheckForPressAnimation;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/widget/HtcListView$CheckForPressAnimation;->mAnimatedView:Landroid/view/View;

    #calls: Lcom/htc/widget/HtcListView;->get2DPressAnimation(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    invoke-static {v2, v3}, Lcom/htc/widget/HtcListView;->access$600(Lcom/htc/widget/HtcListView;Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 4228
    .local v1, pressAnim:Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/htc/widget/HtcListView$CheckForPressAnimation;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v2, v2, Lcom/htc/widget/HtcListView;->mPressAnimators:Ljava/util/Map;

    iget-object v3, p0, Lcom/htc/widget/HtcListView$CheckForPressAnimation;->mAnimatedView:Landroid/view/View;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4229
    iget-object v2, p0, Lcom/htc/widget/HtcListView$CheckForPressAnimation;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v2, v2, Lcom/htc/widget/HtcListView;->mPressAnimators:Ljava/util/Map;

    iget-object v3, p0, Lcom/htc/widget/HtcListView$CheckForPressAnimation;->mAnimatedView:Landroid/view/View;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4231
    :cond_2
    new-instance v2, Lcom/htc/widget/HtcListView$CheckForPressAnimation$1;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcListView$CheckForPressAnimation$1;-><init>(Lcom/htc/widget/HtcListView$CheckForPressAnimation;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4238
    iget-object v2, p0, Lcom/htc/widget/HtcListView$CheckForPressAnimation;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v2, v2, Lcom/htc/widget/HtcListView;->mPressMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v2, :cond_3

    .line 4239
    iget-object v2, p0, Lcom/htc/widget/HtcListView$CheckForPressAnimation;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v2, v2, Lcom/htc/widget/HtcListView;->mPressMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v2}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 4240
    :cond_3
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 4242
    .end local v1           #pressAnim:Landroid/animation/ObjectAnimator;
    :cond_4
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/widget/HtcListView$CheckForPressAnimation;->mAnimatedView:Landroid/view/View;

    goto :goto_0
.end method

.method public setAnimatedView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 4219
    iput-object p1, p0, Lcom/htc/widget/HtcListView$CheckForPressAnimation;->mAnimatedView:Landroid/view/View;

    .line 4220
    return-void
.end method
