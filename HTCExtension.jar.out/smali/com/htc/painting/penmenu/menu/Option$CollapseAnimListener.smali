.class Lcom/htc/painting/penmenu/menu/Option$CollapseAnimListener;
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
    name = "CollapseAnimListener"
.end annotation


# instance fields
.field private mToState:Lcom/htc/painting/penmenu/menu/Option$State;

.field final synthetic this$0:Lcom/htc/painting/penmenu/menu/Option;


# direct methods
.method private constructor <init>(Lcom/htc/painting/penmenu/menu/Option;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/htc/painting/penmenu/menu/Option$CollapseAnimListener;->this$0:Lcom/htc/painting/penmenu/menu/Option;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/painting/penmenu/menu/Option;Lcom/htc/painting/penmenu/menu/Option$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/menu/Option$CollapseAnimListener;-><init>(Lcom/htc/painting/penmenu/menu/Option;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 357
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Option$CollapseAnimListener;->mToState:Lcom/htc/painting/penmenu/menu/Option$State;

    sget-object v2, Lcom/htc/painting/penmenu/menu/Option$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Option$State;

    if-ne v1, v2, :cond_0

    .line 359
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Option$CollapseAnimListener;->this$0:Lcom/htc/painting/penmenu/menu/Option;

    iget-object v2, p0, Lcom/htc/painting/penmenu/menu/Option$CollapseAnimListener;->mToState:Lcom/htc/painting/penmenu/menu/Option$State;

    iput-object v2, v1, Lcom/htc/painting/penmenu/menu/Option;->mState:Lcom/htc/painting/penmenu/menu/Option$State;

    .line 366
    :goto_0
    return-void

    .line 363
    :cond_0
    new-instance v0, Landroid/view/animation/LayoutAnimationController;

    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Option$CollapseAnimListener;->this$0:Lcom/htc/painting/penmenu/menu/Option;

    iget-object v1, v1, Lcom/htc/painting/penmenu/menu/Option;->mExpandAnimSet:Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    .line 364
    .local v0, animController:Landroid/view/animation/LayoutAnimationController;
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Option$CollapseAnimListener;->this$0:Lcom/htc/painting/penmenu/menu/Option;

    invoke-virtual {v1, v0}, Lcom/htc/painting/penmenu/menu/Option;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 374
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Option$CollapseAnimListener;->this$0:Lcom/htc/painting/penmenu/menu/Option;

    #getter for: Lcom/htc/painting/penmenu/menu/Option;->mOptionPanel:Lcom/htc/painting/penmenu/menu/OptionPanel;
    invoke-static {v0}, Lcom/htc/painting/penmenu/menu/Option;->access$200(Lcom/htc/painting/penmenu/menu/Option;)Lcom/htc/painting/penmenu/menu/OptionPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/OptionPanel;->display()V

    .line 383
    return-void
.end method

.method public setToState(Lcom/htc/painting/penmenu/menu/Option$State;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/htc/painting/penmenu/menu/Option$CollapseAnimListener;->mToState:Lcom/htc/painting/penmenu/menu/Option$State;

    .line 346
    return-void
.end method
