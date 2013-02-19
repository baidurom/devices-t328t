.class Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;
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
    name = "WaitExpandViewRunnable"
.end annotation


# static fields
.field static final ACTION_COLLAPSE:I = 0x1

.field static final ACTION_EXPAND:I = 0x0

.field private static final MOVE_MODE:I = 0x1

.field private static final STOP_MODE:I


# instance fields
.field private mAction:I

.field private mMode:I

.field private mPosition:I

.field private mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

.field final synthetic this$0:Lcom/htc/widget/MoreExpandableHtcListView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2368
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2373
    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->mMode:I

    .line 2374
    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->mPosition:I

    .line 2375
    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->mAction:I

    .line 2376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2368
    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    return-void
.end method

.method private end()V
    .locals 3

    .prologue
    .line 2417
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->mMode:I

    .line 2435
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->mAction:I

    if-nez v0, :cond_0

    .line 2436
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$5200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->mPosition:I

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->start(ILcom/htc/widget/MoreExpandableItemInfo;)V

    .line 2440
    :goto_0
    return-void

    .line 2438
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3500(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->mPosition:I

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->start(ILcom/htc/widget/MoreExpandableItemInfo;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2403
    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->mMode:I

    if-nez v1, :cond_0

    .line 2414
    :goto_0
    return-void

    .line 2406
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->mPosition:I

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/MoreExpandableHtcListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2407
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-boolean v1, v1, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandGroupCompleted:Z

    if-nez v1, :cond_1

    .line 2408
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2410
    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->end()V

    goto :goto_0
.end method

.method public start(ILcom/htc/widget/MoreExpandableItemInfo;)V
    .locals 1
    .parameter "position"
    .parameter "self"

    .prologue
    .line 2383
    iput p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->mPosition:I

    .line 2384
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->mMode:I

    .line 2385
    iput-object p2, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    .line 2386
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    .line 2387
    return-void
.end method

.method public start(ILcom/htc/widget/MoreExpandableItemInfo;I)V
    .locals 0
    .parameter "position"
    .parameter "self"
    .parameter "action"

    .prologue
    .line 2394
    iput p3, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->mAction:I

    .line 2395
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->start(ILcom/htc/widget/MoreExpandableItemInfo;)V

    .line 2396
    return-void
.end method
