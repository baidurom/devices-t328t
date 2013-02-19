.class Lcom/htc/widget/ActionBarUtil$AnimateImageView$2;
.super Ljava/lang/Object;
.source "ActionBarUtil.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/ActionBarUtil$AnimateImageView;->setupAnimationEnv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/ActionBarUtil$AnimateImageView;


# direct methods
.method constructor <init>(Lcom/htc/widget/ActionBarUtil$AnimateImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView$2;->this$0:Lcom/htc/widget/ActionBarUtil$AnimateImageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 357
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 359
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 358
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView$2;->this$0:Lcom/htc/widget/ActionBarUtil$AnimateImageView;

    const/4 v1, 0x1

    #calls: Lcom/htc/widget/ActionBarUtil$AnimateImageView;->setInternalMultiplyForceEnabled(Z)V
    invoke-static {v0, v1}, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->access$100(Lcom/htc/widget/ActionBarUtil$AnimateImageView;Z)V

    .line 364
    return-void
.end method
