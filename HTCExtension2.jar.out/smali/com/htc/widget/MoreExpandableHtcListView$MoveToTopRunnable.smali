.class Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;
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
    name = "MoveToTopRunnable"
.end annotation


# static fields
.field static final ACTION_COLLAPSE:I = 0x2

.field static final ACTION_EXPAND_NONROOT:I = 0x1

.field static final ACTION_EXPAND_ROOT:I = 0x0

.field private static final MOVE_MODE:I = 0x1

.field private static final STOP_MODE:I


# instance fields
.field private MOVE_DURATION:I

.field private mAction:I

.field private mDistance:I

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

.field mExpandedTarget:Lcom/htc/widget/MoreExpandableItemInfo;

.field private mExpandedTargetPosition:I

.field private mInit:Z

.field private mMode:I

.field private mPosition:I

.field mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

.field private mStartTime:J

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/htc/widget/MoreExpandableHtcListView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2216
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2220
    const/16 v0, 0x96

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->MOVE_DURATION:I

    .line 2222
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mPosition:I

    .line 2224
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mDistance:I

    .line 2225
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mMode:I

    .line 2226
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mInit:Z

    .line 2227
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mStartTime:J

    .line 2228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mView:Landroid/view/View;

    .line 2229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mDuration:Ljava/util/ArrayList;

    .line 2237
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mExpandedTargetPosition:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2216
    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    return-void
.end method

