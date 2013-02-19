.class Lcom/htc/painting/penmenu/PenMenu$2;
.super Ljava/lang/Object;
.source "PenMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu/PenMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/penmenu/PenMenu;


# direct methods
.method constructor <init>(Lcom/htc/painting/penmenu/PenMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu$2;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 416
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$2;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    sget-object v1, Lcom/htc/painting/penmenu/PenMenu$State;->HIDE:Lcom/htc/painting/penmenu/PenMenu$State;

    #calls: Lcom/htc/painting/penmenu/PenMenu;->setStateVisible(Lcom/htc/painting/penmenu/PenMenu$State;)V
    invoke-static {v0, v1}, Lcom/htc/painting/penmenu/PenMenu;->access$000(Lcom/htc/painting/penmenu/PenMenu;Lcom/htc/painting/penmenu/PenMenu$State;)V

    .line 419
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$2;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #setter for: Lcom/htc/painting/penmenu/PenMenu;->mAnimInProgress:Z
    invoke-static {v0, v2}, Lcom/htc/painting/penmenu/PenMenu;->access$102(Lcom/htc/painting/penmenu/PenMenu;Z)Z

    .line 422
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$2;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mStateMonitor:Lcom/htc/painting/penmenu/PenMenu$StateMonitor;
    invoke-static {v0}, Lcom/htc/painting/penmenu/PenMenu;->access$200(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/PenMenu$StateMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$2;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mStateMonitor:Lcom/htc/painting/penmenu/PenMenu$StateMonitor;
    invoke-static {v0}, Lcom/htc/painting/penmenu/PenMenu;->access$200(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/PenMenu$StateMonitor;

    move-result-object v0

    sget-object v1, Lcom/htc/painting/penmenu/PenMenu$State;->HIDE:Lcom/htc/painting/penmenu/PenMenu$State;

    invoke-interface {v0, v1}, Lcom/htc/painting/penmenu/PenMenu$StateMonitor;->OnChanged(Lcom/htc/painting/penmenu/PenMenu$State;)V

    .line 426
    :cond_0
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu$2;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/PenManager;->isPromptHowToShowPenMenu(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 427
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$2;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/PenMenu;->showPrompt()V

    .line 428
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu$2;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/htc/painting/penmenu/PenManager;->savePromptHowToShowPenMenu(ZLandroid/content/Context;)Z

    .line 430
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 434
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 438
    return-void
.end method
