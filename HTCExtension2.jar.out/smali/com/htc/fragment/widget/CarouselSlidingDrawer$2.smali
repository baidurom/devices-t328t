.class Lcom/htc/fragment/widget/CarouselSlidingDrawer$2;
.super Ljava/lang/Object;
.source "CarouselSlidingDrawer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fragment/widget/CarouselSlidingDrawer;->closeDrawer()V
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
    .line 357
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer$2;->this$0:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "anim"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer$2;->this$0:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer$2;->this$0:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    #getter for: Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mCloseAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->access$000(Lcom/htc/fragment/widget/CarouselSlidingDrawer;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer$2;->this$0:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    #getter for: Lcom/htc/fragment/widget/CarouselSlidingDrawer;->mCloseAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->access$000(Lcom/htc/fragment/widget/CarouselSlidingDrawer;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 368
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 359
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 358
    return-void
.end method
