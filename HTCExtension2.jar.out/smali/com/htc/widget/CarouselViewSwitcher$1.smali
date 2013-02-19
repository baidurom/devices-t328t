.class Lcom/htc/widget/CarouselViewSwitcher$1;
.super Ljava/lang/Object;
.source "CarouselViewSwitcher.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/CarouselViewSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/CarouselViewSwitcher;


# direct methods
.method constructor <init>(Lcom/htc/widget/CarouselViewSwitcher;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/htc/widget/CarouselViewSwitcher$1;->this$0:Lcom/htc/widget/CarouselViewSwitcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 165
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 164
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/widget/CarouselViewSwitcher$1;->this$0:Lcom/htc/widget/CarouselViewSwitcher;

    #getter for: Lcom/htc/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/widget/CarouselViewSwitcher;->access$000(Lcom/htc/widget/CarouselViewSwitcher;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselViewSwitcher$1;->this$0:Lcom/htc/widget/CarouselViewSwitcher;

    #getter for: Lcom/htc/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/widget/CarouselViewSwitcher;->access$000(Lcom/htc/widget/CarouselViewSwitcher;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/widget/CarouselWidget;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/htc/widget/CarouselViewSwitcher$1;->this$0:Lcom/htc/widget/CarouselViewSwitcher;

    #getter for: Lcom/htc/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/widget/CarouselViewSwitcher;->access$000(Lcom/htc/widget/CarouselViewSwitcher;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/CarouselWidget;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/widget/CarouselWidget;->skipAnimationEnd:Z

    .line 172
    :cond_0
    return-void
.end method
