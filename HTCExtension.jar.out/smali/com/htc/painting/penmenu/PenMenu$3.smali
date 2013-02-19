.class Lcom/htc/painting/penmenu/PenMenu$3;
.super Ljava/lang/Object;
.source "PenMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu/PenMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/penmenu/PenMenu;


# direct methods
.method constructor <init>(Lcom/htc/painting/penmenu/PenMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 447
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    sget-object v1, Lcom/htc/painting/penmenu/PenMenu$State;->SHOW:Lcom/htc/painting/penmenu/PenMenu$State;

    #calls: Lcom/htc/painting/penmenu/PenMenu;->setStateVisible(Lcom/htc/painting/penmenu/PenMenu$State;)V
    invoke-static {v0, v1}, Lcom/htc/painting/penmenu/PenMenu;->access$000(Lcom/htc/painting/penmenu/PenMenu;Lcom/htc/painting/penmenu/PenMenu$State;)V

    .line 455
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;
    invoke-static {v0}, Lcom/htc/painting/penmenu/PenMenu;->access$300(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/menu/Menu$State;

    move-result-object v0

    sget-object v1, Lcom/htc/painting/penmenu/menu/Menu$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Menu$State;

    if-ne v0, v1, :cond_0

    .line 456
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;
    invoke-static {v0}, Lcom/htc/painting/penmenu/PenMenu;->access$400(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/history/PenHistory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/history/PenHistory;->show(Z)V

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    const/4 v1, 0x0

    #setter for: Lcom/htc/painting/penmenu/PenMenu;->mAnimInProgress:Z
    invoke-static {v0, v1}, Lcom/htc/painting/penmenu/PenMenu;->access$102(Lcom/htc/painting/penmenu/PenMenu;Z)Z

    .line 459
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mStateMonitor:Lcom/htc/painting/penmenu/PenMenu$StateMonitor;
    invoke-static {v0}, Lcom/htc/painting/penmenu/PenMenu;->access$200(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/PenMenu$StateMonitor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mStateMonitor:Lcom/htc/painting/penmenu/PenMenu$StateMonitor;
    invoke-static {v0}, Lcom/htc/painting/penmenu/PenMenu;->access$200(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/PenMenu$StateMonitor;

    move-result-object v0

    sget-object v1, Lcom/htc/painting/penmenu/PenMenu$State;->SHOW:Lcom/htc/painting/penmenu/PenMenu$State;

    invoke-interface {v0, v1}, Lcom/htc/painting/penmenu/PenMenu$StateMonitor;->OnChanged(Lcom/htc/painting/penmenu/PenMenu$State;)V

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    new-instance v1, Lcom/htc/painting/penmenu/PenMenu$3$1;

    invoke-direct {v1, p0}, Lcom/htc/painting/penmenu/PenMenu$3$1;-><init>(Lcom/htc/painting/penmenu/PenMenu$3;)V

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/PenMenu;->post(Ljava/lang/Runnable;)Z

    .line 483
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 487
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 8
    .parameter "animation"

    .prologue
    const/4 v7, 0x0

    .line 493
    iget-object v4, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;
    invoke-static {v4}, Lcom/htc/painting/penmenu/PenMenu;->access$300(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/menu/Menu$State;

    move-result-object v4

    sget-object v5, Lcom/htc/painting/penmenu/menu/Menu$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Menu$State;

    if-ne v4, v5, :cond_0

    .line 494
    iget-object v4, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;
    invoke-static {v4}, Lcom/htc/painting/penmenu/PenMenu;->access$500(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/action/ActionPanel;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/painting/penmenu/action/ActionPanel;->setVisibility(I)V

    .line 498
    :cond_0
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 499
    .local v2, canvas:Landroid/graphics/Canvas;
    iget-object v4, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu/PenMenu;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v5}, Lcom/htc/painting/penmenu/PenMenu;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 500
    .local v1, cache:Landroid/graphics/Bitmap;
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 501
    iget-object v4, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v4, v2}, Lcom/htc/painting/penmenu/PenMenu;->draw(Landroid/graphics/Canvas;)V

    .line 503
    iget-object v4, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    sget-object v5, Lcom/htc/painting/penmenu/PenMenu$State;->HIDE:Lcom/htc/painting/penmenu/PenMenu$State;

    #calls: Lcom/htc/painting/penmenu/PenMenu;->setStateVisible(Lcom/htc/painting/penmenu/PenMenu$State;)V
    invoke-static {v4, v5}, Lcom/htc/painting/penmenu/PenMenu;->access$000(Lcom/htc/painting/penmenu/PenMenu;Lcom/htc/painting/penmenu/PenMenu$State;)V

    .line 505
    iget-object v4, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu/PenMenu;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v5}, Lcom/htc/painting/penmenu/PenMenu;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 506
    .local v0, blurredImage:Landroid/graphics/Bitmap;
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 507
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 508
    .local v3, paint:Landroid/graphics/Paint;
    const/16 v4, 0xc0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 509
    new-instance v4, Landroid/graphics/BlurMaskFilter;

    iget-object v5, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v5}, Lcom/htc/painting/penmenu/PenMenu;->getSize()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sget-object v6, Landroid/graphics/BlurMaskFilter$Blur;->INNER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v4, v5, v6}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 511
    invoke-virtual {v2, v1, v7, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 513
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 514
    const/4 v1, 0x0

    .line 516
    iget-object v4, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v6}, Lcom/htc/painting/penmenu/PenMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Lcom/htc/painting/penmenu/PenMenu;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 517
    return-void
.end method
