.class Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;
.super Ljava/lang/Object;
.source "ExpandableListPopupBubbleWindow.java"

# interfaces
.implements Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;
.implements Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/ExpandableListPopupBubbleWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupExpandCollapseListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;


# direct methods
.method private constructor <init>(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 1852
    iput-object p1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/ExpandableListPopupBubbleWindow;Lcom/htc/widget/ExpandableListPopupBubbleWindow$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1852
    invoke-direct {p0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;-><init>(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)V

    return-void
.end method


# virtual methods
.method public onGroupCollapse(I)V
    .locals 4
    .parameter "groupPosition"

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$1500(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/ExpandableListPopupBubbleWindow$ResizePopupRunnable;
    invoke-static {v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$1400(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Lcom/htc/widget/ExpandableListPopupBubbleWindow$ResizePopupRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1861
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$1500(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/ExpandableListPopupBubbleWindow$ResizePopupRunnable;
    invoke-static {v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$1400(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Lcom/htc/widget/ExpandableListPopupBubbleWindow$ResizePopupRunnable;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1862
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mOnGroupCollapseListener:Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;
    invoke-static {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$1600(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1863
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mOnGroupCollapseListener:Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;
    invoke-static {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$1600(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 1865
    :cond_0
    return-void
.end method

.method public onGroupExpand(I)V
    .locals 8
    .parameter "groupPosition"

    .prologue
    .line 1872
    iget-object v4, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$1500(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/ExpandableListPopupBubbleWindow$ResizePopupRunnable;
    invoke-static {v5}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$1400(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Lcom/htc/widget/ExpandableListPopupBubbleWindow$ResizePopupRunnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1873
    iget-object v4, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$1500(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/ExpandableListPopupBubbleWindow$ResizePopupRunnable;
    invoke-static {v5}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$1400(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Lcom/htc/widget/ExpandableListPopupBubbleWindow$ResizePopupRunnable;

    move-result-object v5

    const-wide/16 v6, 0xa

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1874
    iget-object v4, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mOnGroupExpandListener:Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;
    invoke-static {v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$1700(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1875
    iget-object v4, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mOnGroupExpandListener:Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;
    invoke-static {v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$1700(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 1877
    :cond_0
    iget-object v4, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;
    invoke-static {v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$700(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    invoke-static {p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->getPackedPositionForGroup(I)J

    move-result-wide v2

    .line 1878
    .local v2, packedPosition:J
    iget-object v4, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;
    invoke-static {v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$700(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->getFlatListPosition(J)I

    move-result v1

    .line 1879
    .local v1, groupFlatPosition:I
    iget-object v4, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mAdapter:Landroid/widget/ExpandableListAdapter;
    invoke-static {v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$900(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Landroid/widget/ExpandableListAdapter;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v0

    .line 1880
    .local v0, childCount:I
    iget-object v4, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;
    invoke-static {v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$700(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    move-result-object v4

    add-int v5, v1, v0

    invoke-virtual {v4, v5, v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->smoothScrollToPosition(II)V

    .line 1881
    return-void
.end method
