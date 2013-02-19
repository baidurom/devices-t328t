.class Lcom/htc/widget/HtcGridView$8;
.super Ljava/lang/Object;
.source "HtcGridView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcGridView;->startPressAnimationPartTwo(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private targetPosition:I

.field final synthetic this$0:Lcom/htc/widget/HtcGridView;

.field final synthetic val$animItem:I

.field final synthetic val$flag:Z


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcGridView;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3636
    iput-object p1, p0, Lcom/htc/widget/HtcGridView$8;->this$0:Lcom/htc/widget/HtcGridView;

    iput-boolean p2, p0, Lcom/htc/widget/HtcGridView$8;->val$flag:Z

    iput p3, p0, Lcom/htc/widget/HtcGridView$8;->val$animItem:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 3640
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 3644
    iget-object v1, p0, Lcom/htc/widget/HtcGridView$8;->this$0:Lcom/htc/widget/HtcGridView;

    iget-object v1, v1, Lcom/htc/widget/HtcGridView;->mAdapterCheckListener:Lcom/htc/widget/HtcGridView$AdapterCheckListener;

    if-eqz v1, :cond_0

    .line 3645
    check-cast p1, Landroid/animation/ObjectAnimator;

    .end local p1
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3646
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3648
    iget-boolean v1, p0, Lcom/htc/widget/HtcGridView$8;->val$flag:Z

    if-eqz v1, :cond_2

    .line 3649
    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 3668
    .end local v0           #view:Landroid/view/View;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/widget/HtcGridView$8;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mHtcGridViewReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v1}, Lcom/htc/widget/HtcGridView;->access$2500(Lcom/htc/widget/HtcGridView;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3669
    iget-object v1, p0, Lcom/htc/widget/HtcGridView$8;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mHtcGridViewReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v1}, Lcom/htc/widget/HtcGridView;->access$2500(Lcom/htc/widget/HtcGridView;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 3672
    :cond_1
    return-void

    .line 3652
    .restart local v0       #view:Landroid/view/View;
    :cond_2
    const v1, 0x3ecccccd

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 3675
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 3678
    iget v0, p0, Lcom/htc/widget/HtcGridView$8;->val$animItem:I

    iput v0, p0, Lcom/htc/widget/HtcGridView$8;->targetPosition:I

    .line 3681
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$8;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mHtcGridViewReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/widget/HtcGridView;->access$2500(Lcom/htc/widget/HtcGridView;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3682
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$8;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mHtcGridViewReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/widget/HtcGridView;->access$2500(Lcom/htc/widget/HtcGridView;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 3683
    :cond_0
    return-void
.end method
