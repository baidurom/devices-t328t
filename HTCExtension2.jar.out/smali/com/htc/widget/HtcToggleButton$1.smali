.class Lcom/htc/widget/HtcToggleButton$1;
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
    .line 385
    iput-object p1, p0, Lcom/htc/widget/HtcToggleButton$1;->this$0:Lcom/htc/widget/HtcToggleButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton$1;->this$0:Lcom/htc/widget/HtcToggleButton;

    #calls: Lcom/htc/widget/HtcToggleButton;->onOnAnimationCancel()V
    invoke-static {v0}, Lcom/htc/widget/HtcToggleButton;->access$200(Lcom/htc/widget/HtcToggleButton;)V

    .line 398
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton$1;->this$0:Lcom/htc/widget/HtcToggleButton;

    #calls: Lcom/htc/widget/HtcToggleButton;->onOnAnimationEnd()V
    invoke-static {v0}, Lcom/htc/widget/HtcToggleButton;->access$100(Lcom/htc/widget/HtcToggleButton;)V

    .line 394
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 390
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton$1;->this$0:Lcom/htc/widget/HtcToggleButton;

    #calls: Lcom/htc/widget/HtcToggleButton;->onOnAnimationStart()V
    invoke-static {v0}, Lcom/htc/widget/HtcToggleButton;->access$000(Lcom/htc/widget/HtcToggleButton;)V

    .line 388
    return-void
.end method
