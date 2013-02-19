.class Lcom/htc/widget/ActionBarDropDown$2;
.super Ljava/lang/Object;
.source "ActionBarDropDown.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/ActionBarDropDown;->setupAnimationEnv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/ActionBarDropDown;


# direct methods
.method constructor <init>(Lcom/htc/widget/ActionBarDropDown;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/htc/widget/ActionBarDropDown$2;->this$0:Lcom/htc/widget/ActionBarDropDown;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown$2;->this$0:Lcom/htc/widget/ActionBarDropDown;

    const/4 v1, 0x0

    #calls: Lcom/htc/widget/ActionBarDropDown;->setInternalMultiplyForceEnabled(Z)V
    invoke-static {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->access$100(Lcom/htc/widget/ActionBarDropDown;Z)V

    .line 358
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 362
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown$2;->this$0:Lcom/htc/widget/ActionBarDropDown;

    #calls: Lcom/htc/widget/ActionBarDropDown;->setInternalMultiplyForceEnabled(Z)V
    invoke-static {v0, v2}, Lcom/htc/widget/ActionBarDropDown;->access$100(Lcom/htc/widget/ActionBarDropDown;Z)V

    .line 364
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown$2;->this$0:Lcom/htc/widget/ActionBarDropDown;

    #getter for: Lcom/htc/widget/ActionBarDropDown;->enableShow:Z
    invoke-static {v0}, Lcom/htc/widget/ActionBarDropDown;->access$200(Lcom/htc/widget/ActionBarDropDown;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 366
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown$2;->this$0:Lcom/htc/widget/ActionBarDropDown;

    #setter for: Lcom/htc/widget/ActionBarDropDown;->enableShow:Z
    invoke-static {v0, v2}, Lcom/htc/widget/ActionBarDropDown;->access$202(Lcom/htc/widget/ActionBarDropDown;Z)Z

    .line 367
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown$2;->this$0:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarDropDown;->showInternal()V

    .line 369
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 371
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 372
    return-void
.end method
