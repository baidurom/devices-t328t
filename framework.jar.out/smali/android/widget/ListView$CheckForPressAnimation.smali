.class final Landroid/widget/ListView$CheckForPressAnimation;
.super Ljava/lang/Object;
.source "ListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForPressAnimation"
.end annotation


# instance fields
.field mAnimatedView:Landroid/view/View;

.field final synthetic this$0:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Landroid/widget/ListView;)V
    .locals 0
    .parameter

    .prologue
    .line 4101
    iput-object p1, p0, Landroid/widget/ListView$CheckForPressAnimation;->this$0:Landroid/widget/ListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4108
    iget-object v2, p0, Landroid/widget/ListView$CheckForPressAnimation;->mAnimatedView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 4127
    :cond_0
    :goto_0
    return-void

    .line 4109
    :cond_1
    iget-object v2, p0, Landroid/widget/ListView$CheckForPressAnimation;->this$0:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    .line 4110
    .local v0, inTouchMode:Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/widget/ListView$CheckForPressAnimation;->this$0:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->isInBouncing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/ListView$CheckForPressAnimation;->this$0:Landroid/widget/ListView;

    iget v2, v2, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Landroid/widget/ListView$CheckForPressAnimation;->this$0:Landroid/widget/ListView;

    iget v2, v2, Landroid/widget/AbsListView;->mTouchMode:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/ListView$CheckForPressAnimation;->this$0:Landroid/widget/ListView;

    iget v2, v2, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Landroid/widget/ListView$CheckForPressAnimation;->this$0:Landroid/widget/ListView;

    iget v2, v2, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 4111
    :cond_2
    iget-object v2, p0, Landroid/widget/ListView$CheckForPressAnimation;->this$0:Landroid/widget/ListView;

    iget-object v2, v2, Landroid/widget/ListView;->mPressedViews:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/ListView$CheckForPressAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4112
    iget-object v2, p0, Landroid/widget/ListView$CheckForPressAnimation;->this$0:Landroid/widget/ListView;

    iget-object v3, p0, Landroid/widget/ListView$CheckForPressAnimation;->mAnimatedView:Landroid/view/View;

    #calls: Landroid/widget/ListView;->get2DPressAnimation(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    invoke-static {v2, v3}, Landroid/widget/ListView;->access$300(Landroid/widget/ListView;Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 4113
    .local v1, pressAnim:Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Landroid/widget/ListView$CheckForPressAnimation;->this$0:Landroid/widget/ListView;

    iget-object v2, v2, Landroid/widget/ListView;->mPressAnimators:Ljava/util/Map;

    iget-object v3, p0, Landroid/widget/ListView$CheckForPressAnimation;->mAnimatedView:Landroid/view/View;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4114
    iget-object v2, p0, Landroid/widget/ListView$CheckForPressAnimation;->this$0:Landroid/widget/ListView;

    iget-object v2, v2, Landroid/widget/ListView;->mPressAnimators:Ljava/util/Map;

    iget-object v3, p0, Landroid/widget/ListView$CheckForPressAnimation;->mAnimatedView:Landroid/view/View;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4116
    :cond_3
    new-instance v2, Landroid/widget/ListView$CheckForPressAnimation$1;

    invoke-direct {v2, p0}, Landroid/widget/ListView$CheckForPressAnimation$1;-><init>(Landroid/widget/ListView$CheckForPressAnimation;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4123
    iget-object v2, p0, Landroid/widget/ListView$CheckForPressAnimation;->this$0:Landroid/widget/ListView;

    iget-object v2, v2, Landroid/widget/ListView;->mPressMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v2, :cond_4

    .line 4124
    iget-object v2, p0, Landroid/widget/ListView$CheckForPressAnimation;->this$0:Landroid/widget/ListView;

    iget-object v2, v2, Landroid/widget/ListView;->mPressMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v2}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 4125
    :cond_4
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public setAnimatedView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 4105
    iput-object p1, p0, Landroid/widget/ListView$CheckForPressAnimation;->mAnimatedView:Landroid/view/View;

    .line 4106
    return-void
.end method
