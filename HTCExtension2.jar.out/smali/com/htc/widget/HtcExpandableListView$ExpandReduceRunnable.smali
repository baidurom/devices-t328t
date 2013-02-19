.class Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;
.super Ljava/lang/Object;
.source "HtcExpandableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandReduceRunnable"
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

.field private mExandedFlatPos:I

.field private mGroupPosition:I

.field private mHeightMovedDistance:I

.field private mIndex:I

.field private mInit:Z

.field private mMode:I

.field private mReduceViewCount:I

.field mSelf:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

.field private mStartTime:J

.field final synthetic this$0:Lcom/htc/widget/HtcExpandableListView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/HtcExpandableListView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2506
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2511
    iput v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mGroupPosition:I

    .line 2512
    iput v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mExandedFlatPos:I

    .line 2514
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mDistanceList:Ljava/util/ArrayList;

    .line 2515
    iput v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mReduceViewCount:I

    .line 2516
    iput v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mMode:I

    .line 2517
    iput-boolean v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mInit:Z

    .line 2518
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mStartTime:J

    .line 2519
    iput v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mIndex:I

    .line 2520
    iput v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mHeightMovedDistance:I

    .line 2521
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mDuration:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HtcExpandableListView;Lcom/htc/widget/HtcExpandableListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2506
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;-><init>(Lcom/htc/widget/HtcExpandableListView;)V

    return-void
.end method

.method private end()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 2559
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v3, v3, Lcom/htc/widget/HtcExpandableListView;->mCollapseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v3, :cond_0

    .line 2560
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v3, v3, Lcom/htc/widget/HtcExpandableListView;->mCollapseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v3}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 2563
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;
    invoke-static {v3}, Lcom/htc/widget/HtcExpandableListView;->access$1300(Lcom/htc/widget/HtcExpandableListView;)Lcom/htc/widget/HtcExpandableListConnector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcExpandableListConnector;->getCurrentExpandedGroup()I

    move-result v0

    .line 2565
    .local v0, collapsedGroup:I
    iget v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mGroupPosition:I

    if-le v0, v3, :cond_3

    .line 2566
    iget v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mReduceViewCount:I

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #calls: Lcom/htc/widget/HtcExpandableListView;->recoverChildren()V
    invoke-static {v3}, Lcom/htc/widget/HtcExpandableListView;->access$1100(Lcom/htc/widget/HtcExpandableListView;)V

    .line 2574
    :cond_1
    :goto_0
    if-ltz v0, :cond_2

    .line 2575
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;
    invoke-static {v3}, Lcom/htc/widget/HtcExpandableListView;->access$1300(Lcom/htc/widget/HtcExpandableListView;)Lcom/htc/widget/HtcExpandableListConnector;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcExpandableListConnector;->collapseGroupDuringAnimation(I)Z

    .line 2576
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mOnGroupCollapseListener:Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;
    invoke-static {v3}, Lcom/htc/widget/HtcExpandableListView;->access$3000(Lcom/htc/widget/HtcExpandableListView;)Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2577
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mOnGroupCollapseListener:Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;
    invoke-static {v3}, Lcom/htc/widget/HtcExpandableListView;->access$3000(Lcom/htc/widget/HtcExpandableListView;)Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 2582
    :cond_2
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #setter for: Lcom/htc/widget/HtcExpandableListView;->mShouldDrawFakeDivider:Z
    invoke-static {v3, v4}, Lcom/htc/widget/HtcExpandableListView;->access$1202(Lcom/htc/widget/HtcExpandableListView;Z)Z

    .line 2583
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iput-boolean v4, v3, Lcom/htc/widget/HtcExpandableListView;->mShouldDrawArrowDown:Z

    .line 2584
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcExpandableListView;->invalidate()V

    .line 2586
    iput v4, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mMode:I

    .line 2587
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mDistanceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2588
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mDuration:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2590
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcExpandableListView;->getHeaderViewsCount()I

    move-result v2

    .line 2591
    .local v2, headerViewsCount:I
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v3, v3, Lcom/htc/widget/HtcExpandableListView;->mMoveToTopRunnable:Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;

    iget v4, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mGroupPosition:I

    iget v5, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mExandedFlatPos:I

    add-int/2addr v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->start(II)V

    .line 2610
    return-void

    .line 2569
    .end local v2           #headerViewsCount:I
    :cond_3
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;
    invoke-static {v3}, Lcom/htc/widget/HtcExpandableListView;->access$1300(Lcom/htc/widget/HtcExpandableListView;)Lcom/htc/widget/HtcExpandableListConnector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcExpandableListConnector;->getCurrentExpandedGroupChildCount()I

    move-result v1

    .line 2570
    .local v1, currentExpandedGroupChildCount:I
    if-lez v1, :cond_1

    .line 2571
    iget v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mExandedFlatPos:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mExandedFlatPos:I

    goto :goto_0
.end method

