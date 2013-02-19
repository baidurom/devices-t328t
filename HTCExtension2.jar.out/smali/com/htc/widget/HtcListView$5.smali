.class Lcom/htc/widget/HtcListView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HtcListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcListView;->startAddShowAnimation()V
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
    .line 4912
    iput-object p1, p0, Lcom/htc/widget/HtcListView$5;->this$0:Lcom/htc/widget/HtcListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 4915
    iget-object v0, p0, Lcom/htc/widget/HtcListView$5;->this$0:Lcom/htc/widget/HtcListView;

    iput-boolean v1, v0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    .line 4916
    iget-object v0, p0, Lcom/htc/widget/HtcListView$5;->this$0:Lcom/htc/widget/HtcListView;

    iput-boolean v1, v0, Lcom/htc/widget/HtcListView;->mInAddAnimation:Z

    .line 4918
    iget-object v0, p0, Lcom/htc/widget/HtcListView$5;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mAddMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 4919
    iget-object v0, p0, Lcom/htc/widget/HtcListView$5;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mAddMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 4921
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListView$5;->this$0:Lcom/htc/widget/HtcListView;

    #getter for: Lcom/htc/widget/HtcListView;->mAddedItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/HtcListView;->access$1400(Lcom/htc/widget/HtcListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4922
    iget-object v0, p0, Lcom/htc/widget/HtcListView$5;->this$0:Lcom/htc/widget/HtcListView;

    #getter for: Lcom/htc/widget/HtcListView;->mAddOriViewTopList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/HtcListView;->access$1500(Lcom/htc/widget/HtcListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4923
    iget-object v0, p0, Lcom/htc/widget/HtcListView$5;->this$0:Lcom/htc/widget/HtcListView;

    #getter for: Lcom/htc/widget/HtcListView;->mAddedViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/HtcListView;->access$1600(Lcom/htc/widget/HtcListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4924
    iget-object v0, p0, Lcom/htc/widget/HtcListView$5;->this$0:Lcom/htc/widget/HtcListView;

    #getter for: Lcom/htc/widget/HtcListView;->mAddOtherViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/HtcListView;->access$1700(Lcom/htc/widget/HtcListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4926
    iget-object v0, p0, Lcom/htc/widget/HtcListView$5;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAddAnimationListener:Lcom/htc/widget/HtcAbsListView$AddAnimationListener;

    if-eqz v0, :cond_1

    .line 4927
    iget-object v0, p0, Lcom/htc/widget/HtcListView$5;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAddAnimationListener:Lcom/htc/widget/HtcAbsListView$AddAnimationListener;

    invoke-interface {v0}, Lcom/htc/widget/HtcAbsListView$AddAnimationListener;->onAnimationEnd()V

    .line 4929
    :cond_1
    return-void
.end method
