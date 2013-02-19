.class Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;
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
    name = "AppendChildrenIncreaseRunnable"
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

    .line 789
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 794
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mPosition:I

    .line 796
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mDistanceList:Ljava/util/ArrayList;

    .line 797
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mHideViewCount:I

    .line 798
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mMode:I

    .line 799
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mInit:Z

    .line 800
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mStartTime:J

    .line 801
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mIndex:I

    .line 802
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mHeightMovedDistance:I

    .line 803
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mDuration:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 789
    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    return-void
.end method

.method private end()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 821
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v0, v0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v0, v0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1600(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 825
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    const/4 v2, 0x1

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->recoverChildren(Lcom/htc/widget/MoreExpandableItemInfo;Z)V
    invoke-static {v0, v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1700(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableItemInfo;Z)V

    .line 828
    :cond_1
    iput v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mMode:I

    .line 829
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->unSetHideViewFlag()V

    .line 830
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1600(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 831
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewHeightList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1800(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 832
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mDistanceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 833
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mDuration:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 834
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #setter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationRunning:Z
    invoke-static {v0, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1002(Lcom/htc/widget/MoreExpandableHtcListView;Z)Z

    .line 835
    return-void
.end method

.method private getTargetDistance()I
    .locals 8

    .prologue
    .line 900
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 901
    .local v0, now:J
    const/4 v2, 0x0

    .line 903
    .local v2, targetDistance:I
    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mStartTime:J

    sub-long v4, v0, v3

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mDuration:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mIndex:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 904
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 908
    :goto_0
    return v2

    .line 906
    :cond_0
    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mStartTime:J

    sub-long v4, v0, v3

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mIndex:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    mul-long/2addr v4, v6

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mDuration:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mIndex:I

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
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 839
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->unSetHideViewFlag()V

    .line 840
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1600(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mHideViewCount:I

    .line 842
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mHideViewCount:I

    if-nez v0, :cond_0

    .line 843
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->end()V

    .line 857
    :goto_0
    return-void

    .line 847
    :cond_0
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mHideViewCount:I

    if-ge v6, v0, :cond_1

    .line 848
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

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

    .line 847
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 851
    :cond_1
    iput v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mMode:I

    .line 852
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mHideViewCount:I

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mDuration:Ljava/util/ArrayList;

    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mStartTime:J

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->setIncreaseDuration(ILjava/util/ArrayList;JZ)I
    invoke-static/range {v0 .. v5}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1900(Lcom/htc/widget/MoreExpandableHtcListView;ILjava/util/ArrayList;JZ)I

    .line 853
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mStartTime:J

    .line 854
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mHideViewCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mIndex:I

    .line 855
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mHeightMovedDistance:I

    .line 856
    iput-boolean v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mInit:Z

    goto :goto_0
.end method

.method private nextView()V
    .locals 4

    .prologue
    .line 860
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1600(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewHeightList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1800(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->setIncreaseViewHeight(Landroid/view/View;I)V
    invoke-static {v2, v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$2000(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;I)V

    .line 861
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mStartTime:J

    .line 862
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mIndex:I

    .line 863
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mHeightMovedDistance:I

    .line 864
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mIndex:I

    if-gez v0, :cond_0

    .line 865
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->end()V

    .line 870
    :goto_0
    return-void

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 877
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mMode:I

    if-nez v2, :cond_1

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 879
    :cond_1
    iget-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mInit:Z

    if-nez v2, :cond_2

    .line 880
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->init()V

    .line 881
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mHideViewCount:I

    if-eqz v2, :cond_0

    .line 885
    :cond_2
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->getTargetDistance()I

    move-result v1

    .line 887
    .local v1, targetDistance:I
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 888
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->nextView()V

    goto :goto_0

    .line 892
    :cond_3
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mHeightMovedDistance:I

    sub-int v0, v1, v2

    .line 893
    .local v0, step:I
    iput v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mHeightMovedDistance:I

    .line 894
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1600(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->increaseViewHeight(Landroid/view/View;I)V
    invoke-static {v3, v2, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$2100(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;I)V

    .line 895
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public start(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V
    .locals 2
    .parameter "self"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 810
    .local p2, newChildren:Ljava/util/LinkedList;,"Ljava/util/LinkedList<+Lcom/htc/widget/MoreExpandableItemInfo;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mStartTime:J

    .line 811
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    .line 812
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getIndexOfMoreExpandableItemInfo(Lcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mPosition:I

    .line 813
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mMode:I

    .line 814
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->mInit:Z

    .line 815
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v0, v0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v0, v0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    .line 818
    return-void
.end method
