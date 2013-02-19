.class Lcom/htc/fragment/widget/CarouselViewSwitcher$1;
.super Ljava/lang/Object;
.source "CarouselViewSwitcher.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/CarouselViewSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fragment/widget/CarouselViewSwitcher;


# direct methods
.method constructor <init>(Lcom/htc/fragment/widget/CarouselViewSwitcher;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher$1;->this$0:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 168
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 167
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher$1;->this$0:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    #getter for: Lcom/htc/fragment/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->access$000(Lcom/htc/fragment/widget/CarouselViewSwitcher;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher$1;->this$0:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    #getter for: Lcom/htc/fragment/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->access$000(Lcom/htc/fragment/widget/CarouselViewSwitcher;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher$1;->this$0:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    #getter for: Lcom/htc/fragment/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->access$000(Lcom/htc/fragment/widget/CarouselViewSwitcher;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselWidget;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/fragment/widget/CarouselWidget;->skipAnimationEnd:Z

    .line 175
    :cond_0
    return-void
.end method
