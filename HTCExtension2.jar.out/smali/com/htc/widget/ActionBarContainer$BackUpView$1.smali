.class Lcom/htc/widget/ActionBarContainer$BackUpView$1;
.super Ljava/lang/Object;
.source "ActionBarContainer.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/ActionBarContainer$BackUpView;->setupAnimationEnv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/widget/ActionBarContainer$BackUpView;


# direct methods
.method constructor <init>(Lcom/htc/widget/ActionBarContainer$BackUpView;)V
    .locals 0
    .parameter

    .prologue
    .line 967
    iput-object p1, p0, Lcom/htc/widget/ActionBarContainer$BackUpView$1;->this$1:Lcom/htc/widget/ActionBarContainer$BackUpView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 970
    iget-object v0, p0, Lcom/htc/widget/ActionBarContainer$BackUpView$1;->this$1:Lcom/htc/widget/ActionBarContainer$BackUpView;

    const/4 v1, 0x0

    #calls: Lcom/htc/widget/ActionBarContainer$BackUpView;->setInternalMultiplyForceEnabled(Z)V
    invoke-static {v0, v1}, Lcom/htc/widget/ActionBarContainer$BackUpView;->access$000(Lcom/htc/widget/ActionBarContainer$BackUpView;Z)V

    .line 971
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 975
    iget-object v0, p0, Lcom/htc/widget/ActionBarContainer$BackUpView$1;->this$1:Lcom/htc/widget/ActionBarContainer$BackUpView;

    const/4 v1, 0x0

    #calls: Lcom/htc/widget/ActionBarContainer$BackUpView;->setInternalMultiplyForceEnabled(Z)V
    invoke-static {v0, v1}, Lcom/htc/widget/ActionBarContainer$BackUpView;->access$000(Lcom/htc/widget/ActionBarContainer$BackUpView;Z)V

    .line 976
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 978
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 979
    return-void
.end method
