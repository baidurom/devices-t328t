.class Lcom/htc/widget/DeckControl$InternalPresentationListener;
.super Ljava/lang/Object;
.source "DeckControl.java"

# interfaces
.implements Lcom/htc/sunny/SPresentation$PresentationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/DeckControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalPresentationListener"
.end annotation


# instance fields
.field mAppListener:Lcom/htc/sunny/SPresentation$PresentationListener;

.field final synthetic this$0:Lcom/htc/widget/DeckControl;


# direct methods
.method private constructor <init>(Lcom/htc/widget/DeckControl;)V
    .locals 1
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/htc/widget/DeckControl$InternalPresentationListener;->this$0:Lcom/htc/widget/DeckControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/DeckControl$InternalPresentationListener;->mAppListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/DeckControl;Lcom/htc/widget/DeckControl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/htc/widget/DeckControl$InternalPresentationListener;-><init>(Lcom/htc/widget/DeckControl;)V

    return-void
.end method


# virtual methods
.method public onPresentationItemClick(I)V
    .locals 3
    .parameter "nPosition"

    .prologue
    const/4 v2, 0x0

    .line 276
    iget-object v0, p0, Lcom/htc/widget/DeckControl$InternalPresentationListener;->mAppListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/htc/widget/DeckControl$InternalPresentationListener;->mAppListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    invoke-interface {v0, p1}, Lcom/htc/sunny/SPresentation$PresentationListener;->onPresentationItemClick(I)V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/DeckControl$InternalPresentationListener;->this$0:Lcom/htc/widget/DeckControl;

    iget-object v0, v0, Lcom/htc/widget/DeckControl;->mClickListener:Lcom/htc/widget/DeckControl$OnItemClickListener;

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/htc/widget/DeckControl$InternalPresentationListener;->this$0:Lcom/htc/widget/DeckControl;

    #getter for: Lcom/htc/widget/DeckControl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/widget/DeckControl;->access$200(Lcom/htc/widget/DeckControl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/DeckControl$InternalPresentationListener;->this$0:Lcom/htc/widget/DeckControl;

    #getter for: Lcom/htc/widget/DeckControl;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/widget/DeckControl;->access$200(Lcom/htc/widget/DeckControl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 285
    :cond_1
    return-void
.end method

.method public onPresentationSelectionChange(I)V
    .locals 4
    .parameter "nPosition"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/htc/widget/DeckControl$InternalPresentationListener;->mAppListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/htc/widget/DeckControl$InternalPresentationListener;->mAppListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    invoke-interface {v0, p1}, Lcom/htc/sunny/SPresentation$PresentationListener;->onPresentationSelectionChange(I)V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/DeckControl$InternalPresentationListener;->this$0:Lcom/htc/widget/DeckControl;

    iget-object v0, v0, Lcom/htc/widget/DeckControl;->mSelectedListener:Lcom/htc/widget/DeckControl$OnItemSelectedListener;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/htc/widget/DeckControl$InternalPresentationListener;->this$0:Lcom/htc/widget/DeckControl;

    #getter for: Lcom/htc/widget/DeckControl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/widget/DeckControl;->access$200(Lcom/htc/widget/DeckControl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/DeckControl$InternalPresentationListener;->this$0:Lcom/htc/widget/DeckControl;

    #getter for: Lcom/htc/widget/DeckControl;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/widget/DeckControl;->access$200(Lcom/htc/widget/DeckControl;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 302
    :cond_1
    return-void
.end method

