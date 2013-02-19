.class Lcom/htc/widget/ActionBarExt$2;
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
    .line 368
    iput-object p1, p0, Lcom/htc/widget/ActionBarExt$2;->this$0:Lcom/htc/widget/ActionBarExt;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt$2;->this$0:Lcom/htc/widget/ActionBarExt;

    #getter for: Lcom/htc/widget/ActionBarExt;->frameMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/widget/ActionBarExt;->access$100(Lcom/htc/widget/ActionBarExt;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt$2;->this$0:Lcom/htc/widget/ActionBarExt;

    #getter for: Lcom/htc/widget/ActionBarExt;->frameMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/widget/ActionBarExt;->access$100(Lcom/htc/widget/ActionBarExt;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 386
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 380
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt$2;->this$0:Lcom/htc/widget/ActionBarExt;

    #getter for: Lcom/htc/widget/ActionBarExt;->animationInView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/widget/ActionBarExt;->access$200(Lcom/htc/widget/ActionBarExt;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt$2;->this$0:Lcom/htc/widget/ActionBarExt;

    #getter for: Lcom/htc/widget/ActionBarExt;->animationInView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/widget/ActionBarExt;->access$200(Lcom/htc/widget/ActionBarExt;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt$2;->this$0:Lcom/htc/widget/ActionBarExt;

    #getter for: Lcom/htc/widget/ActionBarExt;->frameMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/widget/ActionBarExt;->access$100(Lcom/htc/widget/ActionBarExt;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt$2;->this$0:Lcom/htc/widget/ActionBarExt;

    #getter for: Lcom/htc/widget/ActionBarExt;->frameMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/widget/ActionBarExt;->access$100(Lcom/htc/widget/ActionBarExt;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 376
    :cond_1
    return-void
.end method