.method private getTargetDistance()I
    .locals 8

    .prologue
    .line 2662
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2663
    .local v0, now:J
    const/4 v2, 0x0

    .line 2665
    .local v2, targetDistance:I
    iget-wide v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mStartTime:J

    sub-long v4, v0, v3

    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mDuration:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mIndex:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 2666
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2670
    :goto_0
    return v2

    .line 2668
    :cond_0
    iget-wide v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mStartTime:J

    sub-long v4, v0, v3

    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mIndex:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    mul-long/2addr v4, v6

    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mDuration:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mIndex:I

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
    .line 2614
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget v1, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mReduceViewCount:I

    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mDuration:Ljava/util/ArrayList;

    iget-wide v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mStartTime:J

    #calls: Lcom/htc/widget/HtcExpandableListView;->setReduceDuration(ILjava/util/ArrayList;J)I
    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/widget/HtcExpandableListView;->access$3100(Lcom/htc/widget/HtcExpandableListView;ILjava/util/ArrayList;J)I

    .line 2615
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mStartTime:J

    .line 2616
    iget v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mReduceViewCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mIndex:I

    .line 2617
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mHeightMovedDistance:I

    .line 2618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mInit:Z

    .line 2619
    return-void
.end method

.method private nextView()V
    .locals 3

    .prologue
    .line 2622
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mExpandReduceViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/HtcExpandableListView;->access$1500(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    #calls: Lcom/htc/widget/HtcExpandableListView;->setReduceViewHeight(Landroid/view/View;)V
    invoke-static {v1, v0}, Lcom/htc/widget/HtcExpandableListView;->access$3200(Lcom/htc/widget/HtcExpandableListView;Landroid/view/View;)V

    .line 2623
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mStartTime:J

    .line 2625
    iget v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mIndex:I

    .line 2626
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mHeightMovedDistance:I

    .line 2627
    iget v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mIndex:I

    if-gez v0, :cond_0

    .line 2628
    invoke-direct {p0}, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->end()V

    .line 2633
    :goto_0
    return-void

    .line 2631
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcExpandableListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2640
    iget v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mMode:I

    if-nez v2, :cond_0

    .line 2658
    :goto_0
    return-void

    .line 2642
    :cond_0
    iget-boolean v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mInit:Z

    if-nez v2, :cond_1

    .line 2643
    invoke-direct {p0}, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->init()V

    .line 2646
    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->getTargetDistance()I

    move-result v1

    .line 2648
    .local v1, targetDistance:I
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 2649
    invoke-direct {p0}, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->nextView()V

    .line 2650
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/HtcExpandableListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2654
    :cond_2
    iget v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mHeightMovedDistance:I

    sub-int v0, v1, v2

    .line 2655
    .local v0, step:I
    iput v1, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mHeightMovedDistance:I

    .line 2656
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mExpandReduceViewList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/widget/HtcExpandableListView;->access$1500(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    #calls: Lcom/htc/widget/HtcExpandableListView;->reduceViewHeight(Landroid/view/View;I)V
    invoke-static {v3, v2, v0}, Lcom/htc/widget/HtcExpandableListView;->access$3300(Lcom/htc/widget/HtcExpandableListView;Landroid/view/View;I)V

    .line 2657
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/HtcExpandableListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public start(II)V
    .locals 3
    .parameter "groupPos"
    .parameter "exandedFlatPos"

    .prologue
    .line 2528
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mStartTime:J

    .line 2529
    iput p1, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mGroupPosition:I

    .line 2530
    iput p2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mExandedFlatPos:I

    .line 2531
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #calls: Lcom/htc/widget/HtcExpandableListView;->getExpandReduceViewList()Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/widget/HtcExpandableListView;->access$2800(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;

    move-result-object v2

    #setter for: Lcom/htc/widget/HtcExpandableListView;->mExpandReduceViewList:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/htc/widget/HtcExpandableListView;->access$1502(Lcom/htc/widget/HtcExpandableListView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2532
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mExpandReduceViewList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/HtcExpandableListView;->access$1500(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mReduceViewCount:I

    .line 2534
    iget v1, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mReduceViewCount:I

    if-nez v1, :cond_0

    .line 2535
    invoke-direct {p0}, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->end()V

    .line 2556
    :goto_0
    return-void

    .line 2539
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mReduceViewCount:I

    if-ge v0, v1, :cond_1

    .line 2540
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/HtcExpandableListView;->access$1600(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mExpandReduceViewList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/HtcExpandableListView;->access$1500(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2541
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/HtcExpandableListView;->access$1600(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2539
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2543
    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mMode:I

    .line 2544
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mInit:Z

    .line 2548
    iget v1, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mReduceViewCount:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;
    invoke-static {v1}, Lcom/htc/widget/HtcExpandableListView;->access$1300(Lcom/htc/widget/HtcExpandableListView;)Lcom/htc/widget/HtcExpandableListConnector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcExpandableListConnector;->getCurrentExpandedGroup()I

    move-result v1

    iget v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mGroupPosition:I

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->mReduceViewCount:I

    #calls: Lcom/htc/widget/HtcExpandableListView;->reduceChildren(I)V
    invoke-static {v1, v2}, Lcom/htc/widget/HtcExpandableListView;->access$2900(Lcom/htc/widget/HtcExpandableListView;I)V

    .line 2553
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v1, v1, Lcom/htc/widget/HtcExpandableListView;->mCollapseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v1, :cond_3

    .line 2554
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v1, v1, Lcom/htc/widget/HtcExpandableListView;->mCollapseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v1}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 2555
    :cond_3
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcExpandableListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
