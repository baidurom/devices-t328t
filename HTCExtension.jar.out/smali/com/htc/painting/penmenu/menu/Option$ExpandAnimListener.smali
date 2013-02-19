.class Lcom/htc/painting/penmenu/menu/Option$ExpandAnimListener;
.super Ljava/lang/Object;
.source "Option.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu/menu/Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandAnimListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/penmenu/menu/Option;


# direct methods
.method private constructor <init>(Lcom/htc/painting/penmenu/menu/Option;)V
    .locals 0
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/htc/painting/penmenu/menu/Option$ExpandAnimListener;->this$0:Lcom/htc/painting/penmenu/menu/Option;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/painting/penmenu/menu/Option;Lcom/htc/painting/penmenu/menu/Option$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/menu/Option$ExpandAnimListener;-><init>(Lcom/htc/painting/penmenu/menu/Option;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 391
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 399
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Option$ExpandAnimListener;->this$0:Lcom/htc/painting/penmenu/menu/Option;

    sget-object v1, Lcom/htc/painting/penmenu/menu/Option$State;->EXPAND:Lcom/htc/painting/penmenu/menu/Option$State;

    iput-object v1, v0, Lcom/htc/painting/penmenu/menu/Option;->mState:Lcom/htc/painting/penmenu/menu/Option$State;

    .line 407
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Option$ExpandAnimListener;->this$0:Lcom/htc/painting/penmenu/menu/Option;

    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Option$ExpandAnimListener;->this$0:Lcom/htc/painting/penmenu/menu/Option;

    #getter for: Lcom/htc/painting/penmenu/menu/Option;->mTargetMenuId:I
    invoke-static {v1}, Lcom/htc/painting/penmenu/menu/Option;->access$400(Lcom/htc/painting/penmenu/menu/Option;)I

    move-result v1

    #setter for: Lcom/htc/painting/penmenu/menu/Option;->mMenuId:I
    invoke-static {v0, v1}, Lcom/htc/painting/penmenu/menu/Option;->access$302(Lcom/htc/painting/penmenu/menu/Option;I)I

    .line 408
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Option$ExpandAnimListener;->this$0:Lcom/htc/painting/penmenu/menu/Option;

    #getter for: Lcom/htc/painting/penmenu/menu/Option;->mOptionPanel:Lcom/htc/painting/penmenu/menu/OptionPanel;
    invoke-static {v0}, Lcom/htc/painting/penmenu/menu/Option;->access$200(Lcom/htc/painting/penmenu/menu/Option;)Lcom/htc/painting/penmenu/menu/OptionPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/OptionPanel;->display()V

    .line 409
    return-void
.end method
