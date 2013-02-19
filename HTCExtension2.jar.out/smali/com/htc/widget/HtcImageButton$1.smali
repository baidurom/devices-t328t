.class Lcom/htc/widget/HtcImageButton$1;
.super Ljava/lang/Object;
.source "HtcImageButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcImageButton;->initMultiplyAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcImageButton;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcImageButton;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/htc/widget/HtcImageButton$1;->this$0:Lcom/htc/widget/HtcImageButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/htc/widget/HtcImageButton$1;->this$0:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcImageButton;->onDownAnimationCancel()V

    .line 310
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/htc/widget/HtcImageButton$1;->this$0:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcImageButton;->onDownAnimationEnd()V

    .line 306
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 302
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/htc/widget/HtcImageButton$1;->this$0:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcImageButton;->onDownAnimationStart()V

    .line 300
    return-void
.end method
