.class Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;
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
    name = "MoveToTopRunnable"
.end annotation


# static fields
.field private static final MOVE_MODE:I = 0x1

.field private static final STOP_MODE:I


# instance fields
.field private MOVE_DURATION:I

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

.field private mFlatPosition:I

.field private mGroupPosition:I

.field private mInit:Z

.field private mMode:I

.field private mStartTime:J

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/htc/widget/HtcExpandableListView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/HtcExpandableListView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2258
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2262
    const/16 v0, 0x96

    iput v0, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->MOVE_DURATION:I

    .line 2264
    iput v1, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->mGroupPosition:I

    .line 2265
    iput v1, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->mFlatPosition:I

    .line 2266
    iput v1, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->mDistance:I

    .line 2267
    iput v1, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->mMode:I

    .line 2268
    iput-boolean v1, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->mInit:Z

    .line 2269
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->mStartTime:J

    .line 2270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->mView:Landroid/view/View;

    .line 2271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->mDuration:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HtcExpandableListView;Lcom/htc/widget/HtcExpandableListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2258
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;-><init>(Lcom/htc/widget/HtcExpandableListView;)V

    return-void
.end method

.method private end()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2299
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v2, v2, Lcom/htc/widget/HtcExpandableListView;->mMoveTopMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v2, :cond_0

    .line 2300
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v2, v2, Lcom/htc/widget/HtcExpandableListView;->mMoveTopMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v2}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 2301
    :cond_0
    iput v4, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->mMode:I

    .line 2302
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget v3, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->mFlatPosition:I

    #calls: Lcom/htc/widget/HtcExpandableListView;->setToTop(I)V
    invoke-static {v2, v3}, Lcom/htc/widget/HtcExpandableListView;->access$2300(Lcom/htc/widget/HtcExpandableListView;I)V

    .line 2304
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget v3, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->mFlatPosition:I

    #calls: Lcom/htc/widget/HtcExpandableListView;->checkView(I)I
    invoke-static {v2, v3}, Lcom/htc/widget/HtcExpandableListView;->access$2400(Lcom/htc/widget/HtcExpandableListView;I)I

    move-result v1

    .line 2305
    .local v1, top:I
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #calls: Lcom/htc/widget/HtcExpandableListView;->setTargetTopPosition()V
    invoke-static {v2}, Lcom/htc/widget/HtcExpandableListView;->access$2100(Lcom/htc/widget/HtcExpandableListView;)V

    .line 2306
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mTargetTopPosition:[I
    invoke-static {v2}, Lcom/htc/widget/HtcExpandableListView;->access$2200(Lcom/htc/widget/HtcExpandableListView;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int/2addr v1, v2

    .line 2308
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;
    invoke-static {v2}, Lcom/htc/widget/HtcExpandableListView;->access$1300(Lcom/htc/widget/HtcExpandableListView;)Lcom/htc/widget/HtcExpandableListConnector;

    move-result-object v2

    iget v3, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->mGroupPosition:I

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcExpandableListConnector;->expandGroupWithCollapse(I)I

    move-result v0

    .line 2309
    .local v0, newPosition:I
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #calls: Lcom/htc/widget/HtcExpandableListView;->recoverExpandReduceViewList()V
    invoke-static {v2}, Lcom/htc/widget/HtcExpandableListView;->access$2500(Lcom/htc/widget/HtcExpandableListView;)V

    .line 2311
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcExpandableListView;->getHeaderViewsCount()I

    move-result v3

    add-int/2addr v3, v0

    #calls: Lcom/htc/widget/HtcExpandableListView;->moveToTop(II)V
    invoke-static {v2, v3, v4}, Lcom/htc/widget/HtcExpandableListView;->access$2600(Lcom/htc/widget/HtcExpandableListView;II)V

    .line 2312
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mWaitExpandViewRunnable:Lcom/htc/widget/HtcExpandableListView$WaitExpandViewRunnable;
    invoke-static {v2}, Lcom/htc/widget/HtcExpandableListView;->access$2700(Lcom/htc/widget/HtcExpandableListView;)Lcom/htc/widget/HtcExpandableListView$WaitExpandViewRunnable;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcExpandableListView$WaitExpandViewRunnable;->start(I)V

    .line 2313
    return-void
.end method

.method private getTargetDistance()I
    .locals 7

    .prologue
    .line 2347
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2348
    .local v0, now:J
    const/4 v2, 0x0

    .line 2350
    .local v2, targetDistance:I
    iget-wide v3, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->mStartTime:J

    sub-long v3, v0, v3

    iget v5, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->MOVE_DURATION:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 2351
    iget v2, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->mDistance:I

    .line 2355
    :goto_0
    return v2

    .line 2353
    :cond_0
    iget-wide v3, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->mStartTime:J

    sub-long v3, v0, v3

    iget v5, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->mDistance:I

    int-to-long v5, v5

    mul-long/2addr v3, v5

    iget v5, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->MOVE_DURATION:I

    int-to-long v5, v5

    div-long/2addr v3, v5

    long-to-int v2, v3

    goto :goto_0
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 2317
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mAnimatedViewList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/HtcExpandableListView;->access$900(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->mDuration:Ljava/util/ArrayList;

    iget-wide v3, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->mStartTime:J

    const/4 v5, 0x0

    #calls: Lcom/htc/widget/HtcExpandableListView;->setIncreaseDuration(ILjava/util/ArrayList;JZ)I
    invoke-static/range {v0 .. v5}, Lcom/htc/widget/HtcExpandableListView;->access$1800(Lcom/htc/widget/HtcExpandableListView;ILjava/util/ArrayList;JZ)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->MOVE_DURATION:I

    .line 2318
    iput v6, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->mMode:I

    .line 2319
    iput-boolean v6, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->mInit:Z

    .line 2320
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2327
    iget v2, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->mMode:I

    if-nez v2, :cond_0

    .line 2343
    :goto_0
    return-void

    .line 2329
    :cond_0
    iget-boolean v2, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->mInit:Z

    if-nez v2, :cond_1

    .line 2330
    invoke-direct {p0}, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->init()V

    .line 2333
    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->getTargetDistance()I

    move-result v0

    .line 2335
    .local v0, targetDistance:I
    iget v2, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->mDistance:I

    if-lt v0, v2, :cond_2

    .line 2336
    invoke-direct {p0}, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->end()V

    goto :goto_0

    .line 2340
    :cond_2
    iget v2, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->mDistance:I

    sub-int v1, v2, v0

    .line 2341
    .local v1, top:I
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget v3, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->mFlatPosition:I

    #calls: Lcom/htc/widget/HtcExpandableListView;->moveToTop(II)V
    invoke-static {v2, v3, v1}, Lcom/htc/widget/HtcExpandableListView;->access$2600(Lcom/htc/widget/HtcExpandableListView;II)V

    .line 2342
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/HtcExpandableListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public start(II)V
    .locals 4
    .parameter "groupPosition"
    .parameter "flatPosition"

    .prologue
    const/4 v3, 0x1

    .line 2278
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->mStartTime:J

    .line 2279
    iput p2, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->mFlatPosition:I

    .line 2280
    iput p1, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->mGroupPosition:I

    .line 2281
    iput v3, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->mMode:I

    .line 2282
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->mInit:Z

    .line 2283
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #calls: Lcom/htc/widget/HtcExpandableListView;->setTargetTopPosition()V
    invoke-static {v1}, Lcom/htc/widget/HtcExpandableListView;->access$2100(Lcom/htc/widget/HtcExpandableListView;)V

    .line 2284
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcExpandableListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->mView:Landroid/view/View;

    .line 2286
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->mView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 2287
    invoke-direct {p0}, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->end()V

    .line 2293
    :goto_0
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v1, v1, Lcom/htc/widget/HtcExpandableListView;->mMoveTopMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v1, :cond_0

    .line 2294
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v1, v1, Lcom/htc/widget/HtcExpandableListView;->mMoveTopMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v1}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 2295
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcExpandableListView;->post(Ljava/lang/Runnable;)Z

    .line 2296
    return-void

    .line 2289
    :cond_1
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 2290
    .local v0, location:[I
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2291
    aget v1, v0, v3

    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mTargetTopPosition:[I
    invoke-static {v2}, Lcom/htc/widget/HtcExpandableListView;->access$2200(Lcom/htc/widget/HtcExpandableListView;)[I

    move-result-object v2

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;->mDistance:I

    goto :goto_0

    .line 2289
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
