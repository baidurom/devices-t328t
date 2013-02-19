.class Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;
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

    .line 1939
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1944
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mPosition:I

    .line 1946
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mDistanceList:Ljava/util/ArrayList;

    .line 1947
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mReduceViewCount:I

    .line 1948
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mMode:I

    .line 1949
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mInit:Z

    .line 1950
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mStartTime:J

    .line 1951
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mIndex:I

    .line 1952
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mHeightMovedDistance:I

    .line 1953
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mDuration:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1939
    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    return-void
.end method

.method private end()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v9, -0x1

    .line 1988
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v0, v0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 1989
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v0, v0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 1990
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mMode:I

    .line 1991
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mDistanceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1992
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mDuration:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1998
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v2

    .line 1999
    .local v2, parent:Lcom/htc/widget/MoreExpandableItemInfo;
    if-eqz v2, :cond_2

    .line 2000
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getIndexOfMoreExpandableItemInfo(Lcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v1

    .line 2001
    .local v1, parentPosition:I
    if-eq v1, v9, :cond_1

    .line 2002
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mMoveToTopRunnable:Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3300(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    move-result-object v0

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mPosition:I

    iget-object v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->start(ILcom/htc/widget/MoreExpandableItemInfo;ILcom/htc/widget/MoreExpandableItemInfo;I)V

    .line 2012
    .end local v1           #parentPosition:I
    :goto_0
    return-void

    .line 2004
    .restart local v1       #parentPosition:I
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mMoveToTopRunnable:Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3300(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    move-result-object v6

    iget v7, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mPosition:I

    iget-object v8, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->start(ILcom/htc/widget/MoreExpandableItemInfo;ILcom/htc/widget/MoreExpandableItemInfo;I)V

    goto :goto_0

    .line 2007
    .end local v1           #parentPosition:I
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mMoveToTopRunnable:Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3300(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    move-result-object v6

    iget v7, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mPosition:I

    iget-object v8, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->start(ILcom/htc/widget/MoreExpandableItemInfo;ILcom/htc/widget/MoreExpandableItemInfo;I)V

    goto :goto_0
.end method

.method private getTargetDistance()I
    .locals 8

    .prologue
    .line 2063
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2064
    .local v0, now:J
    const/4 v2, 0x0

    .line 2066
    .local v2, targetDistance:I
    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mStartTime:J

    sub-long v4, v0, v3

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mDuration:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mIndex:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 2067
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2071
    :goto_0
    return v2

    .line 2069
    :cond_0
    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mStartTime:J

    sub-long v4, v0, v3

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mIndex:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    mul-long/2addr v4, v6

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mDuration:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mIndex:I

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
    .line 2016
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mReduceViewCount:I

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mDuration:Ljava/util/ArrayList;

    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mStartTime:J

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->setReduceDuration(ILjava/util/ArrayList;J)I
    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3700(Lcom/htc/widget/MoreExpandableHtcListView;ILjava/util/ArrayList;J)I

    .line 2017
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mStartTime:J

    .line 2018
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mReduceViewCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mIndex:I

    .line 2019
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mHeightMovedDistance:I

    .line 2020
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mInit:Z

    .line 2021
    return-void
.end method

.method private nextView()V
    .locals 3

    .prologue
    .line 2024
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4100(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->setReduceViewHeight(Landroid/view/View;)V
    invoke-static {v1, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3800(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;)V

    .line 2025
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mStartTime:J

    .line 2026
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mIndex:I

    .line 2027
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mHeightMovedDistance:I

    .line 2028
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mIndex:I

    if-gez v0, :cond_0

    .line 2029
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->end()V

    .line 2034
    :goto_0
    return-void

    .line 2032
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2041
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mMode:I

    if-nez v2, :cond_0

    .line 2059
    :goto_0
    return-void

    .line 2043
    :cond_0
    iget-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mInit:Z

    if-nez v2, :cond_1

    .line 2044
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->init()V

    .line 2047
    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->getTargetDistance()I

    move-result v1

    .line 2049
    .local v1, targetDistance:I
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 2050
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->nextView()V

    .line 2051
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2055
    :cond_2
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mHeightMovedDistance:I

    sub-int v0, v1, v2

    .line 2056
    .local v0, step:I
    iput v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mHeightMovedDistance:I

    .line 2057
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4100(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->reduceViewHeight(Landroid/view/View;I)V
    invoke-static {v3, v2, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3900(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;I)V

    .line 2058
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public start(ILcom/htc/widget/MoreExpandableItemInfo;)V
    .locals 3
    .parameter "position"
    .parameter "self"

    .prologue
    .line 1960
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mStartTime:J

    .line 1961
    iput p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mPosition:I

    .line 1962
    iput-object p2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    .line 1963
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->getExpandReduceViewList(ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/ArrayList;
    invoke-static {v2, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4400(Lcom/htc/widget/MoreExpandableHtcListView;ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/ArrayList;

    move-result-object v2

    #setter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4102(Lcom/htc/widget/MoreExpandableHtcListView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1964
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4100(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mReduceViewCount:I

    .line 1968
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    #setter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandedTargetItem:Lcom/htc/widget/MoreExpandableItemInfo;
    invoke-static {v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1502(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableItemInfo;)Lcom/htc/widget/MoreExpandableItemInfo;

    .line 1971
    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mReduceViewCount:I

    if-nez v1, :cond_0

    .line 1972
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->end()V

    .line 1985
    :goto_0
    return-void

    .line 1976
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mReduceViewCount:I

    if-ge v0, v1, :cond_1

    .line 1977
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4300(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4100(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1978
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4300(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

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

    .line 1976
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1980
    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mMode:I

    .line 1981
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mInit:Z

    .line 1982
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, v1, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v1, :cond_2

    .line 1983
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, v1, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v1}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 1984
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
