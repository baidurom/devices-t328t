.class Lcom/htc/widget/HtcImageButton$2;
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
    .line 317
    iput-object p1, p0, Lcom/htc/widget/HtcImageButton$2;->this$0:Lcom/htc/widget/HtcImageButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/htc/widget/HtcImageButton$2;->this$0:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcImageButton;->onUpAnimationCancel()V

    .line 330
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/htc/widget/HtcImageButton$2;->this$0:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcImageButton;->onUpAnimationEnd()V

    .line 326
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 322
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/htc/widget/HtcImageButton$2;->this$0:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcImageButton;->onUpAnimationStart()V

    .line 320
    return-void
.end method
