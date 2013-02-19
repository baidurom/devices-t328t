.class Lcom/htc/widget/HtcAbsListView$PerformClick;
.super Lcom/htc/widget/HtcAbsListView$WindowRunnnable;
.source "HtcAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Lcom/htc/widget/HtcAbsListView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/HtcAbsListView;)V
    .locals 1
    .parameter

    .prologue
    .line 2804
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView$PerformClick;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcAbsListView$WindowRunnnable;-><init>(Lcom/htc/widget/HtcAbsListView;Lcom/htc/widget/HtcAbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HtcAbsListView;Lcom/htc/widget/HtcAbsListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2804
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView$PerformClick;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2814
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView$PerformClick;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-boolean v3, v3, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-eqz v3, :cond_1

    .line 2828
    :cond_0
    :goto_0
    return-void

    .line 2816
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView$PerformClick;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v0, v3, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2817
    .local v0, adapter:Landroid/widget/ListAdapter;
    iget v1, p0, Lcom/htc/widget/HtcAbsListView$PerformClick;->mClickMotionPosition:I

    .line 2818
    .local v1, motionPosition:I
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView$PerformClick;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v3, v3, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-lez v3, :cond_0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView$PerformClick;->sameWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2821
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView$PerformClick;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$PerformClick;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v4, v4, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v4, v1, v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2824
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 2825
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView$PerformClick;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v3, v2, v1, v4, v5}, Lcom/htc/widget/HtcAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_0
.end method
