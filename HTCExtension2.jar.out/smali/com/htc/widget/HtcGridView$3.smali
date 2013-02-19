.class Lcom/htc/widget/HtcGridView$3;
.super Ljava/lang/Object;
.source "HtcGridView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcGridView;->StartDisappearAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcGridView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcGridView;)V
    .locals 0
    .parameter

    .prologue
    .line 2586
    iput-object p1, p0, Lcom/htc/widget/HtcGridView$3;->this$0:Lcom/htc/widget/HtcGridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 2589
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$3;->this$0:Lcom/htc/widget/HtcGridView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    .line 2590
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .parameter "animation"

    .prologue
    const/high16 v5, 0x3f80

    .line 2593
    iget-object v3, p0, Lcom/htc/widget/HtcGridView$3;->this$0:Lcom/htc/widget/HtcGridView;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    .line 2594
    iget-object v3, p0, Lcom/htc/widget/HtcGridView$3;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mDisappearView:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/widget/HtcGridView;->access$1000(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2595
    .local v2, size:I
    iget-object v3, p0, Lcom/htc/widget/HtcGridView$3;->this$0:Lcom/htc/widget/HtcGridView;

    const/4 v4, 0x1

    #setter for: Lcom/htc/widget/HtcGridView;->mDeleteflag:Z
    invoke-static {v3, v4}, Lcom/htc/widget/HtcGridView;->access$1102(Lcom/htc/widget/HtcGridView;Z)Z

    .line 2596
    const/4 v0, 0x0

    .line 2597
    .local v0, child:Landroid/view/View;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2598
    iget-object v3, p0, Lcom/htc/widget/HtcGridView$3;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mDisappearView:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/widget/HtcGridView;->access$1000(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #child:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 2599
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleX(F)V

    .line 2600
    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleY(F)V

    .line 2601
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 2597
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2603
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/HtcGridView$3;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mDisappearView:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/widget/HtcGridView;->access$1000(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2604
    iget-object v3, p0, Lcom/htc/widget/HtcGridView$3;->this$0:Lcom/htc/widget/HtcGridView;

    iget-object v3, v3, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 2605
    iget-object v3, p0, Lcom/htc/widget/HtcGridView$3;->this$0:Lcom/htc/widget/HtcGridView;

    iget-object v3, v3, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2608
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcGridView$3;->this$0:Lcom/htc/widget/HtcGridView;

    iget-object v3, v3, Lcom/htc/widget/HtcAbsListView;->mDeleteAnimationListener:Lcom/htc/widget/HtcAbsListView$DeleteAnimationListener;

    if-eqz v3, :cond_2

    .line 2609
    iget-object v3, p0, Lcom/htc/widget/HtcGridView$3;->this$0:Lcom/htc/widget/HtcGridView;

    iget-object v3, v3, Lcom/htc/widget/HtcAbsListView;->mDeleteAnimationListener:Lcom/htc/widget/HtcAbsListView$DeleteAnimationListener;

    invoke-interface {v3}, Lcom/htc/widget/HtcAbsListView$DeleteAnimationListener;->onAnimationEnd()V

    .line 2612
    :cond_2
    iget-object v3, p0, Lcom/htc/widget/HtcGridView$3;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mHtcGridViewDeleteMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v3}, Lcom/htc/widget/HtcGridView;->access$1200(Lcom/htc/widget/HtcGridView;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2613
    iget-object v3, p0, Lcom/htc/widget/HtcGridView$3;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mHtcGridViewDeleteMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v3}, Lcom/htc/widget/HtcGridView;->access$1200(Lcom/htc/widget/HtcGridView;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 2614
    :cond_3
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 2619
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 2623
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$3;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mHtcGridViewDeleteMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/widget/HtcGridView;->access$1200(Lcom/htc/widget/HtcGridView;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2624
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$3;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mHtcGridViewDeleteMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/widget/HtcGridView;->access$1200(Lcom/htc/widget/HtcGridView;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 2625
    :cond_0
    return-void
.end method
