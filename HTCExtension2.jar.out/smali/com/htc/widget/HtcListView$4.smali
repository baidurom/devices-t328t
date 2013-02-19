.class Lcom/htc/widget/HtcListView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HtcListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcListView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcListView;)V
    .locals 0
    .parameter

    .prologue
    .line 4556
    iput-object p1, p0, Lcom/htc/widget/HtcListView$4;->this$0:Lcom/htc/widget/HtcListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .parameter "animation"

    .prologue
    const/high16 v4, 0x3f80

    .line 4570
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/HtcListView$4;->this$0:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4571
    iget-object v3, p0, Lcom/htc/widget/HtcListView$4;->this$0:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4572
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 4573
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setY(F)V

    .line 4574
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setRotationX(F)V

    .line 4570
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4576
    .end local v1           #child:Landroid/view/View;
    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/htc/widget/HtcListView$4;->this$0:Lcom/htc/widget/HtcListView;

    #getter for: Lcom/htc/widget/HtcListView;->mIntroAnimatedViews:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/widget/HtcListView;->access$1300(Lcom/htc/widget/HtcListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 4577
    iget-object v3, p0, Lcom/htc/widget/HtcListView$4;->this$0:Lcom/htc/widget/HtcListView;

    #getter for: Lcom/htc/widget/HtcListView;->mIntroAnimatedViews:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/widget/HtcListView;->access$1300(Lcom/htc/widget/HtcListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 4578
    .local v0, animatedView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v3

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleY(F)V

    .line 4576
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4580
    .end local v0           #animatedView:Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/htc/widget/HtcListView$4;->this$0:Lcom/htc/widget/HtcListView;

    #getter for: Lcom/htc/widget/HtcListView;->mIntroAnimatedViews:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/widget/HtcListView;->access$1300(Lcom/htc/widget/HtcListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 4581
    iget-object v3, p0, Lcom/htc/widget/HtcListView$4;->this$0:Lcom/htc/widget/HtcListView;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    .line 4582
    iget-object v3, p0, Lcom/htc/widget/HtcListView$4;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v3, v3, Lcom/htc/widget/HtcListView;->mIntroMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v3, :cond_3

    .line 4583
    iget-object v3, p0, Lcom/htc/widget/HtcListView$4;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v3, v3, Lcom/htc/widget/HtcListView;->mIntroMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v3}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 4584
    :cond_3
    iget-object v3, p0, Lcom/htc/widget/HtcListView$4;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v3, v3, Lcom/htc/widget/HtcAbsListView;->mIntroAnimationListener:Lcom/htc/widget/HtcAbsListView$IntroAnimationListener;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/widget/HtcListView$4;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v3, v3, Lcom/htc/widget/HtcAbsListView;->mIntroAnimationListener:Lcom/htc/widget/HtcAbsListView$IntroAnimationListener;

    invoke-interface {v3}, Lcom/htc/widget/HtcAbsListView$IntroAnimationListener;->onAnimationEnd()V

    .line 4585
    :cond_4
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 4559
    iget-object v0, p0, Lcom/htc/widget/HtcListView$4;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mIntroMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 4560
    iget-object v0, p0, Lcom/htc/widget/HtcListView$4;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mIntroMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 4561
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListView$4;->this$0:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/widget/HtcListView;->shouldHideIntroAnimatedViews:Z

    .line 4562
    iget-object v0, p0, Lcom/htc/widget/HtcListView$4;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mIntroAnimationListener:Lcom/htc/widget/HtcAbsListView$IntroAnimationListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcListView$4;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mIntroAnimationListener:Lcom/htc/widget/HtcAbsListView$IntroAnimationListener;

    invoke-interface {v0}, Lcom/htc/widget/HtcAbsListView$IntroAnimationListener;->onAnimationStart()V

    .line 4563
    :cond_1
    return-void
.end method
