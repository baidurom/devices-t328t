.class Lcom/htc/widget/ActionBarUtil$AnimateTextLayout$1;
.super Ljava/lang/Object;
.source "ActionBarUtil.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->setupAnimationEnv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;


# direct methods
.method constructor <init>(Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout$1;->this$0:Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout$1;->this$0:Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;

    const/4 v1, 0x0

    #calls: Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->setInternalMultiplyForceEnabled(Z)V
    invoke-static {v0, v1}, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->access$000(Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;Z)V

    .line 133
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout$1;->this$0:Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;

    const/4 v1, 0x0

    #calls: Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->setInternalMultiplyForceEnabled(Z)V
    invoke-static {v0, v1}, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;->access$000(Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;Z)V

    .line 138
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 140
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 141
    return-void
.end method
