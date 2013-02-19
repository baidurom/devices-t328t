.class Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;
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
    name = "ExpandIncreaseRunnable"
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

.field private mHideViewCount:I

.field private mIndex:I

.field private mInit:Z

.field private mMode:I

.field private mPosition:I

.field mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

.field private mStartTime:J

.field final synthetic this$0:Lcom/htc/widget/MoreExpandableHtcListView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2076
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2081
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mPosition:I

    .line 2083
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mDistanceList:Ljava/util/ArrayList;

    .line 2084
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mHideViewCount:I

    .line 2085
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mMode:I

    .line 2086
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mInit:Z

    .line 2087
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mStartTime:J

    .line 2088
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mIndex:I

    .line 2089
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mHeightMovedDistance:I

    .line 2090
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mDuration:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2076
    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    return-void
.end method

.method private end()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2114
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v0, v0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 2115
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v0, v0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 2117
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    const/4 v2, 0x1

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->recoverChildren(Lcom/htc/widget/MoreExpandableItemInfo;Z)V
    invoke-static {v0, v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1700(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableItemInfo;Z)V

    .line 2119
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->invalidate()V

    .line 2121
    iput v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mMode:I

    .line 2122
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->unSetHideViewFlag()V

    .line 2123
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1600(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2124
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewHeightList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1800(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2125
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mDistanceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2126
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mDuration:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2127
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #setter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationRunning:Z
    invoke-static {v0, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1002(Lcom/htc/widget/MoreExpandableHtcListView;Z)Z

    .line 2128
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4500(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2129
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4500(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mPosition:I

    invoke-interface {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 2131
    :cond_1
    return-void
.end method

.method private getTargetDistance()I
    .locals 8

    .prologue
    .line 2196
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2197
    .local v0, now:J
    const/4 v2, 0x0

    .line 2199
    .local v2, targetDistance:I
    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mStartTime:J

    sub-long v4, v0, v3

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mDuration:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mIndex:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 2200
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2204
    :goto_0
    return v2

    .line 2202
    :cond_0
    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mStartTime:J

    sub-long v4, v0, v3

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mIndex:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    mul-long/2addr v4, v6

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mDuration:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mIndex:I

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
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 2135
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->unSetHideViewFlag()V

    .line 2136
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1600(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mHideViewCount:I

    .line 2138
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mHideViewCount:I

    if-nez v0, :cond_0

    .line 2139
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->end()V

    .line 2153
    :goto_0
    return-void

    .line 2143
    :cond_0
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mHideViewCount:I

    if-ge v6, v0, :cond_1

    .line 2144
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewHeightList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1800(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2143
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2147
    :cond_1
    iput v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mMode:I

    .line 2148
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mHideViewCount:I

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mDuration:Ljava/util/ArrayList;

    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mStartTime:J

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->setIncreaseDuration(ILjava/util/ArrayList;JZ)I
    invoke-static/range {v0 .. v5}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1900(Lcom/htc/widget/MoreExpandableHtcListView;ILjava/util/ArrayList;JZ)I

    .line 2149
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mStartTime:J

    .line 2150
    iput v7, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mIndex:I

    .line 2151
    iput v7, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mHeightMovedDistance:I

    .line 2152
    iput-boolean v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mInit:Z

    goto :goto_0
.end method

.method private nextView()V
    .locals 4

    .prologue
    .line 2156
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1600(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewHeightList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1800(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->setIncreaseViewHeight(Landroid/view/View;I)V
    invoke-static {v2, v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$2000(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;I)V

    .line 2157
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mStartTime:J

    .line 2158
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mIndex:I

    .line 2159
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mHeightMovedDistance:I

    .line 2160
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mIndex:I

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mHideViewCount:I

    if-lt v0, v1, :cond_0

    .line 2161
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->end()V

    .line 2166
    :goto_0
    return-void

    .line 2164
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2173
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mMode:I

    if-nez v2, :cond_1

    .line 2192
    :cond_0
    :goto_0
    return-void

    .line 2175
    :cond_1
    iget-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mInit:Z

    if-nez v2, :cond_2

    .line 2176
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->init()V

    .line 2177
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mHideViewCount:I

    if-eqz v2, :cond_0

    .line 2181
    :cond_2
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->getTargetDistance()I

    move-result v1

    .line 2183
    .local v1, targetDistance:I
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 2184
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->nextView()V

    goto :goto_0

    .line 2188
    :cond_3
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mHeightMovedDistance:I

    sub-int v0, v1, v2

    .line 2189
    .local v0, step:I
    iput v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mHeightMovedDistance:I

    .line 2190
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1600(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->increaseViewHeight(Landroid/view/View;I)V
    invoke-static {v3, v2, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$2100(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;I)V

    .line 2191
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public start(ILcom/htc/widget/MoreExpandableItemInfo;)V
    .locals 2
    .parameter "position"
    .parameter "self"

    .prologue
    .line 2097
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mStartTime:J

    .line 2099
    iput p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mPosition:I

    .line 2100
    iput-object p2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    .line 2101
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mMode:I

    .line 2102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->mInit:Z

    .line 2107
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v0, v0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 2108
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v0, v0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 2109
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    .line 2110
    return-void
.end method
