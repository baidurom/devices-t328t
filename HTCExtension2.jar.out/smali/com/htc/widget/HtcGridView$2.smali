.class Lcom/htc/widget/HtcGridView$2;
.super Ljava/lang/Object;
.source "HtcGridView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcGridView;->StartAddAnimation()V
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
    .line 2408
    iput-object p1, p0, Lcom/htc/widget/HtcGridView$2;->this$0:Lcom/htc/widget/HtcGridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 2447
    const-string v0, "AddAnimation"

    const-string v1, "onAnimationCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 2427
    const-string v0, "AddAnimation"

    const-string v1, "onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$2;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mAddAnimateViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/HtcGridView;->access$300(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2429
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$2;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/HtcGridView;->access$400(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2430
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$2;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/HtcGridView;->access$500(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2431
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$2;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mNowViewTopList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/HtcGridView;->access$600(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2432
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$2;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mNowViewLeftList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/HtcGridView;->access$700(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2433
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$2;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mAppearAnimateViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/HtcGridView;->access$800(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2434
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$2;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mAddList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/HtcGridView;->access$900(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2436
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$2;->this$0:Lcom/htc/widget/HtcGridView;

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAddAnimationListener:Lcom/htc/widget/HtcAbsListView$AddAnimationListener;

    if-eqz v0, :cond_0

    .line 2437
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$2;->this$0:Lcom/htc/widget/HtcGridView;

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAddAnimationListener:Lcom/htc/widget/HtcAbsListView$AddAnimationListener;

    invoke-interface {v0}, Lcom/htc/widget/HtcAbsListView$AddAnimationListener;->onAnimationEnd()V

    .line 2440
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$2;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mHtcGridViewAddMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/widget/HtcGridView;->access$200(Lcom/htc/widget/HtcGridView;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2441
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$2;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mHtcGridViewAddMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/widget/HtcGridView;->access$200(Lcom/htc/widget/HtcGridView;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 2442
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 2421
    const-string v0, "AddAnimation"

    const-string v1, "onAnimationRepeat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 2412
    const-string v0, "AddAnimation"

    const-string v1, "onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2414
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$2;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mHtcGridViewAddMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/widget/HtcGridView;->access$200(Lcom/htc/widget/HtcGridView;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2415
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$2;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mHtcGridViewAddMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/widget/HtcGridView;->access$200(Lcom/htc/widget/HtcGridView;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 2416
    :cond_0
    return-void
.end method
