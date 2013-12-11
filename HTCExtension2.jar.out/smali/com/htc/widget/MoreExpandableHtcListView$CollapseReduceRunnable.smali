.class Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;
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
    name = "CollapseReduceRunnable"
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

.field mParent:Lcom/htc/widget/MoreExpandableItemInfo;

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

    .line 1316
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1321
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mPosition:I

    .line 1324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mDistanceList:Ljava/util/ArrayList;

    .line 1325
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mReduceViewCount:I

    .line 1326
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mMode:I

    .line 1327
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mInit:Z

    .line 1328
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mStartTime:J

    .line 1329
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mIndex:I

    .line 1330
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mHeightMovedDistance:I

    .line 1331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mDuration:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1316
    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    return-void
.end method

.method private end()V
    .locals 14

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x2

    .line 1381
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    if-nez v0, :cond_0

    .line 1382
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v3

    if-eq v0, v3, :cond_1

    .line 1383
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v3

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->recoverChildren(Lcom/htc/widget/MoreExpandableItemInfo;Z)V
    invoke-static {v0, v3, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1700(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableItemInfo;Z)V

    .line 1389
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->invalidate()V

    .line 1391
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mMode:I

    .line 1392
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mDistanceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1393
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mDuration:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1397
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    if-eqz v0, :cond_4

    .line 1398
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v0, v3}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getIndexOfMoreExpandableItemInfo(Lcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v7

    .line 1401
    .local v7, parentPosition:I
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v2

    .line 1402
    .local v2, grandParent:Lcom/htc/widget/MoreExpandableItemInfo;
    if-eqz v2, :cond_3

    .line 1403
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getIndexOfMoreExpandableItemInfo(Lcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v1

    .line 1404
    .local v1, grandParentPosition:I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    .line 1405
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/MoreExpandableHtcListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {v0, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1406
    .local v12, mgrandParentView:Landroid/view/View;
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mMoveToTopRunnable:Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3300(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    move-result-object v0

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mPosition:I

    iget-object v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->start(ILcom/htc/widget/MoreExpandableItemInfo;ILcom/htc/widget/MoreExpandableItemInfo;I)V

    .line 1425
    .end local v1           #grandParentPosition:I
    .end local v2           #grandParent:Lcom/htc/widget/MoreExpandableItemInfo;
    .end local v7           #parentPosition:I
    .end local v12           #mgrandParentView:Landroid/view/View;
    :goto_1
    return-void

    .line 1385
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->recoverChildren(Lcom/htc/widget/MoreExpandableItemInfo;Z)V
    invoke-static {v0, v3, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1700(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableItemInfo;Z)V

    goto :goto_0

    .line 1408
    .restart local v1       #grandParentPosition:I
    .restart local v2       #grandParent:Lcom/htc/widget/MoreExpandableItemInfo;
    .restart local v7       #parentPosition:I
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mMoveToTopRunnable:Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3300(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    move-result-object v6

    iget-object v8, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    iget v9, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mPosition:I

    iget-object v10, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->start(ILcom/htc/widget/MoreExpandableItemInfo;ILcom/htc/widget/MoreExpandableItemInfo;I)V

    goto :goto_1

    .line 1412
    .end local v1           #grandParentPosition:I
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mMoveToTopRunnable:Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3300(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    move-result-object v6

    iget-object v8, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    iget v9, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mPosition:I

    iget-object v10, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->start(ILcom/htc/widget/MoreExpandableItemInfo;ILcom/htc/widget/MoreExpandableItemInfo;I)V

    goto :goto_1

    .line 1416
    .end local v2           #grandParent:Lcom/htc/widget/MoreExpandableItemInfo;
    .end local v7           #parentPosition:I
    :cond_4
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->recoverCollapseReduceViewList()V
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3400(Lcom/htc/widget/MoreExpandableHtcListView;)V

    .line 1417
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->resetFooterHeight()V
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1300(Lcom/htc/widget/MoreExpandableHtcListView;)V

    .line 1419
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v0

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mPosition:I

    iget-object v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/MoreExpandableBaseAdapter;->collapseGroup(ILcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v13

    .line 1420
    .local v13, newPosition:I
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3500(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;

    move-result-object v0

    #calls: Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->end(I)V
    invoke-static {v0, v13}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->access$3600(Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;I)V

    goto :goto_1
.end method

.method private getTargetDistance()I
    .locals 8

    .prologue
    .line 1478
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1479
    .local v0, now:J
    const/4 v2, 0x0

    .line 1481
    .local v2, targetDistance:I
    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mStartTime:J

    sub-long v4, v0, v3

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mDuration:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mIndex:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 1482
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1486
    :goto_0
    return v2

    .line 1484
    :cond_0
    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mStartTime:J

    sub-long v4, v0, v3

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mIndex:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    mul-long/2addr v4, v6

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mDuration:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mIndex:I

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
    .line 1430
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mReduceViewCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mIndex:I

    .line 1431
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mHeightMovedDistance:I

    .line 1433
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mReduceViewCount:I

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mDuration:Ljava/util/ArrayList;

    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mStartTime:J

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->setReduceDuration(ILjava/util/ArrayList;J)I
    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3700(Lcom/htc/widget/MoreExpandableHtcListView;ILjava/util/ArrayList;J)I

    .line 1434
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mStartTime:J

    .line 1435
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mInit:Z

    .line 1436
    return-void
.end method

.method private nextView()V
    .locals 3

    .prologue
    .line 1439
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$2900(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->setReduceViewHeight(Landroid/view/View;)V
    invoke-static {v1, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3800(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;)V

    .line 1440
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mStartTime:J

    .line 1441
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mIndex:I

    .line 1442
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mHeightMovedDistance:I

    .line 1443
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mIndex:I

    if-gez v0, :cond_0

    .line 1444
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->end()V

    .line 1449
    :goto_0
    return-void

    .line 1447
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1456
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mMode:I

    if-nez v2, :cond_0

    .line 1474
    :goto_0
    return-void

    .line 1458
    :cond_0
    iget-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mInit:Z

    if-nez v2, :cond_1

    .line 1459
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->init()V

    .line 1462
    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->getTargetDistance()I

    move-result v1

    .line 1464
    .local v1, targetDistance:I
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 1465
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->nextView()V

    .line 1466
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1470
    :cond_2
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mHeightMovedDistance:I

    sub-int v0, v1, v2

    .line 1471
    .local v0, step:I
    iput v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mHeightMovedDistance:I

    .line 1472
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$2900(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->reduceViewHeight(Landroid/view/View;I)V
    invoke-static {v3, v2, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3900(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;I)V

    .line 1473
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public start(ILcom/htc/widget/MoreExpandableItemInfo;)V
    .locals 7
    .parameter "position"
    .parameter "self"

    .prologue
    const/4 v6, 0x1

    .line 1338
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mStartTime:J

    .line 1339
    iput p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mPosition:I

    .line 1340
    iput-object p2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    .line 1341
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v2}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    .line 1342
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->getCollapseReduceViewList(ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/ArrayList;
    invoke-static {v3, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3000(Lcom/htc/widget/MoreExpandableHtcListView;ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/ArrayList;

    move-result-object v3

    #setter for: Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewList:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->access$2902(Lcom/htc/widget/MoreExpandableHtcListView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1343
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$2900(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mReduceViewCount:I

    .line 1347
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    #setter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandedTargetItem:Lcom/htc/widget/MoreExpandableItemInfo;
    invoke-static {v2, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1502(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableItemInfo;)Lcom/htc/widget/MoreExpandableItemInfo;

    .line 1350
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mReduceViewCount:I

    if-nez v2, :cond_0

    .line 1351
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->end()V

    .line 1374
    :goto_0
    return-void

    .line 1355
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mReduceViewCount:I

    if-ge v1, v2, :cond_1

    .line 1356
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewHeightList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3100(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$2900(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1357
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewHeightList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3100(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1355
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1359
    :cond_1
    iput v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mMode:I

    .line 1360
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mInit:Z

    .line 1363
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v0

    .line 1364
    .local v0, currentExpandedItemInfo:Lcom/htc/widget/MoreExpandableItemInfo;
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 1366
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mReduceViewCount:I

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v5}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->reduceChildren(Lcom/htc/widget/MoreExpandableItemInfo;IZ)V
    invoke-static {v2, v0, v3, v6}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3200(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableItemInfo;IZ)V

    .line 1373
    :goto_2
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1369
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    iget v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mReduceViewCount:I

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->reduceChildren(Lcom/htc/widget/MoreExpandableItemInfo;IZ)V
    invoke-static {v2, v3, v4, v6}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3200(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableItemInfo;IZ)V

    goto :goto_2
.end method
