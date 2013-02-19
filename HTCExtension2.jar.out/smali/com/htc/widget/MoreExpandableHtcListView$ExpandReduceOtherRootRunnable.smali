.class Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;
.super Ljava/lang/Object;
.source "MoreExpandableHtcListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/MoreExpandableHtcListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandReduceOtherRootRunnable"
.end annotation


# static fields
.field private static final MOVE_MODE:I = 0x1

.field private static final STOP_MODE:I


# instance fields
.field private mDistanceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandedGroupFlatPos:I

.field mExpandedGroupItemInfo:Lcom/htc/widget/MoreExpandableItemInfo;

.field private mHeightMovedDistance:I

.field private mIndex:I

.field private mInit:Z

.field private mMode:I

.field private mPosition:I

.field private mReduceViewCount:I

.field mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

.field private mStartTime:J

.field final synthetic this$0:Lcom/htc/widget/MoreExpandableHtcListView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1725
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1730
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mPosition:I

    .line 1732
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mDistanceList:Ljava/util/ArrayList;

    .line 1733
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mReduceViewCount:I

    .line 1734
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mMode:I

    .line 1735
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mInit:Z

    .line 1736
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mStartTime:J

    .line 1737
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    .line 1738
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mHeightMovedDistance:I

    .line 1739
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mDuration:Ljava/util/ArrayList;

    .line 1744
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mExpandedGroupFlatPos:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1725
    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    return-void
.end method

