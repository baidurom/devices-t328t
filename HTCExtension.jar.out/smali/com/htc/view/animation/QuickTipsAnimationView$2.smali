.class Lcom/htc/view/animation/QuickTipsAnimationView$2;
.super Ljava/lang/Object;
.source "QuickTipsAnimationView.java"

# interfaces
.implements Lcom/htc/view/animation/QuickTipsAnimation$TipsCurlAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/view/animation/QuickTipsAnimationView;->surfaceCreated(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/view/animation/QuickTipsAnimationView;


# direct methods
.method constructor <init>(Lcom/htc/view/animation/QuickTipsAnimationView;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/htc/view/animation/QuickTipsAnimationView$2;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTipsAnimationEnd()V
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView$2;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    const/4 v1, 0x0

    #setter for: Lcom/htc/view/animation/QuickTipsAnimationView;->translucentPageVisible:Z
    invoke-static {v0, v1}, Lcom/htc/view/animation/QuickTipsAnimationView;->access$802(Lcom/htc/view/animation/QuickTipsAnimationView;Z)Z

    .line 273
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView$2;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    #getter for: Lcom/htc/view/animation/QuickTipsAnimationView;->handler:Lcom/htc/view/animation/QuickTipsAnimationView$ViewStateHandler;
    invoke-static {v0}, Lcom/htc/view/animation/QuickTipsAnimationView;->access$1000(Lcom/htc/view/animation/QuickTipsAnimationView;)Lcom/htc/view/animation/QuickTipsAnimationView$ViewStateHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView$2;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    #getter for: Lcom/htc/view/animation/QuickTipsAnimationView;->handler:Lcom/htc/view/animation/QuickTipsAnimationView$ViewStateHandler;
    invoke-static {v0}, Lcom/htc/view/animation/QuickTipsAnimationView;->access$1000(Lcom/htc/view/animation/QuickTipsAnimationView;)Lcom/htc/view/animation/QuickTipsAnimationView$ViewStateHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/view/animation/QuickTipsAnimationView$ViewStateHandler;->sendEmptyMessage(I)Z

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView$2;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    #getter for: Lcom/htc/view/animation/QuickTipsAnimationView;->mQuickTipsAniEndMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/view/animation/QuickTipsAnimationView;->access$1100(Lcom/htc/view/animation/QuickTipsAnimationView;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView$2;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    #getter for: Lcom/htc/view/animation/QuickTipsAnimationView;->mQuickTipsAniEndMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/view/animation/QuickTipsAnimationView;->access$1100(Lcom/htc/view/animation/QuickTipsAnimationView;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 278
    :cond_1
    const-string v0, "QuickTipsAnimation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    const-string v0, "QuickTipsAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": PageTurnOut-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/htc/view/animation/QuickTipsAnimation$TipsCurlAnimationListener;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-onAnimationEnd()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_2
    return-void
.end method

.method public onTipsAnimationStart()V
    .locals 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView$2;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    const/4 v1, 0x1

    #setter for: Lcom/htc/view/animation/QuickTipsAnimationView;->translucentPageVisible:Z
    invoke-static {v0, v1}, Lcom/htc/view/animation/QuickTipsAnimationView;->access$802(Lcom/htc/view/animation/QuickTipsAnimationView;Z)Z

    .line 263
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView$2;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    #getter for: Lcom/htc/view/animation/QuickTipsAnimationView;->mQuickTipsAniEndMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/view/animation/QuickTipsAnimationView;->access$1100(Lcom/htc/view/animation/QuickTipsAnimationView;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView$2;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    #getter for: Lcom/htc/view/animation/QuickTipsAnimationView;->mQuickTipsAniEndMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/view/animation/QuickTipsAnimationView;->access$1100(Lcom/htc/view/animation/QuickTipsAnimationView;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 266
    :cond_0
    const-string v0, "QuickTipsAnimation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    const-string v0, "QuickTipsAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": PageTurnOut-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/htc/view/animation/QuickTipsAnimation$TipsCurlAnimationListener;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-onAnimationStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_1
    return-void
.end method
