.class Lcom/htc/widget/ActionBarExt$1;
.super Ljava/lang/Object;
.source "ActionBarExt.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/ActionBarExt;->setupAnimationEnv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/ActionBarExt;


# direct methods
.method constructor <init>(Lcom/htc/widget/ActionBarExt;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/htc/widget/ActionBarExt$1;->this$0:Lcom/htc/widget/ActionBarExt;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt$1;->this$0:Lcom/htc/widget/ActionBarExt;

    #getter for: Lcom/htc/widget/ActionBarExt;->animationOutView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/widget/ActionBarExt;->access$000(Lcom/htc/widget/ActionBarExt;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt$1;->this$0:Lcom/htc/widget/ActionBarExt;

    #getter for: Lcom/htc/widget/ActionBarExt;->animationOutView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/widget/ActionBarExt;->access$000(Lcom/htc/widget/ActionBarExt;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt$1;->this$0:Lcom/htc/widget/ActionBarExt;

    #getter for: Lcom/htc/widget/ActionBarExt;->frameMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/widget/ActionBarExt;->access$100(Lcom/htc/widget/ActionBarExt;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt$1;->this$0:Lcom/htc/widget/ActionBarExt;

    #getter for: Lcom/htc/widget/ActionBarExt;->frameMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/widget/ActionBarExt;->access$100(Lcom/htc/widget/ActionBarExt;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 348
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 339
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt$1;->this$0:Lcom/htc/widget/ActionBarExt;

    #getter for: Lcom/htc/widget/ActionBarExt;->animationOutView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/widget/ActionBarExt;->access$000(Lcom/htc/widget/ActionBarExt;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt$1;->this$0:Lcom/htc/widget/ActionBarExt;

    #getter for: Lcom/htc/widget/ActionBarExt;->animationOutView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/widget/ActionBarExt;->access$000(Lcom/htc/widget/ActionBarExt;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt$1;->this$0:Lcom/htc/widget/ActionBarExt;

    #getter for: Lcom/htc/widget/ActionBarExt;->frameMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/widget/ActionBarExt;->access$100(Lcom/htc/widget/ActionBarExt;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt$1;->this$0:Lcom/htc/widget/ActionBarExt;

    #getter for: Lcom/htc/widget/ActionBarExt;->frameMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/widget/ActionBarExt;->access$100(Lcom/htc/widget/ActionBarExt;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 335
    :cond_1
    return-void
.end method
