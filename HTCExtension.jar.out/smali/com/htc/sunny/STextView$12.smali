.class Lcom/htc/sunny/STextView$12;
.super Ljava/lang/Object;
.source "STextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/STextView;->setDisplaySize(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/STextView;

.field final synthetic val$nHeight:I

.field final synthetic val$nWidth:I


# direct methods
.method constructor <init>(Lcom/htc/sunny/STextView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, Lcom/htc/sunny/STextView$12;->this$0:Lcom/htc/sunny/STextView;

    iput p2, p0, Lcom/htc/sunny/STextView$12;->val$nWidth:I

    iput p3, p0, Lcom/htc/sunny/STextView$12;->val$nHeight:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 492
    iget-object v0, p0, Lcom/htc/sunny/STextView$12;->this$0:Lcom/htc/sunny/STextView;

    iget v1, p0, Lcom/htc/sunny/STextView$12;->val$nWidth:I

    iget v2, p0, Lcom/htc/sunny/STextView$12;->val$nHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/STextView;->setBackgroundDisplaySize(II)V

    .line 494
    iget-object v0, p0, Lcom/htc/sunny/STextView$12;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mDisplayW:I
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$700(Lcom/htc/sunny/STextView;)I

    move-result v0

    iget v1, p0, Lcom/htc/sunny/STextView$12;->val$nWidth:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/STextView$12;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mDisplayH:I
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$800(Lcom/htc/sunny/STextView;)I

    move-result v0

    iget v1, p0, Lcom/htc/sunny/STextView$12;->val$nHeight:I

    if-eq v0, v1, :cond_1

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/STextView$12;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mBitmapId:I
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$900(Lcom/htc/sunny/STextView;)I

    move-result v0

    invoke-static {v0}, Lcom/htc/sunny/SunnyEngine;->destroyBitmap(I)V

    .line 496
    iget-object v0, p0, Lcom/htc/sunny/STextView$12;->this$0:Lcom/htc/sunny/STextView;

    const/4 v1, 0x0

    #setter for: Lcom/htc/sunny/STextView;->mBitmapId:I
    invoke-static {v0, v1}, Lcom/htc/sunny/STextView;->access$902(Lcom/htc/sunny/STextView;I)I

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/STextView$12;->this$0:Lcom/htc/sunny/STextView;

    iget v1, p0, Lcom/htc/sunny/STextView$12;->val$nWidth:I

    #setter for: Lcom/htc/sunny/STextView;->mDisplayW:I
    invoke-static {v0, v1}, Lcom/htc/sunny/STextView;->access$702(Lcom/htc/sunny/STextView;I)I

    .line 500
    iget-object v0, p0, Lcom/htc/sunny/STextView$12;->this$0:Lcom/htc/sunny/STextView;

    iget v1, p0, Lcom/htc/sunny/STextView$12;->val$nHeight:I

    #setter for: Lcom/htc/sunny/STextView;->mDisplayH:I
    invoke-static {v0, v1}, Lcom/htc/sunny/STextView;->access$802(Lcom/htc/sunny/STextView;I)I

    .line 501
    iget-object v0, p0, Lcom/htc/sunny/STextView$12;->this$0:Lcom/htc/sunny/STextView;

    const/4 v1, 0x1

    #setter for: Lcom/htc/sunny/STextView;->mGenerateText:Z
    invoke-static {v0, v1}, Lcom/htc/sunny/STextView;->access$102(Lcom/htc/sunny/STextView;Z)Z

    .line 502
    iget-object v0, p0, Lcom/htc/sunny/STextView$12;->this$0:Lcom/htc/sunny/STextView;

    invoke-virtual {v0}, Lcom/htc/sunny/STextView;->invalidate3DView()V

    .line 503
    return-void
.end method
