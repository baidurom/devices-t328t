.class Lcom/htc/widget/HtcGridView$1;
.super Ljava/lang/Object;
.source "HtcGridView.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$ScrollToCorrectPosListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcGridView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcGridView;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/htc/widget/HtcGridView$1;->this$0:Lcom/htc/widget/HtcGridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 155
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$1;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mResetToLastPos:Z
    invoke-static {v0}, Lcom/htc/widget/HtcGridView;->access$000(Lcom/htc/widget/HtcGridView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcGridView$1;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mFirstAddedPos:I
    invoke-static {v0}, Lcom/htc/widget/HtcGridView;->access$100(Lcom/htc/widget/HtcGridView;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcGridView$1;->this$0:Lcom/htc/widget/HtcGridView;

    iget v1, v1, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcGridView$1;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mFirstAddedPos:I
    invoke-static {v0}, Lcom/htc/widget/HtcGridView;->access$100(Lcom/htc/widget/HtcGridView;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcGridView$1;->this$0:Lcom/htc/widget/HtcGridView;

    iget v1, v1, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iget-object v2, p0, Lcom/htc/widget/HtcGridView$1;->this$0:Lcom/htc/widget/HtcGridView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_2

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$1;->this$0:Lcom/htc/widget/HtcGridView;

    iput-boolean v3, v0, Lcom/htc/widget/HtcAbsListView;->mScrollForAddAnimation:Z

    .line 158
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$1;->this$0:Lcom/htc/widget/HtcGridView;

    iput-boolean v3, v0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    .line 159
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$1;->this$0:Lcom/htc/widget/HtcGridView;

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mScrollToAddedPositionListener:Lcom/htc/widget/HtcAbsListView$scrollToAddedPositionListener;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$1;->this$0:Lcom/htc/widget/HtcGridView;

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mScrollToAddedPositionListener:Lcom/htc/widget/HtcAbsListView$scrollToAddedPositionListener;

    invoke-interface {v0}, Lcom/htc/widget/HtcAbsListView$scrollToAddedPositionListener;->onScrollEnd()V

    .line 166
    :cond_1
    :goto_0
    return-void

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$1;->this$0:Lcom/htc/widget/HtcGridView;

    iget-object v1, p0, Lcom/htc/widget/HtcGridView$1;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mFirstAddedPos:I
    invoke-static {v1}, Lcom/htc/widget/HtcGridView;->access$100(Lcom/htc/widget/HtcGridView;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/htc/widget/HtcGridView;->smoothScrollToPositionFromTop(II)V

    goto :goto_0
.end method
