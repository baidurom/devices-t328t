.class Lcom/htc/widget/QuickTips$LifecycleListener$1;
.super Landroid/content/BroadcastReceiver;
.source "QuickTips.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/QuickTips$LifecycleListener;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/QuickTips$LifecycleListener;


# direct methods
.method constructor <init>(Lcom/htc/widget/QuickTips$LifecycleListener;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/htc/widget/QuickTips$LifecycleListener$1;->this$0:Lcom/htc/widget/QuickTips$LifecycleListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 347
    invoke-static {}, Lcom/htc/widget/QuickTips;->access$1200()Lcom/htc/view/animation/QuickTipsAnimationView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    invoke-static {}, Lcom/htc/widget/QuickTips;->access$1200()Lcom/htc/view/animation/QuickTipsAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/view/animation/QuickTipsAnimationView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/htc/widget/QuickTips$LifecycleListener$1;->this$0:Lcom/htc/widget/QuickTips$LifecycleListener;

    invoke-virtual {v0}, Lcom/htc/widget/QuickTips$LifecycleListener;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    invoke-static {}, Lcom/htc/widget/QuickTips;->access$1200()Lcom/htc/view/animation/QuickTipsAnimationView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/view/animation/QuickTipsAnimationView;->setVisibility(I)V

    .line 355
    :cond_0
    return-void
.end method
