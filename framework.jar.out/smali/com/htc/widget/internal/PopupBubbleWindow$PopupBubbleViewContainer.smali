.class Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;
.super Landroid/widget/LinearLayout;
.source "PopupBubbleWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/internal/PopupBubbleWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupBubbleViewContainer"
.end annotation


# instance fields
.field private containerView:Landroid/widget/FrameLayout;

.field private firstView:Landroid/widget/ImageView;

.field private lastView:Landroid/widget/ImageView;

.field private previousDirection:I

.field final synthetic this$0:Lcom/htc/widget/internal/PopupBubbleWindow;


# direct methods
.method public constructor <init>(Lcom/htc/widget/internal/PopupBubbleWindow;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x8

    .line 2358
    iput-object p1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/widget/internal/PopupBubbleWindow;

    .line 2359
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2345
    iput-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    .line 2347
    iput-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    .line 2348
    iput-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    .line 2350
    const/high16 v1, -0x8000

    iput v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->previousDirection:I

    .line 2360
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->setChildrenDrawingOrderEnabled(Z)V

    .line 2362
    const/4 v0, -0x2

    .line 2365
    .local v0, parameter:I
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    .line 2366
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2367
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2369
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    .line 2370
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2371
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2374
    const/4 v0, -0x1

    .line 2376
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    .line 2377
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2378
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2382
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->addView(Landroid/view/View;)V

    .line 2383
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->addView(Landroid/view/View;)V

    .line 2384
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->addView(Landroid/view/View;)V

    .line 2385
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "child"
    .parameter "params"

    .prologue
    .line 2394
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 2397
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2398
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2400
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2402
    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 2588
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x52

    if-ne v2, v3, :cond_4

    .line 2590
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 2592
    invoke-virtual {p0}, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 2593
    .local v0, state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_1

    .line 2594
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 2607
    .end local v0           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_1
    :goto_0
    return v1

    .line 2597
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 2598
    invoke-virtual {p0}, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 2599
    .restart local v0       #state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2601
    iget-object v2, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v2}, Lcom/htc/widget/internal/PopupBubbleWindow;->dismiss()V

    goto :goto_0

    .line 2605
    .end local v0           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 2607
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 2617
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/widget/internal/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/PopupBubbleWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->access$1300(Lcom/htc/widget/internal/PopupBubbleWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/widget/internal/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/PopupBubbleWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->access$1300(Lcom/htc/widget/internal/PopupBubbleWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2619
    const/4 v0, 0x1

    .line 2621
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 2434
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 2435
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2437
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 3
    .parameter "childCount"
    .parameter "i"

    .prologue
    const/4 v0, 0x1

    .line 2646
    const/4 v1, 0x3

    if-le p1, v1, :cond_0

    .line 2647
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChildDrawingOrder():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2652
    :cond_0
    if-nez p2, :cond_2

    move p2, v0

    .line 2657
    .end local p2
    :cond_1
    :goto_0
    return p2

    .line 2654
    .restart local p2
    :cond_2
    if-ne p2, v0, :cond_1

    .line 2655
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 2563
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 2564
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 2567
    .local v1, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->getLeft()I

    move-result v3

    if-lt v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->getRight()I

    move-result v3

    if-gt v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->getTop()I

    move-result v3

    if-lt v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->getBottom()I

    move-result v3

    if-le v1, v3, :cond_1

    .line 2571
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v3}, Lcom/htc/widget/internal/PopupBubbleWindow;->dismiss()V

    .line 2577
    :goto_0
    return v2

    .line 2573
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 2574
    iget-object v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v3}, Lcom/htc/widget/internal/PopupBubbleWindow;->dismiss()V

    goto :goto_0

    .line 2577
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 2411
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 2412
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2414
    :cond_0
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .parameter "eventType"

    .prologue
    .line 2632
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/widget/internal/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/PopupBubbleWindow;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->access$1400(Lcom/htc/widget/internal/PopupBubbleWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2633
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/widget/internal/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/PopupBubbleWindow;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->access$1400(Lcom/htc/widget/internal/PopupBubbleWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2637
    :goto_0
    return-void

    .line 2635
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 2423
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 2424
    iget-object v0, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2426
    :cond_0
    return-void
.end method

.method public updateEnvironment()V
    .locals 7

    .prologue
    const/4 v2, -0x1

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 2447
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/widget/internal/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandDirection:I
    invoke-static {v1}, Lcom/htc/widget/internal/PopupBubbleWindow;->access$800(Lcom/htc/widget/internal/PopupBubbleWindow;)I

    move-result v1

    iget v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->previousDirection:I

    if-ne v1, v4, :cond_0

    .line 2504
    :goto_0
    return-void

    .line 2450
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2451
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/widget/internal/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandDirection:I
    invoke-static {v1}, Lcom/htc/widget/internal/PopupBubbleWindow;->access$800(Lcom/htc/widget/internal/PopupBubbleWindow;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2490
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2493
    .local v0, lparams:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2494
    invoke-virtual {p0}, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->getOrientation()I

    move-result v1

    if-ne v1, v5, :cond_3

    move v1, v2

    :goto_2
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2496
    invoke-virtual {p0}, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->getOrientation()I

    move-result v1

    if-ne v1, v5, :cond_2

    move v2, v3

    :cond_2
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2499
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2500
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2503
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/widget/internal/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandDirection:I
    invoke-static {v1}, Lcom/htc/widget/internal/PopupBubbleWindow;->access$800(Lcom/htc/widget/internal/PopupBubbleWindow;)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->previousDirection:I

    goto :goto_0

    .line 2453
    .end local v0           #lparams:Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_0
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2454
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2455
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/widget/internal/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/htc/widget/internal/PopupBubbleWindow;->access$900(Lcom/htc/widget/internal/PopupBubbleWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2457
    invoke-virtual {p0}, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->getOrientation()I

    move-result v1

    if-eq v1, v5, :cond_1

    .line 2458
    invoke-virtual {p0, v5}, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->setOrientation(I)V

    goto :goto_1

    .line 2462
    :pswitch_1
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2463
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2464
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/widget/internal/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/PopupBubbleWindow;->mBelowTriangledDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/htc/widget/internal/PopupBubbleWindow;->access$1000(Lcom/htc/widget/internal/PopupBubbleWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2466
    invoke-virtual {p0}, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->getOrientation()I

    move-result v1

    if-eq v1, v5, :cond_1

    .line 2467
    invoke-virtual {p0, v5}, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->setOrientation(I)V

    goto :goto_1

    .line 2471
    :pswitch_2
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2472
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2473
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/widget/internal/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandRightTriangledDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/htc/widget/internal/PopupBubbleWindow;->access$1100(Lcom/htc/widget/internal/PopupBubbleWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2475
    invoke-virtual {p0}, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->getOrientation()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2476
    invoke-virtual {p0, v3}, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->setOrientation(I)V

    goto/16 :goto_1

    .line 2480
    :pswitch_3
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2481
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2482
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/widget/internal/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandLeftTriangledDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/htc/widget/internal/PopupBubbleWindow;->access$1200(Lcom/htc/widget/internal/PopupBubbleWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2484
    invoke-virtual {p0}, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->getOrientation()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2485
    invoke-virtual {p0, v3}, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->setOrientation(I)V

    goto/16 :goto_1

    .restart local v0       #lparams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    move v1, v3

    .line 2494
    goto/16 :goto_2

    .line 2451
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public updateIndicatorOffset(II)V
    .locals 2
    .parameter "xoffset"
    .parameter "yoffset"

    .prologue
    .line 2514
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/widget/internal/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/PopupBubbleWindow;->mExpandDirection:I
    invoke-static {v1}, Lcom/htc/widget/internal/PopupBubbleWindow;->access$800(Lcom/htc/widget/internal/PopupBubbleWindow;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2555
    :goto_0
    return-void

    .line 2516
    :pswitch_0
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2517
    .local v0, lparams:Landroid/widget/LinearLayout$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2518
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2520
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #lparams:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2521
    .restart local v0       #lparams:Landroid/widget/LinearLayout$LayoutParams;
    neg-int v1, p2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2522
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2526
    .end local v0           #lparams:Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_1
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2527
    .restart local v0       #lparams:Landroid/widget/LinearLayout$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2528
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2530
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #lparams:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2531
    .restart local v0       #lparams:Landroid/widget/LinearLayout$LayoutParams;
    neg-int v1, p2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2532
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2536
    .end local v0           #lparams:Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_2
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2537
    .restart local v0       #lparams:Landroid/widget/LinearLayout$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2538
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2540
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #lparams:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2541
    .restart local v0       #lparams:Landroid/widget/LinearLayout$LayoutParams;
    neg-int v1, p1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2542
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2546
    .end local v0           #lparams:Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_3
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2547
    .restart local v0       #lparams:Landroid/widget/LinearLayout$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2548
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2550
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #lparams:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2551
    .restart local v0       #lparams:Landroid/widget/LinearLayout$LayoutParams;
    neg-int v1, p1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2552
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2514
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