.method public onPresentationStateChange(I)V
    .locals 5
    .parameter "nState"

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x4

    .line 309
    iget-object v0, p0, Lcom/htc/widget/DeckControl$InternalPresentationListener;->mAppListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/htc/widget/DeckControl$InternalPresentationListener;->mAppListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    invoke-interface {v0, p1}, Lcom/htc/sunny/SPresentation$PresentationListener;->onPresentationStateChange(I)V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/DeckControl$InternalPresentationListener;->this$0:Lcom/htc/widget/DeckControl;

    iget-object v0, v0, Lcom/htc/widget/DeckControl;->mMoveListener:Lcom/htc/widget/DeckControl$OnMovementListener;

    if-eqz v0, :cond_1

    .line 314
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 316
    iget-object v0, p0, Lcom/htc/widget/DeckControl$InternalPresentationListener;->this$0:Lcom/htc/widget/DeckControl;

    #getter for: Lcom/htc/widget/DeckControl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/widget/DeckControl;->access$200(Lcom/htc/widget/DeckControl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/DeckControl$InternalPresentationListener;->this$0:Lcom/htc/widget/DeckControl;

    #getter for: Lcom/htc/widget/DeckControl;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/widget/DeckControl;->access$200(Lcom/htc/widget/DeckControl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 335
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/DeckControl$InternalPresentationListener;->this$0:Lcom/htc/widget/DeckControl;

    iget-object v0, v0, Lcom/htc/widget/DeckControl;->mFinMoveListener:Lcom/htc/widget/DeckControl$OnFinishedMovementListener;

    if-eqz v0, :cond_3

    .line 337
    if-eq p1, v3, :cond_2

    if-ne p1, v4, :cond_3

    .line 339
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/DeckControl$InternalPresentationListener;->this$0:Lcom/htc/widget/DeckControl;

    #getter for: Lcom/htc/widget/DeckControl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/widget/DeckControl;->access$200(Lcom/htc/widget/DeckControl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/DeckControl$InternalPresentationListener;->this$0:Lcom/htc/widget/DeckControl;

    #getter for: Lcom/htc/widget/DeckControl;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/widget/DeckControl;->access$200(Lcom/htc/widget/DeckControl;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 343
    :cond_3
    return-void

    .line 318
    :cond_4
    if-ne p1, v3, :cond_5

    .line 320
    iget-object v0, p0, Lcom/htc/widget/DeckControl$InternalPresentationListener;->this$0:Lcom/htc/widget/DeckControl;

    #getter for: Lcom/htc/widget/DeckControl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/widget/DeckControl;->access$200(Lcom/htc/widget/DeckControl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/DeckControl$InternalPresentationListener;->this$0:Lcom/htc/widget/DeckControl;

    #getter for: Lcom/htc/widget/DeckControl;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/widget/DeckControl;->access$200(Lcom/htc/widget/DeckControl;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 323
    :cond_5
    const/16 v0, 0x9

    if-ne p1, v0, :cond_6

    .line 325
    iget-object v0, p0, Lcom/htc/widget/DeckControl$InternalPresentationListener;->this$0:Lcom/htc/widget/DeckControl;

    #getter for: Lcom/htc/widget/DeckControl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/widget/DeckControl;->access$200(Lcom/htc/widget/DeckControl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/DeckControl$InternalPresentationListener;->this$0:Lcom/htc/widget/DeckControl;

    #getter for: Lcom/htc/widget/DeckControl;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/widget/DeckControl;->access$200(Lcom/htc/widget/DeckControl;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 328
    :cond_6
    if-ne p1, v4, :cond_1

    .line 330
    iget-object v0, p0, Lcom/htc/widget/DeckControl$InternalPresentationListener;->this$0:Lcom/htc/widget/DeckControl;

    #getter for: Lcom/htc/widget/DeckControl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/widget/DeckControl;->access$200(Lcom/htc/widget/DeckControl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/DeckControl$InternalPresentationListener;->this$0:Lcom/htc/widget/DeckControl;

    #getter for: Lcom/htc/widget/DeckControl;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/widget/DeckControl;->access$200(Lcom/htc/widget/DeckControl;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setAppListener(Lcom/htc/sunny/SPresentation$PresentationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 268
    iput-object p1, p0, Lcom/htc/widget/DeckControl$InternalPresentationListener;->mAppListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    .line 269
    return-void
.end method
