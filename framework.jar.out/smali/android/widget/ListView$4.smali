.class Landroid/widget/ListView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ListView;->releaseItem(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ListView;

.field final synthetic val$animator:Landroid/animation/Animator;


# direct methods
.method constructor <init>(Landroid/widget/ListView;Landroid/animation/Animator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4689
    iput-object p1, p0, Landroid/widget/ListView$4;->this$0:Landroid/widget/ListView;

    iput-object p2, p0, Landroid/widget/ListView$4;->val$animator:Landroid/animation/Animator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 4699
    iget-object v0, p0, Landroid/widget/ListView$4;->this$0:Landroid/widget/ListView;

    iget-object v0, v0, Landroid/widget/ListView;->mReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 4700
    iget-object v0, p0, Landroid/widget/ListView$4;->this$0:Landroid/widget/ListView;

    iget-object v0, v0, Landroid/widget/ListView;->mReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 4701
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 4691
    iget-object v0, p0, Landroid/widget/ListView$4;->val$animator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListView$4;->val$animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4692
    iget-object v0, p0, Landroid/widget/ListView$4;->val$animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 4694
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView$4;->this$0:Landroid/widget/ListView;

    iget-object v0, v0, Landroid/widget/ListView;->mReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_1

    .line 4695
    iget-object v0, p0, Landroid/widget/ListView$4;->this$0:Landroid/widget/ListView;

    iget-object v0, v0, Landroid/widget/ListView;->mReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 4696
    :cond_1
    return-void
.end method
