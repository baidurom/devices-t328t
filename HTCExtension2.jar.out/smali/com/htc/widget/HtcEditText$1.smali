.class Lcom/htc/widget/HtcEditText$1;
.super Ljava/lang/Object;
.source "HtcEditText.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcEditText;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcEditText;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/htc/widget/HtcEditText$1;->this$0:Lcom/htc/widget/HtcEditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/htc/widget/HtcEditText$1;->this$0:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v0}, Lcom/htc/widget/HtcEditText;->onDownAnimationCancel()V

    .line 170
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/htc/widget/HtcEditText$1;->this$0:Lcom/htc/widget/HtcEditText;

    #calls: Lcom/htc/widget/HtcEditText;->onDownAnimationEnd()V
    invoke-static {v0}, Lcom/htc/widget/HtcEditText;->access$100(Lcom/htc/widget/HtcEditText;)V

    .line 166
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 162
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/widget/HtcEditText$1;->this$0:Lcom/htc/widget/HtcEditText;

    #calls: Lcom/htc/widget/HtcEditText;->onDownAnimationStart()V
    invoke-static {v0}, Lcom/htc/widget/HtcEditText;->access$000(Lcom/htc/widget/HtcEditText;)V

    .line 160
    return-void
.end method
