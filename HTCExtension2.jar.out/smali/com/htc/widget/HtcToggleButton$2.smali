.class Lcom/htc/widget/HtcToggleButton$2;
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
    .line 401
    iput-object p1, p0, Lcom/htc/widget/HtcToggleButton$2;->this$0:Lcom/htc/widget/HtcToggleButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 413
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton$2;->this$0:Lcom/htc/widget/HtcToggleButton;

    #calls: Lcom/htc/widget/HtcToggleButton;->onOffAnimationCancel()V
    invoke-static {v0}, Lcom/htc/widget/HtcToggleButton;->access$500(Lcom/htc/widget/HtcToggleButton;)V

    .line 414
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton$2;->this$0:Lcom/htc/widget/HtcToggleButton;

    #calls: Lcom/htc/widget/HtcToggleButton;->onOffAnimationEnd()V
    invoke-static {v0}, Lcom/htc/widget/HtcToggleButton;->access$400(Lcom/htc/widget/HtcToggleButton;)V

    .line 410
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 406
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton$2;->this$0:Lcom/htc/widget/HtcToggleButton;

    #calls: Lcom/htc/widget/HtcToggleButton;->onOffAnimationStart()V
    invoke-static {v0}, Lcom/htc/widget/HtcToggleButton;->access$300(Lcom/htc/widget/HtcToggleButton;)V

    .line 404
    return-void
.end method
