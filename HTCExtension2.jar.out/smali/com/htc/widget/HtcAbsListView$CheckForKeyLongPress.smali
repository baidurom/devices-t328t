.class Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;
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
    name = "CheckForKeyLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcAbsListView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/HtcAbsListView;)V
    .locals 1
    .parameter

    .prologue
    .line 2858
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcAbsListView$WindowRunnnable;-><init>(Lcom/htc/widget/HtcAbsListView;Lcom/htc/widget/HtcAbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HtcAbsListView;Lcom/htc/widget/HtcAbsListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2858
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2864
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAbsListView;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v3, v3, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ltz v3, :cond_1

    .line 2865
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v3, v3, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v4, v4, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v1, v3, v4

    .line 2866
    .local v1, index:I
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2868
    .local v2, v:Landroid/view/View;
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-boolean v3, v3, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-nez v3, :cond_2

    .line 2869
    const/4 v0, 0x0

    .line 2870
    .local v0, handled:Z
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;->sameWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2871
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v4, v4, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-wide v5, v5, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/htc/widget/HtcAbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    .line 2873
    :cond_0
    if-eqz v0, :cond_1

    .line 2874
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    .line 2875
    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    .line 2882
    .end local v0           #handled:Z
    .end local v1           #index:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 2878
    .restart local v1       #index:I
    .restart local v2       #v:Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    .line 2879
    if-eqz v2, :cond_1

    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method
