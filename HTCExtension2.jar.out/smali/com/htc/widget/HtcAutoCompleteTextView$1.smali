.class Lcom/htc/widget/HtcAutoCompleteTextView$1;
.super Ljava/lang/Object;
.source "HtcAutoCompleteTextView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcAutoCompleteTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcAutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcAutoCompleteTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/htc/widget/HtcAutoCompleteTextView$1;->this$0:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView$1;->this$0:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAutoCompleteTextView;->onDownAnimationCancel()V

    .line 201
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView$1;->this$0:Lcom/htc/widget/HtcAutoCompleteTextView;

    #calls: Lcom/htc/widget/HtcAutoCompleteTextView;->onDownAnimationEnd()V
    invoke-static {v0}, Lcom/htc/widget/HtcAutoCompleteTextView;->access$100(Lcom/htc/widget/HtcAutoCompleteTextView;)V

    .line 197
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 193
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/htc/widget/HtcAutoCompleteTextView$1;->this$0:Lcom/htc/widget/HtcAutoCompleteTextView;

    #calls: Lcom/htc/widget/HtcAutoCompleteTextView;->onDownAnimationStart()V
    invoke-static {v0}, Lcom/htc/widget/HtcAutoCompleteTextView;->access$000(Lcom/htc/widget/HtcAutoCompleteTextView;)V

    .line 191
    return-void
.end method
