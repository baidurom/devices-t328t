.class Lcom/htc/widget/HtcGridView$9;
.super Ljava/lang/Object;
.source "HtcGridView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcGridView;->startCancelAnimation(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcGridView;

.field final synthetic val$flag:Z


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcGridView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3712
    iput-object p1, p0, Lcom/htc/widget/HtcGridView$9;->this$0:Lcom/htc/widget/HtcGridView;

    iput-boolean p2, p0, Lcom/htc/widget/HtcGridView$9;->val$flag:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 3718
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 3723
    iget-boolean v1, p0, Lcom/htc/widget/HtcGridView$9;->val$flag:Z

    if-eqz v1, :cond_0

    .line 3724
    const-string v1, "Motion"

    const-string v2, "set Alpha to 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3725
    check-cast p1, Landroid/animation/ObjectAnimator;

    .end local p1
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3726
    .local v0, view:Landroid/view/View;
    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 3729
    .end local v0           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 3733
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 3737
    return-void
.end method
