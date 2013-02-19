.class Landroid/widget/ListView$5;
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


# direct methods
.method constructor <init>(Landroid/widget/ListView;)V
    .locals 0
    .parameter

    .prologue
    .line 4710
    iput-object p1, p0, Landroid/widget/ListView$5;->this$0:Landroid/widget/ListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 4717
    iget-object v0, p0, Landroid/widget/ListView$5;->this$0:Landroid/widget/ListView;

    iget-object v0, v0, Landroid/widget/ListView;->mReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 4718
    iget-object v0, p0, Landroid/widget/ListView$5;->this$0:Landroid/widget/ListView;

    iget-object v0, v0, Landroid/widget/ListView;->mReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 4719
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 4712
    iget-object v0, p0, Landroid/widget/ListView$5;->this$0:Landroid/widget/ListView;

    iget-object v0, v0, Landroid/widget/ListView;->mReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 4713
    iget-object v0, p0, Landroid/widget/ListView$5;->this$0:Landroid/widget/ListView;

    iget-object v0, v0, Landroid/widget/ListView;->mReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 4714
    :cond_0
    return-void
.end method
