.class Lcom/htc/widget/HtcButton$2;
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
    .line 363
    iput-object p1, p0, Lcom/htc/widget/HtcButton$2;->this$0:Lcom/htc/widget/HtcButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/htc/widget/HtcButton$2;->this$0:Lcom/htc/widget/HtcButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcButton;->onUpAnimationCancel()V

    .line 376
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/htc/widget/HtcButton$2;->this$0:Lcom/htc/widget/HtcButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcButton;->onUpAnimationEnd()V

    .line 372
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 368
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/htc/widget/HtcButton$2;->this$0:Lcom/htc/widget/HtcButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcButton;->onUpAnimationStart()V

    .line 366
    return-void
.end method
