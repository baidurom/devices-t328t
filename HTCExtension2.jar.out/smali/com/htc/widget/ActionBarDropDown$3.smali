.class Lcom/htc/widget/ActionBarDropDown$3;
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
    .line 381
    iput-object p1, p0, Lcom/htc/widget/ActionBarDropDown$3;->this$0:Lcom/htc/widget/ActionBarDropDown;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 382
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 384
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 383
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown$3;->this$0:Lcom/htc/widget/ActionBarDropDown;

    const/4 v1, 0x1

    #calls: Lcom/htc/widget/ActionBarDropDown;->setInternalMultiplyForceEnabled(Z)V
    invoke-static {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->access$100(Lcom/htc/widget/ActionBarDropDown;Z)V

    .line 389
    return-void
.end method
