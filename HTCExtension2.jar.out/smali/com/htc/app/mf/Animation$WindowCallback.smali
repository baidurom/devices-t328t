.class Lcom/htc/app/mf/Animation$WindowCallback;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Landroid/view/Window$Callback;
.implements Landroid/view/Window$HtcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/mf/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowCallback"
.end annotation


# instance fields
.field private mLock:Ljava/lang/Object;

.field private mOnAnimationEndRunner:Ljava/lang/Runnable;

.field private mOnAttachedRunner:Ljava/lang/Runnable;

.field private mWrapped:Landroid/view/Window$Callback;

.field final synthetic this$0:Lcom/htc/app/mf/Animation;


# direct methods
.method public constructor <init>(Lcom/htc/app/mf/Animation;Landroid/view/Window$Callback;)V
    .locals 1
    .parameter
    .parameter "wrapped"

    .prologue
    .line 446
    iput-object p1, p0, Lcom/htc/app/mf/Animation$WindowCallback;->this$0:Lcom/htc/app/mf/Animation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 439
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mLock:Ljava/lang/Object;

    .line 447
    iput-object p2, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    .line 448
    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 511
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 514
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 523
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 526
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 535
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 538
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 548
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 551
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 560
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 563
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 572
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 575
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWrapped()Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    return-object v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 584
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 587
    :cond_0
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 594
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 597
    :cond_0
    return-void
.end method

.method public onAnimationEnd()V
    .locals 1

    .prologue
    .line 499
    const-string v0, "on window animation end!!"

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->d(Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mOnAnimationEndRunner:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mOnAnimationEndRunner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 504
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 475
    const-string v0, "window attached!!"

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->d(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mOnAttachedRunner:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mOnAttachedRunner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 496
    :cond_1
    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 607
    :cond_0
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 614
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 617
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .parameter "featureId"

    .prologue
    .line 626
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    .line 629
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 641
    :cond_0
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 648
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 651
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 660
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    .line 663
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 672
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 675
    :cond_0
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "view"
    .parameter "menu"

    .prologue
    .line 682
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 685
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v0

    .line 697
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .parameter "attrs"

    .prologue
    .line 707
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 710
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 717
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 720
    :cond_0
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .parameter "callback"

    .prologue
    .line 728
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 731
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnAnimationEndRunner(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 467
    iput-object p1, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mOnAnimationEndRunner:Ljava/lang/Runnable;

    .line 468
    return-void
.end method

.method public setOnAttachedRunner(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 463
    iput-object p1, p0, Lcom/htc/app/mf/Animation$WindowCallback;->mOnAttachedRunner:Ljava/lang/Runnable;

    .line 464
    return-void
.end method
