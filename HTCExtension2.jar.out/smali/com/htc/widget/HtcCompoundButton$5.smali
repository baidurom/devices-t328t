.class Lcom/htc/widget/HtcCompoundButton$5;
.super Ljava/lang/Object;
.source "HtcCompoundButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcCompoundButton;->initUncheckAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcCompoundButton;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcCompoundButton;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/htc/widget/HtcCompoundButton$5;->this$0:Lcom/htc/widget/HtcCompoundButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton$5;->this$0:Lcom/htc/widget/HtcCompoundButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcCompoundButton;->onUnCheckUpAnimationCancel()V

    .line 327
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton$5;->this$0:Lcom/htc/widget/HtcCompoundButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcCompoundButton;->onUnCheckUpAnimationEnd()V

    .line 323
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 319
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton$5;->this$0:Lcom/htc/widget/HtcCompoundButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcCompoundButton;->onUnCheckUpAnimationStart()V

    .line 317
    return-void
.end method
