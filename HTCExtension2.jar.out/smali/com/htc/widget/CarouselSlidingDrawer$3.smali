.class Lcom/htc/widget/CarouselSlidingDrawer$3;
.super Ljava/lang/Object;
.source "CarouselSlidingDrawer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/CarouselSlidingDrawer;->openDrawer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/CarouselSlidingDrawer;


# direct methods
.method constructor <init>(Lcom/htc/widget/CarouselSlidingDrawer;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/htc/widget/CarouselSlidingDrawer$3;->this$0:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "anim"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer$3;->this$0:Lcom/htc/widget/CarouselSlidingDrawer;

    #getter for: Lcom/htc/widget/CarouselSlidingDrawer;->mOnEditModeDrawerStateListener:Lcom/htc/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;
    invoke-static {v0}, Lcom/htc/widget/CarouselSlidingDrawer;->access$100(Lcom/htc/widget/CarouselSlidingDrawer;)Lcom/htc/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer$3;->this$0:Lcom/htc/widget/CarouselSlidingDrawer;

    #getter for: Lcom/htc/widget/CarouselSlidingDrawer;->mOnEditModeDrawerStateListener:Lcom/htc/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;
    invoke-static {v0}, Lcom/htc/widget/CarouselSlidingDrawer;->access$100(Lcom/htc/widget/CarouselSlidingDrawer;)Lcom/htc/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;->onDrawerAboutToOpen()V

    .line 385
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 378
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "anim"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer$3;->this$0:Lcom/htc/widget/CarouselSlidingDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselSlidingDrawer;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer$3;->this$0:Lcom/htc/widget/CarouselSlidingDrawer;

    #getter for: Lcom/htc/widget/CarouselSlidingDrawer;->mOnDrawerOpenListener:Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerOpenListener;
    invoke-static {v0}, Lcom/htc/widget/CarouselSlidingDrawer;->access$000(Lcom/htc/widget/CarouselSlidingDrawer;)Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerOpenListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer$3;->this$0:Lcom/htc/widget/CarouselSlidingDrawer;

    #getter for: Lcom/htc/widget/CarouselSlidingDrawer;->mOnDrawerOpenListener:Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerOpenListener;
    invoke-static {v0}, Lcom/htc/widget/CarouselSlidingDrawer;->access$000(Lcom/htc/widget/CarouselSlidingDrawer;)Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerOpenListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerOpenListener;->onDrawerOpened()V

    .line 375
    :cond_0
    return-void
.end method
