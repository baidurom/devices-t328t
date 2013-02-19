.class Lcom/htc/widget/HtcListView$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HtcListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcListView;->releaseItem(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcListView;

.field final synthetic val$animator:Landroid/animation/Animator;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcListView;Landroid/animation/Animator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5610
    iput-object p1, p0, Lcom/htc/widget/HtcListView$9;->this$0:Lcom/htc/widget/HtcListView;

    iput-object p2, p0, Lcom/htc/widget/HtcListView$9;->val$animator:Landroid/animation/Animator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 5620
    iget-object v0, p0, Lcom/htc/widget/HtcListView$9;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 5621
    iget-object v0, p0, Lcom/htc/widget/HtcListView$9;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 5622
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 5612
    iget-object v0, p0, Lcom/htc/widget/HtcListView$9;->val$animator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListView$9;->val$animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5613
    iget-object v0, p0, Lcom/htc/widget/HtcListView$9;->val$animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 5615
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListView$9;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_1

    .line 5616
    iget-object v0, p0, Lcom/htc/widget/HtcListView$9;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 5617
    :cond_1
    return-void
.end method