.method private end()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2274
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, v2, Lcom/htc/widget/MoreExpandableHtcListView;->mMoveTopMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v2, :cond_0

    .line 2275
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, v2, Lcom/htc/widget/MoreExpandableHtcListView;->mMoveTopMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v2}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 2276
    :cond_0
    iput v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mMode:I

    .line 2277
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mPosition:I

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->setToTop(I)V
    invoke-static {v2, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1400(Lcom/htc/widget/MoreExpandableHtcListView;I)V

    .line 2282
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mPosition:I

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->checkView(I)I
    invoke-static {v2, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4800(Lcom/htc/widget/MoreExpandableHtcListView;I)I

    move-result v1

    .line 2283
    .local v1, top:I
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->setTargetTopPosition()V
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4600(Lcom/htc/widget/MoreExpandableHtcListView;)V

    .line 2284
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mTargetTopPosition:[I
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4700(Lcom/htc/widget/MoreExpandableHtcListView;)[I

    move-result-object v2

    aget v2, v2, v6

    sub-int/2addr v1, v2

    .line 2285
    const/4 v0, -0x1

    .line 2286
    .local v0, newPosition:I
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iput-boolean v5, v2, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandGroupCompleted:Z

    .line 2289
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mExpandedTarget:Lcom/htc/widget/MoreExpandableItemInfo;

    if-nez v2, :cond_2

    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mAction:I

    if-nez v2, :cond_2

    .line 2290
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v2

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mPosition:I

    iget-object v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/MoreExpandableBaseAdapter;->expandGroup(ILcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v0

    .line 2291
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->recoverExpandReduceViewList()V
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4900(Lcom/htc/widget/MoreExpandableHtcListView;)V

    .line 2292
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->moveToTop(II)V
    invoke-static {v2, v0, v5}, Lcom/htc/widget/MoreExpandableHtcListView;->access$5000(Lcom/htc/widget/MoreExpandableHtcListView;II)V

    .line 2293
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mWaitExpandViewRunnable:Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$5100(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    iget-object v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mWaitExpandViewRunnable:Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;
    invoke-static {v4}, Lcom/htc/widget/MoreExpandableHtcListView;->access$5100(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;

    invoke-virtual {v2, v0, v3, v5}, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->start(ILcom/htc/widget/MoreExpandableItemInfo;I)V

    .line 2321
    :cond_1
    :goto_0
    return-void

    .line 2295
    :cond_2
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mAction:I

    if-ne v2, v6, :cond_4

    .line 2296
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v2

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mExpandedTargetPosition:I

    iget-object v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mExpandedTarget:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/MoreExpandableBaseAdapter;->expandGroup(ILcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v0

    .line 2297
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->recoverExpandReduceViewList()V
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4900(Lcom/htc/widget/MoreExpandableHtcListView;)V

    .line 2310
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mPosition:I

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->moveToTop(II)V
    invoke-static {v2, v3, v5}, Lcom/htc/widget/MoreExpandableHtcListView;->access$5000(Lcom/htc/widget/MoreExpandableHtcListView;II)V

    .line 2312
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mAction:I

    if-ne v2, v6, :cond_6

    .line 2313
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mWaitExpandViewRunnable:Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$5100(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mExpandedTarget:Lcom/htc/widget/MoreExpandableItemInfo;

    iget-object v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mWaitExpandViewRunnable:Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;
    invoke-static {v4}, Lcom/htc/widget/MoreExpandableHtcListView;->access$5100(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;

    invoke-virtual {v2, v0, v3, v5}, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->start(ILcom/htc/widget/MoreExpandableItemInfo;I)V

    goto :goto_0

    .line 2298
    :cond_4
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mAction:I

    if-ne v2, v7, :cond_3

    .line 2301
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mExpandedTarget:Lcom/htc/widget/MoreExpandableItemInfo;

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v3

    if-eq v2, v3, :cond_5

    .line 2302
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v3

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->recoverChildren(Lcom/htc/widget/MoreExpandableItemInfo;Z)V
    invoke-static {v2, v3, v6}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1700(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableItemInfo;Z)V

    .line 2306
    :goto_2
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v2

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mExpandedTargetPosition:I

    iget-object v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mExpandedTarget:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/MoreExpandableBaseAdapter;->collapseGroup(ILcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v0

    .line 2307
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->recoverCollapseReduceViewList()V
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3400(Lcom/htc/widget/MoreExpandableHtcListView;)V

    goto :goto_1

    .line 2304
    :cond_5
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mExpandedTarget:Lcom/htc/widget/MoreExpandableItemInfo;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->recoverChildren(Lcom/htc/widget/MoreExpandableItemInfo;Z)V
    invoke-static {v2, v3, v6}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1700(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableItemInfo;Z)V

    goto :goto_2

    .line 2315
    :cond_6
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mAction:I

    if-ne v2, v7, :cond_1

    .line 2316
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mWaitExpandViewRunnable:Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$5100(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mExpandedTarget:Lcom/htc/widget/MoreExpandableItemInfo;

    iget-object v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mWaitExpandViewRunnable:Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;
    invoke-static {v4}, Lcom/htc/widget/MoreExpandableHtcListView;->access$5100(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;

    invoke-virtual {v2, v0, v3, v6}, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->start(ILcom/htc/widget/MoreExpandableItemInfo;I)V

    goto :goto_0
.end method

.method private getTargetDistance()I
    .locals 7

    .prologue
    .line 2355
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2356
    .local v0, now:J
    const/4 v2, 0x0

    .line 2358
    .local v2, targetDistance:I
    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mStartTime:J

    sub-long v3, v0, v3

    iget v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->MOVE_DURATION:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 2359
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mDistance:I

    .line 2363
    :goto_0
    return v2

    .line 2361
    :cond_0
    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mStartTime:J

    sub-long v3, v0, v3

    iget v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mDistance:I

    int-to-long v5, v5

    mul-long/2addr v3, v5

    iget v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->MOVE_DURATION:I

    int-to-long v5, v5

    div-long/2addr v3, v5

    long-to-int v2, v3

    goto :goto_0
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 2325
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1600(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mDuration:Ljava/util/ArrayList;

    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mStartTime:J

    const/4 v5, 0x0

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->setIncreaseDuration(ILjava/util/ArrayList;JZ)I
    invoke-static/range {v0 .. v5}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1900(Lcom/htc/widget/MoreExpandableHtcListView;ILjava/util/ArrayList;JZ)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->MOVE_DURATION:I

    .line 2326
    iput v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mMode:I

    .line 2327
    iput-boolean v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mInit:Z

    .line 2328
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2335
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mMode:I

    if-nez v2, :cond_0

    .line 2351
    :goto_0
    return-void

    .line 2337
    :cond_0
    iget-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mInit:Z

    if-nez v2, :cond_1

    .line 2338
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->init()V

    .line 2341
    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->getTargetDistance()I

    move-result v0

    .line 2343
    .local v0, targetDistance:I
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mDistance:I

    if-lt v0, v2, :cond_2

    .line 2344
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->end()V

    goto :goto_0

    .line 2348
    :cond_2
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mDistance:I

    sub-int v1, v2, v0

    .line 2349
    .local v1, top:I
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mPosition:I

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->moveToTop(II)V
    invoke-static {v2, v3, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$5000(Lcom/htc/widget/MoreExpandableHtcListView;II)V

    .line 2350
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public start(ILcom/htc/widget/MoreExpandableItemInfo;ILcom/htc/widget/MoreExpandableItemInfo;I)V
    .locals 5
    .parameter "position"
    .parameter "self"
    .parameter "expandedTargetPosition"
    .parameter "expandedTarget"
    .parameter "action"

    .prologue
    const/4 v4, 0x1

    .line 2248
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mStartTime:J

    .line 2249
    iput p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mPosition:I

    .line 2250
    iput-object p2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    .line 2251
    iput v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mMode:I

    .line 2252
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mInit:Z

    .line 2253
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->setTargetTopPosition()V
    invoke-static {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4600(Lcom/htc/widget/MoreExpandableHtcListView;)V

    .line 2254
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mPosition:I

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/MoreExpandableHtcListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mView:Landroid/view/View;

    .line 2256
    iput p3, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mExpandedTargetPosition:I

    .line 2257
    iput p5, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mAction:I

    .line 2258
    iput-object p4, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mExpandedTarget:Lcom/htc/widget/MoreExpandableItemInfo;

    .line 2261
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 2262
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->end()V

    .line 2268
    :goto_0
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, v1, Lcom/htc/widget/MoreExpandableHtcListView;->mMoveTopMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v1, :cond_0

    .line 2269
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, v1, Lcom/htc/widget/MoreExpandableHtcListView;->mMoveTopMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v1}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 2270
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    .line 2271
    return-void

    .line 2264
    :cond_1
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 2265
    .local v0, location:[I
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2266
    aget v1, v0, v4

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mTargetTopPosition:[I
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4700(Lcom/htc/widget/MoreExpandableHtcListView;)[I

    move-result-object v2

    aget v2, v2, v4

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mDistance:I

    goto :goto_0

    .line 2264
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
