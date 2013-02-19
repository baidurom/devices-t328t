.class Lcom/htc/widget/MoreExpandableHtcListView$1;
.super Ljava/lang/Object;
.source "MoreExpandableHtcListView.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/MoreExpandableHtcListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/MoreExpandableHtcListView;


# direct methods
.method constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 0
    .parameter

    .prologue
    .line 2560
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$1;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 4
    .parameter "list"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v3, 0x0

    .line 2565
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$1;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mIsFirstTimeDraw:Z
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$5300(Lcom/htc/widget/MoreExpandableHtcListView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2566
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$1;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #setter for: Lcom/htc/widget/MoreExpandableHtcListView;->mIsFirstTimeDraw:Z
    invoke-static {v2, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->access$5302(Lcom/htc/widget/MoreExpandableHtcListView;Z)Z

    .line 2567
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$1;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->adjustFooterHeight()V
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1100(Lcom/htc/widget/MoreExpandableHtcListView;)V

    .line 2571
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$1;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationRunning:Z
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1000(Lcom/htc/widget/MoreExpandableHtcListView;)Z

    move-result v2

    if-nez v2, :cond_3

    add-int v2, p2, p3

    if-ge v2, p4, :cond_3

    .line 2572
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$1;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->adjustFooterHeight()V
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1100(Lcom/htc/widget/MoreExpandableHtcListView;)V

    .line 2580
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$1;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, v2, Lcom/htc/widget/MoreExpandableHtcListView;->mUserOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    if-eqz v2, :cond_2

    .line 2581
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$1;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, v2, Lcom/htc/widget/MoreExpandableHtcListView;->mUserOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView$OnScrollListener;->onScroll(Lcom/htc/widget/HtcAbsListView;III)V

    .line 2582
    :cond_2
    return-void

    .line 2573
    :cond_3
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$1;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationRunning:Z
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1000(Lcom/htc/widget/MoreExpandableHtcListView;)Z

    move-result v2

    if-nez v2, :cond_1

    add-int v2, p2, p3

    if-ne v2, p4, :cond_1

    .line 2574
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$1;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2575
    .local v0, firstView:Landroid/view/View;
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$1;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$1;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2576
    .local v1, lastView:Landroid/view/View;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Lcom/htc/widget/HtcAbsListView;->getPaddingTop()I

    move-result v3

    if-gt v2, v3, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-lez v2, :cond_1

    .line 2577
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$1;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->adjustFooterHeight()V
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1100(Lcom/htc/widget/MoreExpandableHtcListView;)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 1
    .parameter "list"
    .parameter "scrollState"

    .prologue
    .line 2586
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$1;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v0, v0, Lcom/htc/widget/MoreExpandableHtcListView;->mUserOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2587
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$1;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v0, v0, Lcom/htc/widget/MoreExpandableHtcListView;->mUserOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Lcom/htc/widget/HtcAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V

    .line 2588
    :cond_0
    return-void
.end method
