.class Lcom/htc/painting/penmenu/menu/Menu$1;
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
    .line 51
    iput-object p1, p0, Lcom/htc/painting/penmenu/menu/Menu$1;->this$0:Lcom/htc/painting/penmenu/menu/Menu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu$1;->this$0:Lcom/htc/painting/penmenu/menu/Menu;

    sget-object v1, Lcom/htc/painting/penmenu/menu/Menu$State;->EXPAND:Lcom/htc/painting/penmenu/menu/Menu$State;

    iput-object v1, v0, Lcom/htc/painting/penmenu/menu/Menu;->mState:Lcom/htc/painting/penmenu/menu/Menu$State;

    .line 54
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 58
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu$1;->this$0:Lcom/htc/painting/penmenu/menu/Menu;

    #getter for: Lcom/htc/painting/penmenu/menu/Menu;->mMenuPanel:Lcom/htc/painting/penmenu/menu/MenuPanel;
    invoke-static {v0}, Lcom/htc/painting/penmenu/menu/Menu;->access$000(Lcom/htc/painting/penmenu/menu/Menu;)Lcom/htc/painting/penmenu/menu/MenuPanel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu$1;->this$0:Lcom/htc/painting/penmenu/menu/Menu;

    #getter for: Lcom/htc/painting/penmenu/menu/Menu;->mMenuPanel:Lcom/htc/painting/penmenu/menu/MenuPanel;
    invoke-static {v0}, Lcom/htc/painting/penmenu/menu/Menu;->access$000(Lcom/htc/painting/penmenu/menu/Menu;)Lcom/htc/painting/penmenu/menu/MenuPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/MenuPanel;->display()V

    .line 64
    :cond_0
    return-void
.end method
