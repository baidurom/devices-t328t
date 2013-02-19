.class Lcom/htc/fragment/widget/CarouselSlidingDrawer$3;
.super Ljava/lang/Object;
.source "CarouselSlidingDrawer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fragment/widget/CarouselSlidingDrawer;->openDrawer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fragment/widget/CarouselSlidingDrawer;


# direct methods
.method constructor <init>(Lcom/htc/fragment/widget/CarouselSlidingDrawer;)V
    .locals 0
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer$3;->this$0:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "anim"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer$3;->this$0:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    #getter for: Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mOnEditModeDrawerStateListener:Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->access$200(Lcom/htc/fragment/widget/CarouselSlidingDrawer;)Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer$3;->this$0:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    #getter for: Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mOnEditModeDrawerStateListener:Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->access$200(Lcom/htc/fragment/widget/CarouselSlidingDrawer;)Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;->onDrawerAboutToOpen()V

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer$3;->this$0:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    #getter for: Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mOpneAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->access$300(Lcom/htc/fragment/widget/CarouselSlidingDrawer;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer$3;->this$0:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    #getter for: Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mOpneAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->access$300(Lcom/htc/fragment/widget/CarouselSlidingDrawer;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 448
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 436
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "anim"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer$3;->this$0:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->setVisibility(I)V

    .line 431
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer$3;->this$0:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    #getter for: Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mOnDrawerOpenListener:Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnDrawerOpenListener;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->access$100(Lcom/htc/fragment/widget/CarouselSlidingDrawer;)Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnDrawerOpenListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer$3;->this$0:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    #getter for: Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mOnDrawerOpenListener:Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnDrawerOpenListener;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->access$100(Lcom/htc/fragment/widget/CarouselSlidingDrawer;)Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnDrawerOpenListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnDrawerOpenListener;->onDrawerOpened()V

    .line 433
    :cond_0
    return-void
.end method
