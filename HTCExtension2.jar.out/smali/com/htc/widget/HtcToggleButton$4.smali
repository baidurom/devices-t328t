.class Lcom/htc/widget/HtcToggleButton$4;
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
    .line 433
    iput-object p1, p0, Lcom/htc/widget/HtcToggleButton$4;->this$0:Lcom/htc/widget/HtcToggleButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton$4;->this$0:Lcom/htc/widget/HtcToggleButton;

    #calls: Lcom/htc/widget/HtcToggleButton;->onUpAnimationCancel()V
    invoke-static {v0}, Lcom/htc/widget/HtcToggleButton;->access$1100(Lcom/htc/widget/HtcToggleButton;)V

    .line 446
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton$4;->this$0:Lcom/htc/widget/HtcToggleButton;

    #calls: Lcom/htc/widget/HtcToggleButton;->onUpAnimationEnd()V
    invoke-static {v0}, Lcom/htc/widget/HtcToggleButton;->access$1000(Lcom/htc/widget/HtcToggleButton;)V

    .line 442
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 438
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton$4;->this$0:Lcom/htc/widget/HtcToggleButton;

    #calls: Lcom/htc/widget/HtcToggleButton;->onUpAnimationStart()V
    invoke-static {v0}, Lcom/htc/widget/HtcToggleButton;->access$900(Lcom/htc/widget/HtcToggleButton;)V

    .line 436
    return-void
.end method
