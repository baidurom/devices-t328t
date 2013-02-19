.class Lcom/htc/widget/HtcGridViewElement$1;
.super Ljava/lang/Object;
.source "HtcGridViewElement.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcGridViewElement;->toggle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcGridViewElement;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcGridViewElement;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/htc/widget/HtcGridViewElement$1;->this$0:Lcom/htc/widget/HtcGridViewElement;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 79
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 84
    iget-object v1, p0, Lcom/htc/widget/HtcGridViewElement$1;->this$0:Lcom/htc/widget/HtcGridViewElement;

    iget-object v0, p0, Lcom/htc/widget/HtcGridViewElement$1;->this$0:Lcom/htc/widget/HtcGridViewElement;

    #getter for: Lcom/htc/widget/HtcGridViewElement;->mChecked:Z
    invoke-static {v0}, Lcom/htc/widget/HtcGridViewElement;->access$000(Lcom/htc/widget/HtcGridViewElement;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcGridViewElement;->setChecked(Z)V

    .line 87
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 93
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 99
    return-void
.end method
