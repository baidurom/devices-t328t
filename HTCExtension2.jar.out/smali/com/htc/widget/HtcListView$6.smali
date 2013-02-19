.class Lcom/htc/widget/HtcListView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HtcListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcListView;->startAddDropAnimation()V
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
    .line 4975
    iput-object p1, p0, Lcom/htc/widget/HtcListView$6;->this$0:Lcom/htc/widget/HtcListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 4978
    iget-object v0, p0, Lcom/htc/widget/HtcListView$6;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mAddMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 4979
    iget-object v0, p0, Lcom/htc/widget/HtcListView$6;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mAddMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 4980
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListView$6;->this$0:Lcom/htc/widget/HtcListView;

    #calls: Lcom/htc/widget/HtcListView;->startAddShowAnimation()V
    invoke-static {v0}, Lcom/htc/widget/HtcListView;->access$1800(Lcom/htc/widget/HtcListView;)V

    .line 4981
    return-void
.end method
