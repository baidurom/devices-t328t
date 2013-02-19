.class Lcom/htc/widget/QuickContactBadge$2;
.super Ljava/lang/Object;
.source "QuickContactBadge.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/QuickContactBadge;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/QuickContactBadge;


# direct methods
.method constructor <init>(Lcom/htc/widget/QuickContactBadge;)V
    .locals 0
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/htc/widget/QuickContactBadge$2;->this$0:Lcom/htc/widget/QuickContactBadge;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge$2;->this$0:Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v0}, Lcom/htc/widget/QuickContactBadge;->onUpAnimationCancel()V

    .line 360
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge$2;->this$0:Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v0}, Lcom/htc/widget/QuickContactBadge;->onUpAnimationEnd()V

    .line 356
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 352
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge$2;->this$0:Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v0}, Lcom/htc/widget/QuickContactBadge;->onUpAnimationStart()V

    .line 349
    return-void
.end method
