.class Lcom/htc/widget/ActionBarDropDownSearch$2;
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
    .line 223
    iput-object p1, p0, Lcom/htc/widget/ActionBarDropDownSearch$2;->this$0:Lcom/htc/widget/ActionBarDropDownSearch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animator"

    .prologue
    const/16 v1, 0x8

    .line 251
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch$2;->this$0:Lcom/htc/widget/ActionBarDropDownSearch;

    #getter for: Lcom/htc/widget/ActionBarDropDownSearch;->frameMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/widget/ActionBarDropDownSearch;->access$200(Lcom/htc/widget/ActionBarDropDownSearch;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch$2;->this$0:Lcom/htc/widget/ActionBarDropDownSearch;

    #getter for: Lcom/htc/widget/ActionBarDropDownSearch;->frameMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/widget/ActionBarDropDownSearch;->access$200(Lcom/htc/widget/ActionBarDropDownSearch;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch$2;->this$0:Lcom/htc/widget/ActionBarDropDownSearch;

    #getter for: Lcom/htc/widget/ActionBarDropDownSearch;->transitionAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/htc/widget/ActionBarDropDownSearch;->access$300(Lcom/htc/widget/ActionBarDropDownSearch;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch$2;->this$0:Lcom/htc/widget/ActionBarDropDownSearch;

    #calls: Lcom/htc/widget/ActionBarDropDownSearch;->cleanTransitionAnimator()V
    invoke-static {v0}, Lcom/htc/widget/ActionBarDropDownSearch;->access$400(Lcom/htc/widget/ActionBarDropDownSearch;)V

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch$2;->this$0:Lcom/htc/widget/ActionBarDropDownSearch;

    #getter for: Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;
    invoke-static {v0}, Lcom/htc/widget/ActionBarDropDownSearch;->access$000(Lcom/htc/widget/ActionBarDropDownSearch;)Lcom/htc/widget/ActionBarSearch;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarSearch;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch$2;->this$0:Lcom/htc/widget/ActionBarDropDownSearch;

    #calls: Lcom/htc/widget/ActionBarDropDownSearch;->updateEnvironment()V
    invoke-static {v0}, Lcom/htc/widget/ActionBarDropDownSearch;->access$100(Lcom/htc/widget/ActionBarDropDownSearch;)V

    .line 262
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch$2;->this$0:Lcom/htc/widget/ActionBarDropDownSearch;

    #getter for: Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/widget/ActionBarDropDownSearch;->access$500(Lcom/htc/widget/ActionBarDropDownSearch;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch$2;->this$0:Lcom/htc/widget/ActionBarDropDownSearch;

    #getter for: Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/widget/ActionBarDropDownSearch;->access$500(Lcom/htc/widget/ActionBarDropDownSearch;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 263
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch$2;->this$0:Lcom/htc/widget/ActionBarDropDownSearch;

    #getter for: Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/widget/ActionBarDropDownSearch;->access$500(Lcom/htc/widget/ActionBarDropDownSearch;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDownSearch$2;->this$0:Lcom/htc/widget/ActionBarDropDownSearch;

    #getter for: Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/htc/widget/ActionBarDropDownSearch;->access$500(Lcom/htc/widget/ActionBarDropDownSearch;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :cond_2
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animator"

    .prologue
    const/16 v1, 0x8

    .line 234
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch$2;->this$0:Lcom/htc/widget/ActionBarDropDownSearch;

    #getter for: Lcom/htc/widget/ActionBarDropDownSearch;->frameMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/widget/ActionBarDropDownSearch;->access$200(Lcom/htc/widget/ActionBarDropDownSearch;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch$2;->this$0:Lcom/htc/widget/ActionBarDropDownSearch;

    #getter for: Lcom/htc/widget/ActionBarDropDownSearch;->frameMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/widget/ActionBarDropDownSearch;->access$200(Lcom/htc/widget/ActionBarDropDownSearch;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch$2;->this$0:Lcom/htc/widget/ActionBarDropDownSearch;

    #getter for: Lcom/htc/widget/ActionBarDropDownSearch;->transitionAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/htc/widget/ActionBarDropDownSearch;->access$300(Lcom/htc/widget/ActionBarDropDownSearch;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch$2;->this$0:Lcom/htc/widget/ActionBarDropDownSearch;

    #calls: Lcom/htc/widget/ActionBarDropDownSearch;->cleanTransitionAnimator()V
    invoke-static {v0}, Lcom/htc/widget/ActionBarDropDownSearch;->access$400(Lcom/htc/widget/ActionBarDropDownSearch;)V

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch$2;->this$0:Lcom/htc/widget/ActionBarDropDownSearch;

    #getter for: Lcom/htc/widget/ActionBarDropDownSearch;->actionSearch:Lcom/htc/widget/ActionBarSearch;
    invoke-static {v0}, Lcom/htc/widget/ActionBarDropDownSearch;->access$000(Lcom/htc/widget/ActionBarDropDownSearch;)Lcom/htc/widget/ActionBarSearch;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarSearch;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch$2;->this$0:Lcom/htc/widget/ActionBarDropDownSearch;

    #calls: Lcom/htc/widget/ActionBarDropDownSearch;->updateEnvironment()V
    invoke-static {v0}, Lcom/htc/widget/ActionBarDropDownSearch;->access$100(Lcom/htc/widget/ActionBarDropDownSearch;)V

    .line 245
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch$2;->this$0:Lcom/htc/widget/ActionBarDropDownSearch;

    #getter for: Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/widget/ActionBarDropDownSearch;->access$500(Lcom/htc/widget/ActionBarDropDownSearch;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch$2;->this$0:Lcom/htc/widget/ActionBarDropDownSearch;

    #getter for: Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/widget/ActionBarDropDownSearch;->access$500(Lcom/htc/widget/ActionBarDropDownSearch;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 246
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch$2;->this$0:Lcom/htc/widget/ActionBarDropDownSearch;

    #getter for: Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/widget/ActionBarDropDownSearch;->access$500(Lcom/htc/widget/ActionBarDropDownSearch;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDownSearch$2;->this$0:Lcom/htc/widget/ActionBarDropDownSearch;

    #getter for: Lcom/htc/widget/ActionBarDropDownSearch;->counterView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/htc/widget/ActionBarDropDownSearch;->access$500(Lcom/htc/widget/ActionBarDropDownSearch;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    :cond_2
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animator"

    .prologue
    .line 224
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animator"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch$2;->this$0:Lcom/htc/widget/ActionBarDropDownSearch;

    #getter for: Lcom/htc/widget/ActionBarDropDownSearch;->frameMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/widget/ActionBarDropDownSearch;->access$200(Lcom/htc/widget/ActionBarDropDownSearch;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDownSearch$2;->this$0:Lcom/htc/widget/ActionBarDropDownSearch;

    #getter for: Lcom/htc/widget/ActionBarDropDownSearch;->frameMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/widget/ActionBarDropDownSearch;->access$200(Lcom/htc/widget/ActionBarDropDownSearch;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 230
    :cond_0
    return-void
.end method
