.class Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;
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
    name = "CollapseReduceRunnable"
.end annotation


# static fields
.field private static final MOVE_MODE:I = 0x1

.field private static final STOP_MODE:I


# instance fields
.field private mCollapsedFlatPosition:I

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

.field private mGroupPosition:I

.field private mHeightMovedDistance:I

.field private mIndex:I

.field private mInit:Z

.field private mMode:I

.field private mReduceViewCount:I

.field private mStartTime:J

.field final synthetic this$0:Lcom/htc/widget/HtcExpandableListView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/HtcExpandableListView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2679
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2684
    iput v2, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mCollapsedFlatPosition:I

    .line 2685
    iput v2, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mGroupPosition:I

    .line 2687
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mDistanceList:Ljava/util/ArrayList;

    .line 2688
    iput v2, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mReduceViewCount:I

    .line 2689
    iput v2, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mMode:I

    .line 2690
    iput-boolean v2, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mInit:Z

    .line 2691
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mStartTime:J

    .line 2692
    iput v2, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mIndex:I

    .line 2693
    iput v2, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mHeightMovedDistance:I

    .line 2694
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mDuration:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HtcExpandableListView;Lcom/htc/widget/HtcExpandableListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2679
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;-><init>(Lcom/htc/widget/HtcExpandableListView;)V

    return-void
.end method

