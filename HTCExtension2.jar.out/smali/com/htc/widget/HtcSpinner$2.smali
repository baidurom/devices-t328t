.class Lcom/htc/widget/HtcSpinner$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HtcSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcSpinner;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcSpinner;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcSpinner;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/htc/widget/HtcSpinner$2;->this$0:Lcom/htc/widget/HtcSpinner;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner$2;->this$0:Lcom/htc/widget/HtcSpinner;

    const/4 v1, 0x0

    #setter for: Lcom/htc/widget/HtcSpinner;->mIsAnimating:Z
    invoke-static {v0, v1}, Lcom/htc/widget/HtcSpinner;->access$002(Lcom/htc/widget/HtcSpinner;Z)Z

    .line 158
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner$2;->this$0:Lcom/htc/widget/HtcSpinner;

    const/4 v1, 0x0

    #setter for: Lcom/htc/widget/HtcSpinner;->mIsAnimating:Z
    invoke-static {v0, v1}, Lcom/htc/widget/HtcSpinner;->access$002(Lcom/htc/widget/HtcSpinner;Z)Z

    .line 154
    return-void
.end method
