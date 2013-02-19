.class Lcom/htc/widget/DropDownList$1;
.super Ljava/lang/Object;
.source "DropDownList.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/DropDownList;->initMultiplyAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/DropDownList;


# direct methods
.method constructor <init>(Lcom/htc/widget/DropDownList;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/htc/widget/DropDownList$1;->this$0:Lcom/htc/widget/DropDownList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/htc/widget/DropDownList$1;->this$0:Lcom/htc/widget/DropDownList;

    invoke-virtual {v0}, Lcom/htc/widget/DropDownList;->onDownAnimationCancel()V

    .line 286
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/htc/widget/DropDownList$1;->this$0:Lcom/htc/widget/DropDownList;

    invoke-virtual {v0}, Lcom/htc/widget/DropDownList;->onDownAnimationEnd()V

    .line 282
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 278
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/htc/widget/DropDownList$1;->this$0:Lcom/htc/widget/DropDownList;

    invoke-virtual {v0}, Lcom/htc/widget/DropDownList;->onDownAnimationStart()V

    .line 276
    return-void
.end method