.method private end()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 1794
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v0, v0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 1795
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v0, v0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 1798
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getExpandedRootPosition()I

    move-result v8

    .line 1799
    .local v8, expandedRootPosition:I
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getMoreExpandableItemInfo(I)Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v7

    .line 1800
    .local v7, expandedRootItemInfo:Lcom/htc/widget/MoreExpandableItemInfo;
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mExpandedGroupFlatPos:I

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mPosition:I

    if-le v0, v1, :cond_3

    .line 1801
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mReduceViewCount:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mExpandedGroupItemInfo:Lcom/htc/widget/MoreExpandableItemInfo;

    const/4 v2, 0x1

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->recoverChildren(Lcom/htc/widget/MoreExpandableItemInfo;Z)V
    invoke-static {v0, v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1700(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableItemInfo;Z)V

    .line 1814
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mExpandedGroupItemInfo:Lcom/htc/widget/MoreExpandableItemInfo;

    if-eqz v0, :cond_2

    .line 1816
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mExpandedGroupFlatPos:I

    invoke-virtual {v0, v1, v7}, Lcom/htc/widget/MoreExpandableBaseAdapter;->collapseGroup(ILcom/htc/widget/MoreExpandableItemInfo;)I

    .line 1819
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->invalidate()V

    .line 1821
    iput v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mMode:I

    .line 1822
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mDistanceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1823
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mDuration:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1835
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mMoveToTopRunnable:Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3300(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mPosition:I

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->start(ILcom/htc/widget/MoreExpandableItemInfo;ILcom/htc/widget/MoreExpandableItemInfo;I)V

    .line 1842
    return-void

    .line 1802
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mExpandedGroupItemInfo:Lcom/htc/widget/MoreExpandableItemInfo;

    if-eqz v0, :cond_1

    .line 1804
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mExpandedGroupItemInfo:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildrenCount()I

    move-result v6

    .line 1805
    .local v6, currentExpandedGroupChildCount:I
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mExpandedGroupItemInfo:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1806
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mExpandedGroupItemInfo:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v0

    add-int/2addr v6, v0

    .line 1809
    :cond_4
    if-lez v6, :cond_1

    .line 1810
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mPosition:I

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mPosition:I

    goto :goto_0
.end method

.method private getTargetDistance()I
    .locals 8

    .prologue
    .line 1897
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1898
    .local v0, now:J
    const/4 v2, 0x0

    .line 1900
    .local v2, targetDistance:I
    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mStartTime:J

    sub-long v4, v0, v3

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mDuration:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 1901
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1905
    :goto_0
    return v2

    .line 1903
    :cond_0
    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mStartTime:J

    sub-long v4, v0, v3

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    mul-long/2addr v4, v6

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mDuration:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    div-long v3, v4, v6

    long-to-int v2, v3

    goto :goto_0
.end method

.method private init()V
    .locals 5

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mReduceViewCount:I

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mDuration:Ljava/util/ArrayList;

    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mStartTime:J

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->setReduceDuration(ILjava/util/ArrayList;J)I
    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3700(Lcom/htc/widget/MoreExpandableHtcListView;ILjava/util/ArrayList;J)I

    .line 1847
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mStartTime:J

    .line 1848
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mReduceViewCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    .line 1849
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mHeightMovedDistance:I

    .line 1850
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mInit:Z

    .line 1851
    return-void
.end method

.method private nextView()V
    .locals 3

    .prologue
    .line 1854
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4100(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->setReduceViewHeight(Landroid/view/View;)V
    invoke-static {v1, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3800(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;)V

    .line 1855
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mStartTime:J

    .line 1856
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    .line 1857
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mHeightMovedDistance:I

    .line 1858
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    if-gez v0, :cond_0

    .line 1859
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->end()V

    .line 1864
    :goto_0
    return-void

    .line 1862
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1871
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mMode:I

    if-nez v2, :cond_0

    .line 1893
    :goto_0
    return-void

    .line 1873
    :cond_0
    iget-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mInit:Z

    if-nez v2, :cond_1

    .line 1874
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->init()V

    .line 1876
    :cond_1
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    if-gez v2, :cond_2

    .line 1877
    const-string v2, "MoreExpandableHtcListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ExpandReduceOtherRootRunnable.run():  mIndex < 0 (="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), mReduceViewCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mReduceViewCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->end()V

    goto :goto_0

    .line 1881
    :cond_2
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->getTargetDistance()I

    move-result v1

    .line 1883
    .local v1, targetDistance:I
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 1884
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->nextView()V

    .line 1885
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1889
    :cond_3
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mHeightMovedDistance:I

    sub-int v0, v1, v2

    .line 1890
    .local v0, step:I
    iput v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mHeightMovedDistance:I

    .line 1891
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4100(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->reduceViewHeight(Landroid/view/View;I)V
    invoke-static {v3, v2, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3900(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;I)V

    .line 1892
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public start(ILcom/htc/widget/MoreExpandableItemInfo;)V
    .locals 6
    .parameter "position"
    .parameter "self"

    .prologue
    const/4 v5, 0x1

    .line 1752
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mStartTime:J

    .line 1753
    iput p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mPosition:I

    .line 1754
    iput-object p2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    .line 1756
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    #setter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandedTargetItem:Lcom/htc/widget/MoreExpandableItemInfo;
    invoke-static {v2, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1502(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableItemInfo;)Lcom/htc/widget/MoreExpandableItemInfo;

    .line 1757
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mExpandedGroupItemInfo:Lcom/htc/widget/MoreExpandableItemInfo;

    .line 1758
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mExpandedGroupFlatPos:I

    .line 1760
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->getExpandReduceOtherRootViewList()Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4200(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v3

    #setter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4102(Lcom/htc/widget/MoreExpandableHtcListView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1761
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4100(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mReduceViewCount:I

    .line 1763
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mReduceViewCount:I

    if-nez v2, :cond_0

    .line 1764
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->end()V

    .line 1791
    :goto_0
    return-void

    .line 1768
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mReduceViewCount:I

    if-ge v0, v2, :cond_1

    .line 1769
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4300(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4100(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1770
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4300(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1768
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1772
    :cond_1
    iput v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mMode:I

    .line 1773
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mInit:Z

    .line 1776
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpandedPosition()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mExpandedGroupFlatPos:I

    .line 1777
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v2

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mExpandedGroupFlatPos:I

    invoke-virtual {v2, v3}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getMoreExpandableItemInfo(I)Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mExpandedGroupItemInfo:Lcom/htc/widget/MoreExpandableItemInfo;

    .line 1778
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mReduceViewCount:I

    if-lez v2, :cond_3

    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mExpandedGroupFlatPos:I

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mPosition:I

    if-le v2, v3, :cond_3

    .line 1780
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mExpandedGroupItemInfo:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v2}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v1

    .line 1781
    .local v1, level:I
    if-lez v1, :cond_2

    .line 1782
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mReduceViewCount:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mReduceViewCount:I

    .line 1784
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mExpandedGroupItemInfo:Lcom/htc/widget/MoreExpandableItemInfo;

    iget v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mReduceViewCount:I

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->reduceChildren(Lcom/htc/widget/MoreExpandableItemInfo;IZ)V
    invoke-static {v2, v3, v4, v5}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3200(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableItemInfo;IZ)V

    .line 1788
    .end local v1           #level:I
    :cond_3
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, v2, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v2, :cond_4

    .line 1789
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, v2, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v2}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 1790
    :cond_4
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
