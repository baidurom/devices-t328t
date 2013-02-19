.class Lcom/htc/painting/penmenu/PenMenu$6;
.super Ljava/lang/Object;
.source "PenMenu.java"

# interfaces
.implements Lcom/htc/painting/penmenu/menu/OnCollapseListener;


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
    .line 818
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu$6;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCollapseFinish()V
    .locals 2

    .prologue
    .line 821
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$6;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mState:Lcom/htc/painting/penmenu/PenMenu$State;
    invoke-static {v0}, Lcom/htc/painting/penmenu/PenMenu;->access$1100(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/PenMenu$State;

    move-result-object v0

    sget-object v1, Lcom/htc/painting/penmenu/PenMenu$State;->HIDE:Lcom/htc/painting/penmenu/PenMenu$State;

    if-ne v0, v1, :cond_1

    .line 823
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$6;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;
    invoke-static {v0}, Lcom/htc/painting/penmenu/PenMenu;->access$300(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/menu/Menu$State;

    move-result-object v0

    sget-object v1, Lcom/htc/painting/penmenu/menu/Menu$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Menu$State;

    if-ne v0, v1, :cond_0

    .line 825
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$6;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu$6;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mMoveOutAnim:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/htc/painting/penmenu/PenMenu;->access$1200(Lcom/htc/painting/penmenu/PenMenu;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/PenMenu;->startAnimation(Landroid/view/animation/Animation;)V

    .line 836
    :cond_0
    :goto_0
    return-void

    .line 830
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$6;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;
    invoke-static {v0}, Lcom/htc/painting/penmenu/PenMenu;->access$300(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/menu/Menu$State;

    move-result-object v0

    sget-object v1, Lcom/htc/painting/penmenu/menu/Menu$State;->EXPAND:Lcom/htc/painting/penmenu/menu/Menu$State;

    if-ne v0, v1, :cond_2

    .line 832
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$6;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;
    invoke-static {v0}, Lcom/htc/painting/penmenu/PenMenu;->access$500(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/action/ActionPanel;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/action/ActionPanel;->setVisibility(I)V

    .line 834
    :cond_2
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$6;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    const/4 v1, 0x0

    #setter for: Lcom/htc/painting/penmenu/PenMenu;->mAnimInProgress:Z
    invoke-static {v0, v1}, Lcom/htc/painting/penmenu/PenMenu;->access$102(Lcom/htc/painting/penmenu/PenMenu;Z)Z

    goto :goto_0
.end method