.method private end()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2729
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v0, v0, Lcom/htc/widget/HtcExpandableListView;->mCollapseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 2730
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v0, v0, Lcom/htc/widget/HtcExpandableListView;->mCollapseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 2733
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #calls: Lcom/htc/widget/HtcExpandableListView;->recoverChildren()V
    invoke-static {v0}, Lcom/htc/widget/HtcExpandableListView;->access$1100(Lcom/htc/widget/HtcExpandableListView;)V

    .line 2734
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #setter for: Lcom/htc/widget/HtcExpandableListView;->mShouldDrawFakeDivider:Z
    invoke-static {v0, v2}, Lcom/htc/widget/HtcExpandableListView;->access$1202(Lcom/htc/widget/HtcExpandableListView;Z)Z

    .line 2735
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iput-boolean v2, v0, Lcom/htc/widget/HtcExpandableListView;->mShouldDrawArrowDown:Z

    .line 2736
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcExpandableListView;->invalidate()V

    .line 2738
    iput v2, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mMode:I

    .line 2739
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mDistanceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2740
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mDuration:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2741
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;
    invoke-static {v0}, Lcom/htc/widget/HtcExpandableListView;->access$1300(Lcom/htc/widget/HtcExpandableListView;)Lcom/htc/widget/HtcExpandableListConnector;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mGroupPosition:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcExpandableListConnector;->collapseGroupDuringAnimation(I)Z

    .line 2742
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #calls: Lcom/htc/widget/HtcExpandableListView;->recoverCollapseReduceViewList()V
    invoke-static {v0}, Lcom/htc/widget/HtcExpandableListView;->access$3700(Lcom/htc/widget/HtcExpandableListView;)V

    .line 2744
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;
    invoke-static {v0}, Lcom/htc/widget/HtcExpandableListView;->access$1300(Lcom/htc/widget/HtcExpandableListView;)Lcom/htc/widget/HtcExpandableListConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcExpandableListConnector;->unSetHideViewFlag()V

    .line 2745
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mAnimatedViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/HtcExpandableListView;->access$900(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2746
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mAnimatedViewHeightList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/HtcExpandableListView;->access$1400(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2747
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mCollapseReduceViewHeightList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/HtcExpandableListView;->access$3600(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2748
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mCollapseReduceViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/HtcExpandableListView;->access$3400(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2749
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v1, v1, Lcom/htc/widget/HtcExpandableListView;->mResetFooterHeight:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcExpandableListView;->post(Ljava/lang/Runnable;)Z

    .line 2753
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcExpandableListView;->setFastScrollEnabled(Z)V

    .line 2754
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget v1, v1, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFastScroller;->updateFirstVisibleItemPosition(I)V

    .line 2755
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iput-boolean v2, v0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    .line 2756
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v0, v0, Lcom/htc/widget/HtcExpandableListView;->mAnimationListener:Lcom/htc/widget/HtcExpandableListView$AnimationListener;

    if-eqz v0, :cond_1

    .line 2757
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v0, v0, Lcom/htc/widget/HtcExpandableListView;->mAnimationListener:Lcom/htc/widget/HtcExpandableListView$AnimationListener;

    invoke-interface {v0}, Lcom/htc/widget/HtcExpandableListView$AnimationListener;->onAnimationEnd()V

    .line 2759
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mOnGroupCollapseListener:Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;
    invoke-static {v0}, Lcom/htc/widget/HtcExpandableListView;->access$3000(Lcom/htc/widget/HtcExpandableListView;)Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2760
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mOnGroupCollapseListener:Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;
    invoke-static {v0}, Lcom/htc/widget/HtcExpandableListView;->access$3000(Lcom/htc/widget/HtcExpandableListView;)Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mCollapsedFlatPosition:I

    invoke-interface {v0, v1}, Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 2762
    :cond_2
    return-void
.end method

.method private getTargetDistance()I
    .locals 8

    .prologue
    .line 2816
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2817
    .local v0, now:J
    const/4 v2, 0x0

    .line 2819
    .local v2, targetDistance:I
    iget-wide v3, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mStartTime:J

    sub-long v4, v0, v3

    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mDuration:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mIndex:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 2820
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2824
    :goto_0
    return v2

    .line 2822
    :cond_0
    iget-wide v3, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mStartTime:J

    sub-long v4, v0, v3

    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mIndex:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    mul-long/2addr v4, v6

    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mDuration:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mIndex:I

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
    .line 2767
    iget v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mReduceViewCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mIndex:I

    .line 2768
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mHeightMovedDistance:I

    .line 2770
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget v1, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mReduceViewCount:I

    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mDuration:Ljava/util/ArrayList;

    iget-wide v3, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mStartTime:J

    #calls: Lcom/htc/widget/HtcExpandableListView;->setReduceDuration(ILjava/util/ArrayList;J)I
    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/widget/HtcExpandableListView;->access$3100(Lcom/htc/widget/HtcExpandableListView;ILjava/util/ArrayList;J)I

    .line 2771
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mStartTime:J

    .line 2772
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mInit:Z

    .line 2773
    return-void
.end method

.method private nextView()V
    .locals 3

    .prologue
    .line 2776
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mCollapseReduceViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/HtcExpandableListView;->access$3400(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    #calls: Lcom/htc/widget/HtcExpandableListView;->setReduceViewHeight(Landroid/view/View;)V
    invoke-static {v1, v0}, Lcom/htc/widget/HtcExpandableListView;->access$3200(Lcom/htc/widget/HtcExpandableListView;Landroid/view/View;)V

    .line 2777
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mStartTime:J

    .line 2779
    iget v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mIndex:I

    .line 2780
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mHeightMovedDistance:I

    .line 2781
    iget v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mIndex:I

    if-gez v0, :cond_0

    .line 2782
    invoke-direct {p0}, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->end()V

    .line 2787
    :goto_0
    return-void

    .line 2785
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcExpandableListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2794
    iget v2, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mMode:I

    if-nez v2, :cond_0

    .line 2812
    :goto_0
    return-void

    .line 2796
    :cond_0
    iget-boolean v2, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mInit:Z

    if-nez v2, :cond_1

    .line 2797
    invoke-direct {p0}, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->init()V

    .line 2800
    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->getTargetDistance()I

    move-result v1

    .line 2802
    .local v1, targetDistance:I
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 2803
    invoke-direct {p0}, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->nextView()V

    .line 2804
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/HtcExpandableListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2808
    :cond_2
    iget v2, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mHeightMovedDistance:I

    sub-int v0, v1, v2

    .line 2809
    .local v0, step:I
    iput v1, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mHeightMovedDistance:I

    .line 2810
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mCollapseReduceViewList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/widget/HtcExpandableListView;->access$3400(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    #calls: Lcom/htc/widget/HtcExpandableListView;->reduceViewHeight(Landroid/view/View;I)V
    invoke-static {v3, v2, v0}, Lcom/htc/widget/HtcExpandableListView;->access$3300(Lcom/htc/widget/HtcExpandableListView;Landroid/view/View;I)V

    .line 2811
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/HtcExpandableListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public start(II)V
    .locals 3
    .parameter "groupPos"
    .parameter "collapsedFlatPos"

    .prologue
    .line 2701
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mStartTime:J

    .line 2702
    iput p1, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mGroupPosition:I

    .line 2703
    iput p2, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mCollapsedFlatPosition:I

    .line 2704
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #calls: Lcom/htc/widget/HtcExpandableListView;->getCollapseReduceViewList()Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/widget/HtcExpandableListView;->access$3500(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;

    move-result-object v2

    #setter for: Lcom/htc/widget/HtcExpandableListView;->mCollapseReduceViewList:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/htc/widget/HtcExpandableListView;->access$3402(Lcom/htc/widget/HtcExpandableListView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2705
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mCollapseReduceViewList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/HtcExpandableListView;->access$3400(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mReduceViewCount:I

    .line 2706
    iget v1, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mReduceViewCount:I

    if-nez v1, :cond_0

    .line 2707
    invoke-direct {p0}, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->end()V

    .line 2726
    :goto_0
    return-void

    .line 2711
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mReduceViewCount:I

    if-ge v0, v1, :cond_1

    .line 2712
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mCollapseReduceViewHeightList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/HtcExpandableListView;->access$3600(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mCollapseReduceViewList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/HtcExpandableListView;->access$3400(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2713
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mCollapseReduceViewHeightList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/HtcExpandableListView;->access$3600(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;

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

    .line 2711
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2715
    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mMode:I

    .line 2716
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mInit:Z

    .line 2719
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget v2, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->mReduceViewCount:I

    #calls: Lcom/htc/widget/HtcExpandableListView;->reduceChildren(I)V
    invoke-static {v1, v2}, Lcom/htc/widget/HtcExpandableListView;->access$2900(Lcom/htc/widget/HtcExpandableListView;I)V

    .line 2723
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v1, v1, Lcom/htc/widget/HtcExpandableListView;->mCollapseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v1, :cond_2

    .line 2724
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v1, v1, Lcom/htc/widget/HtcExpandableListView;->mCollapseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v1}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 2725
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcExpandableListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
