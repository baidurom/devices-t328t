.class Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupScrollListener;
.super Ljava/lang/Object;
.source "ListPopupBubbleWindow.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/internal/ListPopupBubbleWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;


# direct methods
.method private constructor <init>(Lcom/htc/widget/internal/ListPopupBubbleWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 1769
    iput-object p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupScrollListener;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/internal/ListPopupBubbleWindow;Lcom/htc/widget/internal/ListPopupBubbleWindow$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1769
    invoke-direct {p0, p1}, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupScrollListener;-><init>(Lcom/htc/widget/internal/ListPopupBubbleWindow;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 1774
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 1778
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupScrollListener;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->isInputMethodNotNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupScrollListener;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;
    invoke-static {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->access$1100(Lcom/htc/widget/internal/ListPopupBubbleWindow;)Lcom/htc/widget/internal/PopupBubbleWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1780
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupScrollListener;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->access$1300(Lcom/htc/widget/internal/ListPopupBubbleWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupScrollListener;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;
    invoke-static {v1}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->access$1200(Lcom/htc/widget/internal/ListPopupBubbleWindow;)Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1781
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupScrollListener;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;
    invoke-static {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->access$1200(Lcom/htc/widget/internal/ListPopupBubbleWindow;)Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;->run()V

    .line 1783
    :cond_0
    return-void
.end method
