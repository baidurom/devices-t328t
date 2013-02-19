.class Lcom/htc/widget/ActionBarUtil$AnimateImageView$1;
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
    .line 335
    iput-object p1, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView$1;->this$0:Lcom/htc/widget/ActionBarUtil$AnimateImageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView$1;->this$0:Lcom/htc/widget/ActionBarUtil$AnimateImageView;

    const/4 v1, 0x0

    #calls: Lcom/htc/widget/ActionBarUtil$AnimateImageView;->setInternalMultiplyForceEnabled(Z)V
    invoke-static {v0, v1}, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->access$100(Lcom/htc/widget/ActionBarUtil$AnimateImageView;Z)V

    .line 339
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView$1;->this$0:Lcom/htc/widget/ActionBarUtil$AnimateImageView;

    const/4 v1, 0x0

    #calls: Lcom/htc/widget/ActionBarUtil$AnimateImageView;->setInternalMultiplyForceEnabled(Z)V
    invoke-static {v0, v1}, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->access$100(Lcom/htc/widget/ActionBarUtil$AnimateImageView;Z)V

    .line 344
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 346
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 347
    return-void
.end method
