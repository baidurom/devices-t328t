.class Lcom/htc/weather/ConditionIcon$1;
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
    .line 650
    iput-object p1, p0, Lcom/htc/weather/ConditionIcon$1;->this$0:Lcom/htc/weather/ConditionIcon;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 655
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$1;->this$0:Lcom/htc/weather/ConditionIcon;

    invoke-static {v0}, Lcom/htc/weather/ConditionIcon;->access$008(Lcom/htc/weather/ConditionIcon;)I

    .line 656
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$1;->this$0:Lcom/htc/weather/ConditionIcon;

    #getter for: Lcom/htc/weather/ConditionIcon;->mInAnimationEnd:I
    invoke-static {v0}, Lcom/htc/weather/ConditionIcon;->access$000(Lcom/htc/weather/ConditionIcon;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon$1;->this$0:Lcom/htc/weather/ConditionIcon;

    #getter for: Lcom/htc/weather/ConditionIcon;->mInAnimationCount:I
    invoke-static {v1}, Lcom/htc/weather/ConditionIcon;->access$100(Lcom/htc/weather/ConditionIcon;)I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 657
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$1;->this$0:Lcom/htc/weather/ConditionIcon;

    #getter for: Lcom/htc/weather/ConditionIcon;->bCountFPS:Z
    invoke-static {v0}, Lcom/htc/weather/ConditionIcon;->access$200(Lcom/htc/weather/ConditionIcon;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$1;->this$0:Lcom/htc/weather/ConditionIcon;

    #calls: Lcom/htc/weather/ConditionIcon;->endCountFPS()V
    invoke-static {v0}, Lcom/htc/weather/ConditionIcon;->access$300(Lcom/htc/weather/ConditionIcon;)V

    .line 659
    const-string v0, "ConditionIcon"

    const-string v1, "...end count FPS - InAnimation..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$1;->this$0:Lcom/htc/weather/ConditionIcon;

    #getter for: Lcom/htc/weather/ConditionIcon;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v0}, Lcom/htc/weather/ConditionIcon;->access$400(Lcom/htc/weather/ConditionIcon;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 663
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$1;->this$0:Lcom/htc/weather/ConditionIcon;

    #getter for: Lcom/htc/weather/ConditionIcon;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v0}, Lcom/htc/weather/ConditionIcon;->access$400(Lcom/htc/weather/ConditionIcon;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 666
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$1;->this$0:Lcom/htc/weather/ConditionIcon;

    #getter for: Lcom/htc/weather/ConditionIcon;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v0}, Lcom/htc/weather/ConditionIcon;->access$400(Lcom/htc/weather/ConditionIcon;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$1;->this$0:Lcom/htc/weather/ConditionIcon;

    #getter for: Lcom/htc/weather/ConditionIcon;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v0}, Lcom/htc/weather/ConditionIcon;->access$400(Lcom/htc/weather/ConditionIcon;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    .line 672
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 675
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$1;->this$0:Lcom/htc/weather/ConditionIcon;

    #getter for: Lcom/htc/weather/ConditionIcon;->mInAnimationStart:I
    invoke-static {v0}, Lcom/htc/weather/ConditionIcon;->access$500(Lcom/htc/weather/ConditionIcon;)I

    move-result v0

    if-nez v0, :cond_1

    .line 676
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$1;->this$0:Lcom/htc/weather/ConditionIcon;

    #getter for: Lcom/htc/weather/ConditionIcon;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v0}, Lcom/htc/weather/ConditionIcon;->access$400(Lcom/htc/weather/ConditionIcon;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$1;->this$0:Lcom/htc/weather/ConditionIcon;

    #getter for: Lcom/htc/weather/ConditionIcon;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v0}, Lcom/htc/weather/ConditionIcon;->access$400(Lcom/htc/weather/ConditionIcon;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$1;->this$0:Lcom/htc/weather/ConditionIcon;

    #getter for: Lcom/htc/weather/ConditionIcon;->bNeedFPS:Z
    invoke-static {v0}, Lcom/htc/weather/ConditionIcon;->access$600(Lcom/htc/weather/ConditionIcon;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 680
    const-string v0, "ConditionIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...start to count FPS - In...total="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/weather/ConditionIcon$1;->this$0:Lcom/htc/weather/ConditionIcon;

    #getter for: Lcom/htc/weather/ConditionIcon;->mInAnimationCount:I
    invoke-static {v2}, Lcom/htc/weather/ConditionIcon;->access$100(Lcom/htc/weather/ConditionIcon;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$1;->this$0:Lcom/htc/weather/ConditionIcon;

    #calls: Lcom/htc/weather/ConditionIcon;->startCountFPS()V
    invoke-static {v0}, Lcom/htc/weather/ConditionIcon;->access$700(Lcom/htc/weather/ConditionIcon;)V

    .line 684
    :cond_1
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$1;->this$0:Lcom/htc/weather/ConditionIcon;

    invoke-static {v0}, Lcom/htc/weather/ConditionIcon;->access$508(Lcom/htc/weather/ConditionIcon;)I

    .line 685
    return-void
.end method
