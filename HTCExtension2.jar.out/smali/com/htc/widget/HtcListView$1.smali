.class Lcom/htc/widget/HtcListView$1;
.super Ljava/lang/Object;
.source "HtcListView.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$ScrollToCorrectPosListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcListView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcListView;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/htc/widget/HtcListView$1;->this$0:Lcom/htc/widget/HtcListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollEnd()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 331
    iget-object v0, p0, Lcom/htc/widget/HtcListView$1;->this$0:Lcom/htc/widget/HtcListView;

    #getter for: Lcom/htc/widget/HtcListView;->mResetToLastPos:Z
    invoke-static {v0}, Lcom/htc/widget/HtcListView;->access$100(Lcom/htc/widget/HtcListView;)Z

    move-result v0

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcListView$1;->this$0:Lcom/htc/widget/HtcListView;

    #getter for: Lcom/htc/widget/HtcListView;->mFirstAddedPos:I
    invoke-static {v0}, Lcom/htc/widget/HtcListView;->access$200(Lcom/htc/widget/HtcListView;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcListView$1;->this$0:Lcom/htc/widget/HtcListView;

    iget v1, v1, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListView$1;->this$0:Lcom/htc/widget/HtcListView;

    #getter for: Lcom/htc/widget/HtcListView;->mFirstAddedPos:I
    invoke-static {v0}, Lcom/htc/widget/HtcListView;->access$200(Lcom/htc/widget/HtcListView;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcListView$1;->this$0:Lcom/htc/widget/HtcListView;

    iget v1, v1, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iget-object v2, p0, Lcom/htc/widget/HtcListView$1;->this$0:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListView$1;->this$0:Lcom/htc/widget/HtcListView;

    #getter for: Lcom/htc/widget/HtcListView;->mScrollCount:I
    invoke-static {v0}, Lcom/htc/widget/HtcListView;->access$300(Lcom/htc/widget/HtcListView;)I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_3

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListView$1;->this$0:Lcom/htc/widget/HtcListView;

    iput-boolean v3, v0, Lcom/htc/widget/HtcAbsListView;->mScrollForAddAnimation:Z

    .line 334
    iget-object v0, p0, Lcom/htc/widget/HtcListView$1;->this$0:Lcom/htc/widget/HtcListView;

    iput-boolean v3, v0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    .line 335
    iget-object v0, p0, Lcom/htc/widget/HtcListView$1;->this$0:Lcom/htc/widget/HtcListView;

    #setter for: Lcom/htc/widget/HtcListView;->mScrollEnd:Z
    invoke-static {v0, v4}, Lcom/htc/widget/HtcListView;->access$402(Lcom/htc/widget/HtcListView;Z)Z

    .line 336
    iget-object v0, p0, Lcom/htc/widget/HtcListView$1;->this$0:Lcom/htc/widget/HtcListView;

    #setter for: Lcom/htc/widget/HtcListView;->mScrollCount:I
    invoke-static {v0, v3}, Lcom/htc/widget/HtcListView;->access$302(Lcom/htc/widget/HtcListView;I)I

    .line 337
    iget-object v0, p0, Lcom/htc/widget/HtcListView$1;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mScrollToAddedPositionListener:Lcom/htc/widget/HtcAbsListView$scrollToAddedPositionListener;

    if-eqz v0, :cond_2

    .line 338
    iget-object v0, p0, Lcom/htc/widget/HtcListView$1;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mScrollToAddedPositionListener:Lcom/htc/widget/HtcAbsListView$scrollToAddedPositionListener;

    invoke-interface {v0}, Lcom/htc/widget/HtcAbsListView$scrollToAddedPositionListener;->onScrollEnd()V

    .line 345
    :cond_2
    :goto_0
    return-void

    .line 342
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HtcListView$1;->this$0:Lcom/htc/widget/HtcListView;

    invoke-static {v0}, Lcom/htc/widget/HtcListView;->access$308(Lcom/htc/widget/HtcListView;)I

    .line 343
    iget-object v0, p0, Lcom/htc/widget/HtcListView$1;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/widget/HtcListView$1;->this$0:Lcom/htc/widget/HtcListView;

    #getter for: Lcom/htc/widget/HtcListView;->mFirstAddedPos:I
    invoke-static {v1}, Lcom/htc/widget/HtcListView;->access$200(Lcom/htc/widget/HtcListView;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/htc/widget/HtcListView;->smoothScrollToPositionFromTop(II)V

    goto :goto_0
.end method
