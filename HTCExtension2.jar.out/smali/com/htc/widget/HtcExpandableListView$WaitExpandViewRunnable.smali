.class Lcom/htc/widget/HtcExpandableListView$WaitExpandViewRunnable;
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
    name = "WaitExpandViewRunnable"
.end annotation


# static fields
.field private static final MOVE_MODE:I = 0x1

.field private static final STOP_MODE:I


# instance fields
.field private mMode:I

.field private mPosition:I

.field final synthetic this$0:Lcom/htc/widget/HtcExpandableListView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/HtcExpandableListView;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1675
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView$WaitExpandViewRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1678
    iput v0, p0, Lcom/htc/widget/HtcExpandableListView$WaitExpandViewRunnable;->mMode:I

    .line 1679
    iput v0, p0, Lcom/htc/widget/HtcExpandableListView$WaitExpandViewRunnable;->mPosition:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HtcExpandableListView;Lcom/htc/widget/HtcExpandableListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1675
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcExpandableListView$WaitExpandViewRunnable;-><init>(Lcom/htc/widget/HtcExpandableListView;)V

    return-void
.end method

.method private end()V
    .locals 2

    .prologue
    .line 1710
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcExpandableListView$WaitExpandViewRunnable;->mMode:I

    .line 1713
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$WaitExpandViewRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mExpandIncreaseRunnable:Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;
    invoke-static {v0}, Lcom/htc/widget/HtcExpandableListView;->access$600(Lcom/htc/widget/HtcExpandableListView;)Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HtcExpandableListView$WaitExpandViewRunnable;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->start(I)V

    .line 1714
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1696
    iget v1, p0, Lcom/htc/widget/HtcExpandableListView$WaitExpandViewRunnable;->mMode:I

    if-nez v1, :cond_0

    .line 1707
    :goto_0
    return-void

    .line 1699
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$WaitExpandViewRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget v2, p0, Lcom/htc/widget/HtcExpandableListView$WaitExpandViewRunnable;->mPosition:I

    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView$WaitExpandViewRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcExpandableListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView$WaitExpandViewRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcExpandableListView;->getHeaderViewsCount()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1700
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_1

    .line 1701
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$WaitExpandViewRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcExpandableListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1703
    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/HtcExpandableListView$WaitExpandViewRunnable;->end()V

    goto :goto_0
.end method

.method public start(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1686
    iput p1, p0, Lcom/htc/widget/HtcExpandableListView$WaitExpandViewRunnable;->mPosition:I

    .line 1687
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcExpandableListView$WaitExpandViewRunnable;->mMode:I

    .line 1688
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$WaitExpandViewRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcExpandableListView;->post(Ljava/lang/Runnable;)Z

    .line 1689
    return-void
.end method
