.class Lcom/htc/widget/ActionBarItemView$1;
.super Ljava/lang/Object;
.source "ActionBarItemView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/ActionBarItemView;->setupAnimationEnv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/ActionBarItemView;


# direct methods
.method constructor <init>(Lcom/htc/widget/ActionBarItemView;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/htc/widget/ActionBarItemView$1;->this$0:Lcom/htc/widget/ActionBarItemView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView$1;->this$0:Lcom/htc/widget/ActionBarItemView;

    const/4 v1, 0x0

    #calls: Lcom/htc/widget/ActionBarItemView;->setInternalMultiplyForceEnabled(Z)V
    invoke-static {v0, v1}, Lcom/htc/widget/ActionBarItemView;->access$000(Lcom/htc/widget/ActionBarItemView;Z)V

    .line 166
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 170
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView$1;->this$0:Lcom/htc/widget/ActionBarItemView;

    #calls: Lcom/htc/widget/ActionBarItemView;->setInternalMultiplyForceEnabled(Z)V
    invoke-static {v0, v2}, Lcom/htc/widget/ActionBarItemView;->access$000(Lcom/htc/widget/ActionBarItemView;Z)V

    .line 172
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView$1;->this$0:Lcom/htc/widget/ActionBarItemView;

    #getter for: Lcom/htc/widget/ActionBarItemView;->enableShow:Z
    invoke-static {v0}, Lcom/htc/widget/ActionBarItemView;->access$100(Lcom/htc/widget/ActionBarItemView;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView$1;->this$0:Lcom/htc/widget/ActionBarItemView;

    #setter for: Lcom/htc/widget/ActionBarItemView;->enableShow:Z
    invoke-static {v0, v2}, Lcom/htc/widget/ActionBarItemView;->access$102(Lcom/htc/widget/ActionBarItemView;Z)Z

    .line 175
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView$1;->this$0:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarItemView;->showInternal()V

    .line 177
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 179
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 180
    return-void
.end method
