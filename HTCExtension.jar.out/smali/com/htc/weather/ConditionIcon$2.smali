.class Lcom/htc/weather/ConditionIcon$2;
.super Ljava/lang/Object;
.source "ConditionIcon.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/weather/ConditionIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/weather/ConditionIcon;


# direct methods
.method constructor <init>(Lcom/htc/weather/ConditionIcon;)V
    .locals 0
    .parameter

    .prologue
    .line 688
    iput-object p1, p0, Lcom/htc/weather/ConditionIcon$2;->this$0:Lcom/htc/weather/ConditionIcon;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 692
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$2;->this$0:Lcom/htc/weather/ConditionIcon;

    invoke-static {v0}, Lcom/htc/weather/ConditionIcon;->access$808(Lcom/htc/weather/ConditionIcon;)I

    .line 693
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$2;->this$0:Lcom/htc/weather/ConditionIcon;

    #getter for: Lcom/htc/weather/ConditionIcon;->mOutAnimationEnd:I
    invoke-static {v0}, Lcom/htc/weather/ConditionIcon;->access$800(Lcom/htc/weather/ConditionIcon;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon$2;->this$0:Lcom/htc/weather/ConditionIcon;

    #getter for: Lcom/htc/weather/ConditionIcon;->mOutAnimationCount:I
    invoke-static {v1}, Lcom/htc/weather/ConditionIcon;->access$900(Lcom/htc/weather/ConditionIcon;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 700
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$2;->this$0:Lcom/htc/weather/ConditionIcon;

    #getter for: Lcom/htc/weather/ConditionIcon;->mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v0}, Lcom/htc/weather/ConditionIcon;->access$1000(Lcom/htc/weather/ConditionIcon;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$2;->this$0:Lcom/htc/weather/ConditionIcon;

    #getter for: Lcom/htc/weather/ConditionIcon;->mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v0}, Lcom/htc/weather/ConditionIcon;->access$1000(Lcom/htc/weather/ConditionIcon;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 704
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 707
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$2;->this$0:Lcom/htc/weather/ConditionIcon;

    #getter for: Lcom/htc/weather/ConditionIcon;->mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v0}, Lcom/htc/weather/ConditionIcon;->access$1000(Lcom/htc/weather/ConditionIcon;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$2;->this$0:Lcom/htc/weather/ConditionIcon;

    #getter for: Lcom/htc/weather/ConditionIcon;->mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v0}, Lcom/htc/weather/ConditionIcon;->access$1000(Lcom/htc/weather/ConditionIcon;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    .line 710
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 713
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$2;->this$0:Lcom/htc/weather/ConditionIcon;

    #getter for: Lcom/htc/weather/ConditionIcon;->mOutAnimationStart:I
    invoke-static {v0}, Lcom/htc/weather/ConditionIcon;->access$1100(Lcom/htc/weather/ConditionIcon;)I

    move-result v0

    if-nez v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$2;->this$0:Lcom/htc/weather/ConditionIcon;

    #getter for: Lcom/htc/weather/ConditionIcon;->mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v0}, Lcom/htc/weather/ConditionIcon;->access$1000(Lcom/htc/weather/ConditionIcon;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$2;->this$0:Lcom/htc/weather/ConditionIcon;

    #getter for: Lcom/htc/weather/ConditionIcon;->mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v0}, Lcom/htc/weather/ConditionIcon;->access$1000(Lcom/htc/weather/ConditionIcon;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$2;->this$0:Lcom/htc/weather/ConditionIcon;

    invoke-static {v0}, Lcom/htc/weather/ConditionIcon;->access$1108(Lcom/htc/weather/ConditionIcon;)I

    .line 725
    return-void
.end method
