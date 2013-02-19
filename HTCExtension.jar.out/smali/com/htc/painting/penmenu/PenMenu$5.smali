.class Lcom/htc/painting/penmenu/PenMenu$5;
.super Ljava/lang/Object;
.source "PenMenu.java"

# interfaces
.implements Lcom/htc/painting/penmenu/OnActionPerformListener;


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
    .line 718
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu$5;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionPerform(I)Z
    .locals 5
    .parameter "actionId"

    .prologue
    const/4 v3, 0x0

    .line 721
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 726
    .local v1, startTime:J
    iget-object v4, p0, Lcom/htc/painting/penmenu/PenMenu$5;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v4, v3}, Lcom/htc/painting/penmenu/PenMenu;->setUseTime(Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 810
    :goto_0
    return v3

    .line 730
    :cond_0
    const/4 v0, 0x0

    .line 732
    .local v0, ignoreCallback:Z
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$5;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mOuterActionPerformListener:Lcom/htc/painting/penmenu/OnActionPerformListener;
    invoke-static {v3}, Lcom/htc/painting/penmenu/PenMenu;->access$700(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/OnActionPerformListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 733
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$5;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mOuterActionPerformListener:Lcom/htc/painting/penmenu/OnActionPerformListener;
    invoke-static {v3}, Lcom/htc/painting/penmenu/PenMenu;->access$700(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/OnActionPerformListener;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/htc/painting/penmenu/OnActionPerformListener;->onActionPerform(I)Z

    move-result v0

    .line 739
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 798
    :cond_2
    :goto_1
    const/16 v3, 0x64

    if-eq p1, v3, :cond_3

    const/16 v3, 0x190

    if-eq p1, v3, :cond_3

    const/16 v3, 0x12c

    if-ne p1, v3, :cond_4

    .line 804
    :cond_3
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$5;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #calls: Lcom/htc/painting/penmenu/PenMenu;->getPaintingViewUndoRedo()V
    invoke-static {v3}, Lcom/htc/painting/penmenu/PenMenu;->access$1000(Lcom/htc/painting/penmenu/PenMenu;)V

    .line 810
    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    .line 741
    :sswitch_0
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$5;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;
    invoke-static {v3}, Lcom/htc/painting/penmenu/PenMenu;->access$800(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    move-result-object v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    .line 746
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$5;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #calls: Lcom/htc/painting/penmenu/PenMenu;->setPaintingViewDisplayAlpha()V
    invoke-static {v3}, Lcom/htc/painting/penmenu/PenMenu;->access$900(Lcom/htc/painting/penmenu/PenMenu;)V

    goto :goto_1

    .line 754
    :sswitch_1
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$5;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;
    invoke-static {v3}, Lcom/htc/painting/penmenu/PenMenu;->access$800(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    move-result-object v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    .line 759
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$5;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;
    invoke-static {v3}, Lcom/htc/painting/penmenu/PenMenu;->access$800(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->clearAll()V

    goto :goto_1

    .line 767
    :sswitch_2
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$5;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;
    invoke-static {v3}, Lcom/htc/painting/penmenu/PenMenu;->access$800(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    move-result-object v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    .line 772
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$5;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;
    invoke-static {v3}, Lcom/htc/painting/penmenu/PenMenu;->access$800(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->undo()V

    goto :goto_1

    .line 780
    :sswitch_3
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$5;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;
    invoke-static {v3}, Lcom/htc/painting/penmenu/PenMenu;->access$800(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    move-result-object v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    .line 785
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$5;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;
    invoke-static {v3}, Lcom/htc/painting/penmenu/PenMenu;->access$800(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->redo()V

    goto :goto_1

    .line 739
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_2
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_1
        0x190 -> :sswitch_3
    .end sparse-switch
.end method
