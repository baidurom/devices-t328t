.class Lcom/htc/widget/ActionBarDropDownSearch$1;
.super Ljava/lang/Object;
.source "ActionBarDropDownSearch.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/ActionBarDropDownSearch;->setActionBarSearchEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/ActionBarDropDownSearch;


# direct methods
.method constructor <init>(Lcom/htc/widget/ActionBarDropDownSearch;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/htc/widget/ActionBarDropDownSearch$1;->this$0:Lcom/htc/widget/ActionBarDropDownSearch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animator"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch$1;->this$0:Lcom/htc/widget/ActionBarDropDownSearch;

    #getter for: Lcom/htc/widget/ActionBarDropDownSearch;->transitionAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/htc/widget/ActionBarDropDownSearch;->access$300(Lcom/htc/widget/ActionBarDropDownSearch;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch$1;->this$0:Lcom/htc/widget/ActionBarDropDownSearch;

    #calls: Lcom/htc/widget/ActionBarDropDownSearch;->cleanTransitionAnimator()V
    invoke-static {v0}, Lcom/htc/widget/ActionBarDropDownSearch;->access$400(Lcom/htc/widget/ActionBarDropDownSearch;)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch$1;->this$0:Lcom/htc/widget/ActionBarDropDownSearch;

    #getter for: Lcom/htc/widget/ActionBarDropDownSearch;->frameMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/widget/ActionBarDropDownSearch;->access$200(Lcom/htc/widget/ActionBarDropDownSearch;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch$1;->this$0:Lcom/htc/widget/ActionBarDropDownSearch;

    #getter for: Lcom/htc/widget/ActionBarDropDownSearch;->frameMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/widget/ActionBarDropDownSearch;->access$200(Lcom/htc/widget/ActionBarDropDownSearch;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 204
    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animator"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch$1;->this$0:Lcom/htc/widget/ActionBarDropDownSearch;

    #getter for: Lcom/htc/widget/ActionBarDropDownSearch;->transitionAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/htc/widget/ActionBarDropDownSearch;->access$300(Lcom/htc/widget/ActionBarDropDownSearch;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch$1;->this$0:Lcom/htc/widget/ActionBarDropDownSearch;

    #calls: Lcom/htc/widget/ActionBarDropDownSearch;->cleanTransitionAnimator()V
    invoke-static {v0}, Lcom/htc/widget/ActionBarDropDownSearch;->access$400(Lcom/htc/widget/ActionBarDropDownSearch;)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch$1;->this$0:Lcom/htc/widget/ActionBarDropDownSearch;

    #getter for: Lcom/htc/widget/ActionBarDropDownSearch;->frameMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/widget/ActionBarDropDownSearch;->access$200(Lcom/htc/widget/ActionBarDropDownSearch;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch$1;->this$0:Lcom/htc/widget/ActionBarDropDownSearch;

    #getter for: Lcom/htc/widget/ActionBarDropDownSearch;->frameMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/widget/ActionBarDropDownSearch;->access$200(Lcom/htc/widget/ActionBarDropDownSearch;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 195
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animator"

    .prologue
    .line 176
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animator"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch$1;->this$0:Lcom/htc/widget/ActionBarDropDownSearch;

    #getter for: Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;
    invoke-static {v0}, Lcom/htc/widget/ActionBarDropDownSearch;->access$000(Lcom/htc/widget/ActionBarDropDownSearch;)Lcom/htc/widget/ActionBarSearch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarSearch;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch$1;->this$0:Lcom/htc/widget/ActionBarDropDownSearch;

    #calls: Lcom/htc/widget/ActionBarDropDownSearch;->updateEnvironment()V
    invoke-static {v0}, Lcom/htc/widget/ActionBarDropDownSearch;->access$100(Lcom/htc/widget/ActionBarDropDownSearch;)V

    .line 184
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch$1;->this$0:Lcom/htc/widget/ActionBarDropDownSearch;

    #getter for: Lcom/htc/widget/ActionBarDropDownSearch;->frameMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/widget/ActionBarDropDownSearch;->access$200(Lcom/htc/widget/ActionBarDropDownSearch;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch$1;->this$0:Lcom/htc/widget/ActionBarDropDownSearch;

    #getter for: Lcom/htc/widget/ActionBarDropDownSearch;->frameMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/widget/ActionBarDropDownSearch;->access$200(Lcom/htc/widget/ActionBarDropDownSearch;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 186
    :cond_0
    return-void
.end method
