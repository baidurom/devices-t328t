.class Lcom/htc/widget/HtcCompoundButton$1;
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
    .line 193
    iput-object p1, p0, Lcom/htc/widget/HtcCompoundButton$1;->this$0:Lcom/htc/widget/HtcCompoundButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton$1;->this$0:Lcom/htc/widget/HtcCompoundButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcCompoundButton;->onCheckDownAnimationCancel()V

    .line 206
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton$1;->this$0:Lcom/htc/widget/HtcCompoundButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcCompoundButton;->onCheckDownAnimationEnd()V

    .line 202
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 198
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton$1;->this$0:Lcom/htc/widget/HtcCompoundButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcCompoundButton;->onCheckDownAnimationStart()V

    .line 196
    return-void
.end method
