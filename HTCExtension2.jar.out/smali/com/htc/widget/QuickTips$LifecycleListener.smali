.class public Lcom/htc/widget/QuickTips$LifecycleListener;
.super Landroid/app/Fragment;
.source "QuickTips.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/QuickTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LifecycleListener"
.end annotation


# instance fields
.field private screenLockReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 342
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 344
    new-instance v0, Lcom/htc/widget/QuickTips$LifecycleListener$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/QuickTips$LifecycleListener$1;-><init>(Lcom/htc/widget/QuickTips$LifecycleListener;)V

    iput-object v0, p0, Lcom/htc/widget/QuickTips$LifecycleListener;->screenLockReceiver:Landroid/content/BroadcastReceiver;

    .line 358
    invoke-virtual {p0}, Lcom/htc/widget/QuickTips$LifecycleListener;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/QuickTips$LifecycleListener;->screenLockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 359
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 418
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 419
    invoke-virtual {p0}, Lcom/htc/widget/QuickTips$LifecycleListener;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/QuickTips$LifecycleListener;->screenLockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 420
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 397
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 398
    invoke-static {}, Lcom/htc/widget/QuickTips;->access$1200()Lcom/htc/view/animation/QuickTipsAnimationView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 399
    invoke-static {}, Lcom/htc/widget/QuickTips;->access$1200()Lcom/htc/view/animation/QuickTipsAnimationView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/view/animation/QuickTipsAnimationView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 400
    invoke-static {}, Lcom/htc/widget/QuickTips;->access$1200()Lcom/htc/view/animation/QuickTipsAnimationView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/view/animation/QuickTipsAnimationView;->setVisibility(I)V

    .line 401
    invoke-virtual {p0}, Lcom/htc/widget/QuickTips$LifecycleListener;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 402
    .local v1, sbm:Landroid/app/StatusBarManager;
    if-eqz v1, :cond_1

    .line 404
    :try_start_0
    const-string v2, "QuickTips"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 405
    const-string v2, "QuickTips"

    const-string v3, "enable status bar"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    .end local v1           #sbm:Landroid/app/StatusBarManager;
    :cond_1
    :goto_0
    return-void

    .line 409
    .restart local v1       #sbm:Landroid/app/StatusBarManager;
    :catch_0
    move-exception v0

    .line 410
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "QuickTips"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 366
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 367
    invoke-virtual {p0}, Lcom/htc/widget/QuickTips$LifecycleListener;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/widget/QuickTips$LifecycleListener;->getActivity()Landroid/app/Activity;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    .line 369
    .local v0, keygauardLocked:Z
    invoke-static {}, Lcom/htc/widget/QuickTips;->access$1200()Lcom/htc/view/animation/QuickTipsAnimationView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 370
    invoke-static {}, Lcom/htc/widget/QuickTips;->access$1200()Lcom/htc/view/animation/QuickTipsAnimationView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/view/animation/QuickTipsAnimationView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 371
    if-eqz v0, :cond_2

    .line 372
    invoke-static {}, Lcom/htc/widget/QuickTips;->access$1200()Lcom/htc/view/animation/QuickTipsAnimationView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/view/animation/QuickTipsAnimationView;->setVisibility(I)V

    .line 376
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/QuickTips$LifecycleListener;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 377
    .local v1, sbm:Landroid/app/StatusBarManager;
    if-eqz v1, :cond_1

    .line 379
    :try_start_0
    const-string v2, "QuickTips"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    const-string v2, "QuickTips"

    const-string v3, "disable status bar"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_0
    const/high16 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 384
    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapse()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    .end local v1           #sbm:Landroid/app/StatusBarManager;
    :cond_1
    :goto_1
    return-void

    .line 374
    :cond_2
    invoke-static {}, Lcom/htc/widget/QuickTips;->access$1200()Lcom/htc/view/animation/QuickTipsAnimationView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/view/animation/QuickTipsAnimationView;->setVisibility(I)V

    goto :goto_0

    .line 385
    .restart local v1       #sbm:Landroid/app/StatusBarManager;
    :catch_0
    move-exception v2

    goto :goto_1
.end method
