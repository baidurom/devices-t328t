.class Lcom/htc/widget/HtcListView$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HtcListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcListView;->startDelDropAnimation()V
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
    .line 5224
    iput-object p1, p0, Lcom/htc/widget/HtcListView$8;->this$0:Lcom/htc/widget/HtcListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 5227
    iget-object v0, p0, Lcom/htc/widget/HtcListView$8;->this$0:Lcom/htc/widget/HtcListView;

    iput-boolean v1, v0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    .line 5228
    iget-object v0, p0, Lcom/htc/widget/HtcListView$8;->this$0:Lcom/htc/widget/HtcListView;

    iput-boolean v1, v0, Lcom/htc/widget/HtcListView;->mInDeleteAnimation:Z

    .line 5230
    iget-object v0, p0, Lcom/htc/widget/HtcListView$8;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDeleteMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 5231
    iget-object v0, p0, Lcom/htc/widget/HtcListView$8;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDeleteMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 5233
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListView$8;->this$0:Lcom/htc/widget/HtcListView;

    #getter for: Lcom/htc/widget/HtcListView;->mDelPosList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/HtcListView;->access$2000(Lcom/htc/widget/HtcListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5234
    iget-object v0, p0, Lcom/htc/widget/HtcListView$8;->this$0:Lcom/htc/widget/HtcListView;

    #getter for: Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/HtcListView;->access$2100(Lcom/htc/widget/HtcListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5235
    iget-object v0, p0, Lcom/htc/widget/HtcListView$8;->this$0:Lcom/htc/widget/HtcListView;

    #getter for: Lcom/htc/widget/HtcListView;->mDelViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/HtcListView;->access$1900(Lcom/htc/widget/HtcListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5236
    iget-object v0, p0, Lcom/htc/widget/HtcListView$8;->this$0:Lcom/htc/widget/HtcListView;

    #getter for: Lcom/htc/widget/HtcListView;->mNowViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/HtcListView;->access$2300(Lcom/htc/widget/HtcListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5238
    iget-object v0, p0, Lcom/htc/widget/HtcListView$8;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mDeleteAnimationListener:Lcom/htc/widget/HtcAbsListView$DeleteAnimationListener;

    if-eqz v0, :cond_1

    .line 5239
    iget-object v0, p0, Lcom/htc/widget/HtcListView$8;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mDeleteAnimationListener:Lcom/htc/widget/HtcAbsListView$DeleteAnimationListener;

    invoke-interface {v0}, Lcom/htc/widget/HtcAbsListView$DeleteAnimationListener;->onAnimationEnd()V

    .line 5241
    :cond_1
    return-void
.end method
