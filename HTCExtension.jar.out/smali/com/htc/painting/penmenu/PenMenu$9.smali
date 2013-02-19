.class Lcom/htc/painting/penmenu/PenMenu$9;
.super Ljava/lang/Object;
.source "PenMenu.java"

# interfaces
.implements Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;


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
    .line 2510
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu$9;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStrokeBegin(Lcom/htc/painting/engine/StrokeEventArg$StrokeMoveEventArg;)V
    .locals 6
    .parameter "e"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2522
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$9;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/PenMenu;->dismissPrompt()V

    .line 2524
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$9;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;
    invoke-static {v3}, Lcom/htc/painting/penmenu/PenMenu;->access$1700(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/Pen;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2525
    const-string v3, "PenMenu"

    const-string v4, "OnStrokeListener.onStrokeBegin - Please call restoreSetting first"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    :cond_0
    :goto_0
    return-void

    .line 2529
    :cond_1
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$9;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #calls: Lcom/htc/painting/penmenu/PenMenu;->onPainting()V
    invoke-static {v3}, Lcom/htc/painting/penmenu/PenMenu;->access$1800(Lcom/htc/painting/penmenu/PenMenu;)V

    .line 2531
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$9;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #calls: Lcom/htc/painting/penmenu/PenMenu;->getPaintingViewUndoRedo()V
    invoke-static {v3}, Lcom/htc/painting/penmenu/PenMenu;->access$1000(Lcom/htc/painting/penmenu/PenMenu;)V

    .line 2533
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$9;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v3, v4}, Lcom/htc/painting/penmenu/PenMenu;->setStrokeVisibleState(I)V

    .line 2535
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$9;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mIsEraserMode:Z
    invoke-static {v3}, Lcom/htc/painting/penmenu/PenMenu;->access$1900(Lcom/htc/painting/penmenu/PenMenu;)Z

    move-result v3

    if-eq v3, v4, :cond_0

    .line 2542
    const/4 v0, 0x0

    .line 2543
    .local v0, isEraser:Z
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$9;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;
    invoke-static {v3}, Lcom/htc/painting/penmenu/PenMenu;->access$1700(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/Pen;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/htc/painting/penmenu/Pen;->setUsed(Z)V

    .line 2544
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$9;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/PenMenu;->getCurrentPenType()I

    move-result v1

    .line 2545
    .local v1, penId:I
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$9;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v3, v1}, Lcom/htc/painting/penmenu/PenMenu;->getPenTypeItem(I)Lcom/htc/painting/penmenu/menu/PenTypeItem;

    move-result-object v2

    .line 2546
    .local v2, penTypeItem:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getPenType()Lcom/htc/painting/penmenu/PenType;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2547
    invoke-virtual {v2}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getPenType()Lcom/htc/painting/penmenu/PenType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/PenType;->isEraser()Z

    move-result v0

    .line 2552
    if-eqz v0, :cond_2

    .line 2553
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$9;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mWarningEraserForFirstStroke:Z
    invoke-static {v3}, Lcom/htc/painting/penmenu/PenMenu;->access$2000(Lcom/htc/painting/penmenu/PenMenu;)Z

    move-result v3

    if-ne v3, v4, :cond_0

    .line 2554
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$9;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #setter for: Lcom/htc/painting/penmenu/PenMenu;->mWarningEraserForFirstStroke:Z
    invoke-static {v3, v5}, Lcom/htc/painting/penmenu/PenMenu;->access$2002(Lcom/htc/painting/penmenu/PenMenu;Z)Z

    .line 2555
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$9;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x20403b0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2558
    :cond_2
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$9;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #setter for: Lcom/htc/painting/penmenu/PenMenu;->mWarningEraserForFirstStroke:Z
    invoke-static {v3, v5}, Lcom/htc/painting/penmenu/PenMenu;->access$2002(Lcom/htc/painting/penmenu/PenMenu;Z)Z

    goto :goto_0
.end method

.method public onStrokeEnd(Lcom/htc/painting/engine/StrokeEventArg$StrokeMoveEventArg;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 2518
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$9;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #calls: Lcom/htc/painting/penmenu/PenMenu;->getPaintingViewUndoRedo()V
    invoke-static {v0}, Lcom/htc/painting/penmenu/PenMenu;->access$1000(Lcom/htc/painting/penmenu/PenMenu;)V

    .line 2519
    return-void
.end method

.method public onStrokeStatusChange(Lcom/htc/painting/engine/StrokeEventArg$StrokeStatusChangeEventArg;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 2514
    return-void
.end method
