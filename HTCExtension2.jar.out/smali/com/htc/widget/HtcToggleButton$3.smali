.class Lcom/htc/widget/HtcToggleButton$3;
.super Ljava/lang/Object;
.source "HtcToggleButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcToggleButton;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcToggleButton;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcToggleButton;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/htc/widget/HtcToggleButton$3;->this$0:Lcom/htc/widget/HtcToggleButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 429
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton$3;->this$0:Lcom/htc/widget/HtcToggleButton;

    #calls: Lcom/htc/widget/HtcToggleButton;->onDownAnimationCancel()V
    invoke-static {v0}, Lcom/htc/widget/HtcToggleButton;->access$800(Lcom/htc/widget/HtcToggleButton;)V

    .line 430
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton$3;->this$0:Lcom/htc/widget/HtcToggleButton;

    #calls: Lcom/htc/widget/HtcToggleButton;->onDownAnimationEnd()V
    invoke-static {v0}, Lcom/htc/widget/HtcToggleButton;->access$700(Lcom/htc/widget/HtcToggleButton;)V

    .line 426
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 422
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton$3;->this$0:Lcom/htc/widget/HtcToggleButton;

    #calls: Lcom/htc/widget/HtcToggleButton;->onDownAnimationStart()V
    invoke-static {v0}, Lcom/htc/widget/HtcToggleButton;->access$600(Lcom/htc/widget/HtcToggleButton;)V

    .line 420
    return-void
.end method
