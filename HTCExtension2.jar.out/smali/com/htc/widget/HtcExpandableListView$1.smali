.class Lcom/htc/widget/HtcExpandableListView$1;
.super Ljava/lang/Object;
.source "HtcExpandableListView.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcExpandableListView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcExpandableListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1797
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView$1;->this$0:Lcom/htc/widget/HtcExpandableListView;

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

    .line 1802
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$1;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mIsFirstTimeDraw:Z
    invoke-static {v2}, Lcom/htc/widget/HtcExpandableListView;->access$700(Lcom/htc/widget/HtcExpandableListView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1803
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$1;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #setter for: Lcom/htc/widget/HtcExpandableListView;->mIsFirstTimeDraw:Z
    invoke-static {v2, v3}, Lcom/htc/widget/HtcExpandableListView;->access$702(Lcom/htc/widget/HtcExpandableListView;Z)Z

    .line 1804
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$1;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #calls: Lcom/htc/widget/HtcExpandableListView;->adjustFooterHeight()V
    invoke-static {v2}, Lcom/htc/widget/HtcExpandableListView;->access$800(Lcom/htc/widget/HtcExpandableListView;)V

    .line 1808
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$1;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-boolean v2, v2, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    if-nez v2, :cond_3

    add-int v2, p2, p3

    if-ge v2, p4, :cond_3

    .line 1809
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$1;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #calls: Lcom/htc/widget/HtcExpandableListView;->adjustFooterHeight()V
    invoke-static {v2}, Lcom/htc/widget/HtcExpandableListView;->access$800(Lcom/htc/widget/HtcExpandableListView;)V

    .line 1818
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$1;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v2, v2, Lcom/htc/widget/HtcExpandableListView;->mUserOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    if-eqz v2, :cond_2

    .line 1819
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$1;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v2, v2, Lcom/htc/widget/HtcExpandableListView;->mUserOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView$OnScrollListener;->onScroll(Lcom/htc/widget/HtcAbsListView;III)V

    .line 1820
    :cond_2
    return-void

    .line 1810
    :cond_3
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$1;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-boolean v2, v2, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    if-nez v2, :cond_1

    add-int v2, p2, p3

    if-ne v2, p4, :cond_1

    .line 1811
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$1;->this$0:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1812
    .local v0, firstView:Landroid/view/View;
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$1;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView$1;->this$0:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcExpandableListView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1813
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

    .line 1814
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$1;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #calls: Lcom/htc/widget/HtcExpandableListView;->adjustFooterHeight()V
    invoke-static {v2}, Lcom/htc/widget/HtcExpandableListView;->access$800(Lcom/htc/widget/HtcExpandableListView;)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 1
    .parameter "list"
    .parameter "scrollState"

    .prologue
    .line 1824
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$1;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v0, v0, Lcom/htc/widget/HtcExpandableListView;->mUserOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 1825
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$1;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v0, v0, Lcom/htc/widget/HtcExpandableListView;->mUserOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Lcom/htc/widget/HtcAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V

    .line 1826
    :cond_0
    return-void
.end method
