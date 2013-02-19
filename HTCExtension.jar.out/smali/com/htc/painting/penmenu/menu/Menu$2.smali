.class Lcom/htc/painting/penmenu/menu/Menu$2;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu/menu/Menu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/penmenu/menu/Menu;


# direct methods
.method constructor <init>(Lcom/htc/painting/penmenu/menu/Menu;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/painting/penmenu/menu/Menu$2;->this$0:Lcom/htc/painting/penmenu/menu/Menu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu$2;->this$0:Lcom/htc/painting/penmenu/menu/Menu;

    #getter for: Lcom/htc/painting/penmenu/menu/Menu;->mOption:Lcom/htc/painting/penmenu/menu/Option;
    invoke-static {v0}, Lcom/htc/painting/penmenu/menu/Menu;->access$100(Lcom/htc/painting/penmenu/menu/Menu;)Lcom/htc/painting/penmenu/menu/Option;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu$2;->this$0:Lcom/htc/painting/penmenu/menu/Menu;

    #getter for: Lcom/htc/painting/penmenu/menu/Menu;->mOption:Lcom/htc/painting/penmenu/menu/Option;
    invoke-static {v0}, Lcom/htc/painting/penmenu/menu/Menu;->access$100(Lcom/htc/painting/penmenu/menu/Menu;)Lcom/htc/painting/penmenu/menu/Option;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/menu/Option;->hideOptionPanel(Z)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu$2;->this$0:Lcom/htc/painting/penmenu/menu/Menu;

    #getter for: Lcom/htc/painting/penmenu/menu/Menu;->mMenuPanel:Lcom/htc/painting/penmenu/menu/MenuPanel;
    invoke-static {v0}, Lcom/htc/painting/penmenu/menu/Menu;->access$000(Lcom/htc/painting/penmenu/menu/Menu;)Lcom/htc/painting/penmenu/menu/MenuPanel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu$2;->this$0:Lcom/htc/painting/penmenu/menu/Menu;

    #getter for: Lcom/htc/painting/penmenu/menu/Menu;->mMenuPanel:Lcom/htc/painting/penmenu/menu/MenuPanel;
    invoke-static {v0}, Lcom/htc/painting/penmenu/menu/Menu;->access$000(Lcom/htc/painting/penmenu/menu/Menu;)Lcom/htc/painting/penmenu/menu/MenuPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/MenuPanel;->shrink()V

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu$2;->this$0:Lcom/htc/painting/penmenu/menu/Menu;

    iget-object v0, v0, Lcom/htc/painting/penmenu/menu/Menu;->mOnCollapseListener:Lcom/htc/painting/penmenu/menu/OnCollapseListener;

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu$2;->this$0:Lcom/htc/painting/penmenu/menu/Menu;

    iget-object v0, v0, Lcom/htc/painting/penmenu/menu/Menu;->mOnCollapseListener:Lcom/htc/painting/penmenu/menu/OnCollapseListener;

    invoke-interface {v0}, Lcom/htc/painting/penmenu/menu/OnCollapseListener;->onCollapseFinish()V

    .line 78
    :cond_2
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 82
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu$2;->this$0:Lcom/htc/painting/penmenu/menu/Menu;

    #getter for: Lcom/htc/painting/penmenu/menu/Menu;->mMenuPanel:Lcom/htc/painting/penmenu/menu/MenuPanel;
    invoke-static {v0}, Lcom/htc/painting/penmenu/menu/Menu;->access$000(Lcom/htc/painting/penmenu/menu/Menu;)Lcom/htc/painting/penmenu/menu/MenuPanel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu$2;->this$0:Lcom/htc/painting/penmenu/menu/Menu;

    #getter for: Lcom/htc/painting/penmenu/menu/Menu;->mMenuPanel:Lcom/htc/painting/penmenu/menu/MenuPanel;
    invoke-static {v0}, Lcom/htc/painting/penmenu/menu/Menu;->access$000(Lcom/htc/painting/penmenu/menu/Menu;)Lcom/htc/painting/penmenu/menu/MenuPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/MenuPanel;->display()V

    .line 88
    :cond_0
    return-void
.end method
