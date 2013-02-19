.class Lcom/htc/widget/CarouselSlidingDrawer$2;
.super Ljava/lang/Object;
.source "CarouselSlidingDrawer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/CarouselSlidingDrawer;->closeDrawer()V
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
    .line 317
    iput-object p1, p0, Lcom/htc/widget/CarouselSlidingDrawer$2;->this$0:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "anim"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer$2;->this$0:Lcom/htc/widget/CarouselSlidingDrawer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselSlidingDrawer;->setVisibility(I)V

    .line 323
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 319
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 318
    return-void
.end method
