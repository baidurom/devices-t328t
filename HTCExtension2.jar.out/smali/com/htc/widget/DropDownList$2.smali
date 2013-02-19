.class Lcom/htc/widget/DropDownList$2;
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
    .line 292
    iput-object p1, p0, Lcom/htc/widget/DropDownList$2;->this$0:Lcom/htc/widget/DropDownList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/htc/widget/DropDownList$2;->this$0:Lcom/htc/widget/DropDownList;

    invoke-virtual {v0}, Lcom/htc/widget/DropDownList;->onUpAnimationCancel()V

    .line 305
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/htc/widget/DropDownList$2;->this$0:Lcom/htc/widget/DropDownList;

    invoke-virtual {v0}, Lcom/htc/widget/DropDownList;->onUpAnimationEnd()V

    .line 301
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 297
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/htc/widget/DropDownList$2;->this$0:Lcom/htc/widget/DropDownList;

    invoke-virtual {v0}, Lcom/htc/widget/DropDownList;->onUpAnimationStart()V

    .line 295
    return-void
.end method
