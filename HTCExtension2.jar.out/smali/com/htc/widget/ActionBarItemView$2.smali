.class Lcom/htc/widget/ActionBarItemView$2;
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
    .line 189
    iput-object p1, p0, Lcom/htc/widget/ActionBarItemView$2;->this$0:Lcom/htc/widget/ActionBarItemView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 190
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 192
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 191
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView$2;->this$0:Lcom/htc/widget/ActionBarItemView;

    const/4 v1, 0x1

    #calls: Lcom/htc/widget/ActionBarItemView;->setInternalMultiplyForceEnabled(Z)V
    invoke-static {v0, v1}, Lcom/htc/widget/ActionBarItemView;->access$000(Lcom/htc/widget/ActionBarItemView;Z)V

    .line 197
    return-void
.end method
