.class Lcom/htc/widget/ActionBarExt$3;
.super Ljava/lang/Object;
.source "ActionBarExt.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/ActionBarExt;->setEditModeEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/ActionBarExt;

.field final synthetic val$animatorSet:Landroid/animation/AnimatorSet;

.field final synthetic val$flag:Z


# direct methods
.method constructor <init>(Lcom/htc/widget/ActionBarExt;Landroid/animation/AnimatorSet;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 584
    iput-object p1, p0, Lcom/htc/widget/ActionBarExt$3;->this$0:Lcom/htc/widget/ActionBarExt;

    iput-object p2, p0, Lcom/htc/widget/ActionBarExt$3;->val$animatorSet:Landroid/animation/AnimatorSet;

    iput-boolean p3, p0, Lcom/htc/widget/ActionBarExt$3;->val$flag:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 588
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt$3;->val$animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 589
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/16 v1, 0x8

    .line 593
    iget-boolean v0, p0, Lcom/htc/widget/ActionBarExt$3;->val$flag:Z

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt$3;->this$0:Lcom/htc/widget/ActionBarExt;

    #getter for: Lcom/htc/widget/ActionBarExt;->actionBarView:Lcom/android/internal/widget/ActionBarView;
    invoke-static {v0}, Lcom/htc/widget/ActionBarExt;->access$300(Lcom/htc/widget/ActionBarExt;)Lcom/android/internal/widget/ActionBarView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->setVisibility(I)V

    .line 598
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt$3;->this$0:Lcom/htc/widget/ActionBarExt;

    const/4 v1, 0x0

    #setter for: Lcom/htc/widget/ActionBarExt;->IsEnteringEditmode:Z
    invoke-static {v0, v1}, Lcom/htc/widget/ActionBarExt;->access$502(Lcom/htc/widget/ActionBarExt;Z)Z

    .line 599
    return-void

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarExt$3;->this$0:Lcom/htc/widget/ActionBarExt;

    #getter for: Lcom/htc/widget/ActionBarExt;->editmodeContainer:Lcom/htc/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/htc/widget/ActionBarExt;->access$400(Lcom/htc/widget/ActionBarExt;)Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 604
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 609
    return-void
.end method
