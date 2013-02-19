.class Lcom/htc/widget/HtcListViewCore2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HtcListViewCore2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcListViewCore2;->releaseItem(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcListViewCore2;

.field final synthetic val$animator:Landroid/animation/Animator;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcListViewCore2;Landroid/animation/Animator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5182
    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore2$1;->this$0:Lcom/htc/widget/HtcListViewCore2;

    iput-object p2, p0, Lcom/htc/widget/HtcListViewCore2$1;->val$animator:Landroid/animation/Animator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 5184
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2$1;->val$animator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2$1;->val$animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5185
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2$1;->val$animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 5187
    :cond_0
    return-void
.end method
