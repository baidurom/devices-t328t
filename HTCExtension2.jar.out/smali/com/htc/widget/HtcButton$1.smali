.class Lcom/htc/widget/HtcButton$1;
.super Ljava/lang/Object;
.source "HtcButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcButton;->initMultiplyAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcButton;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcButton;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/htc/widget/HtcButton$1;->this$0:Lcom/htc/widget/HtcButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/htc/widget/HtcButton$1;->this$0:Lcom/htc/widget/HtcButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcButton;->onDownAnimationCancel()V

    .line 356
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/htc/widget/HtcButton$1;->this$0:Lcom/htc/widget/HtcButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcButton;->onDownAnimationEnd()V

    .line 352
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 348
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/htc/widget/HtcButton$1;->this$0:Lcom/htc/widget/HtcButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcButton;->onDownAnimationStart()V

    .line 346
    return-void
.end method
