.class Lcom/htc/widget/HtcCompoundButton$2;
.super Ljava/lang/Object;
.source "HtcCompoundButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcCompoundButton;->initCheckAnimation()V
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
    .line 223
    iput-object p1, p0, Lcom/htc/widget/HtcCompoundButton$2;->this$0:Lcom/htc/widget/HtcCompoundButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton$2;->this$0:Lcom/htc/widget/HtcCompoundButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcCompoundButton;->onCheckUpAnimationCancel()V

    .line 236
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton$2;->this$0:Lcom/htc/widget/HtcCompoundButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcCompoundButton;->onCheckUpAnimationEnd()V

    .line 232
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 228
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton$2;->this$0:Lcom/htc/widget/HtcCompoundButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcCompoundButton;->onCheckUpAnimationStart()V

    .line 226
    return-void
.end method
