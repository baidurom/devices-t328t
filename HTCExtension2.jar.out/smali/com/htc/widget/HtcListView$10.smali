.class Lcom/htc/widget/HtcListView$10;
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


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcListView;)V
    .locals 0
    .parameter

    .prologue
    .line 5631
    iput-object p1, p0, Lcom/htc/widget/HtcListView$10;->this$0:Lcom/htc/widget/HtcListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 5638
    iget-object v0, p0, Lcom/htc/widget/HtcListView$10;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 5639
    iget-object v0, p0, Lcom/htc/widget/HtcListView$10;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 5640
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 5633
    iget-object v0, p0, Lcom/htc/widget/HtcListView$10;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 5634
    iget-object v0, p0, Lcom/htc/widget/HtcListView$10;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 5635
    :cond_0
    return-void
.end method
