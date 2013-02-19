.class Lcom/htc/widget/HtcListView$2;
.super Ljava/lang/Object;
.source "HtcListView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
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
    .line 4056
    iput-object p1, p0, Lcom/htc/widget/HtcListView$2;->this$0:Lcom/htc/widget/HtcListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 4059
    iget-object v0, p0, Lcom/htc/widget/HtcListView$2;->this$0:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->doAnimFinalize()V

    .line 4060
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 4064
    iget-object v0, p0, Lcom/htc/widget/HtcListView$2;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mBouncingMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 4065
    iget-object v0, p0, Lcom/htc/widget/HtcListView$2;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mBouncingMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 4066
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListView$2;->this$0:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->doAnimFinalize()V

    .line 4067
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 4071
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 4075
    iget-object v0, p0, Lcom/htc/widget/HtcListView$2;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mBouncingMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 4076
    iget-object v0, p0, Lcom/htc/widget/HtcListView$2;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mBouncingMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 4077
    :cond_0
    return-void
.end method
