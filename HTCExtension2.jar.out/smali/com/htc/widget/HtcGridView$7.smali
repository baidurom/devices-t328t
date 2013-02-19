.class Lcom/htc/widget/HtcGridView$7;
.super Ljava/lang/Object;
.source "HtcGridView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcGridView;->startPressAnimationPartOne(Landroid/view/View;)V
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
    .line 3565
    iput-object p1, p0, Lcom/htc/widget/HtcGridView$7;->this$0:Lcom/htc/widget/HtcGridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 3569
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 3574
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$7;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mHtcGridViewPressMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/widget/HtcGridView;->access$2400(Lcom/htc/widget/HtcGridView;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3575
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$7;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mHtcGridViewPressMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/widget/HtcGridView;->access$2400(Lcom/htc/widget/HtcGridView;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 3577
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 3581
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 3586
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$7;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mHtcGridViewPressMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/widget/HtcGridView;->access$2400(Lcom/htc/widget/HtcGridView;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3587
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$7;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mHtcGridViewPressMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/widget/HtcGridView;->access$2400(Lcom/htc/widget/HtcGridView;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 3588
    :cond_0
    return-void
.end method
