.class Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupTouchInterceptor;
.super Ljava/lang/Object;
.source "ListPopupBubbleWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/internal/ListPopupBubbleWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupTouchInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;


# direct methods
.method private constructor <init>(Lcom/htc/widget/internal/ListPopupBubbleWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 1751
    iput-object p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupTouchInterceptor;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/internal/ListPopupBubbleWindow;Lcom/htc/widget/internal/ListPopupBubbleWindow$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1751
    invoke-direct {p0, p1}, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupTouchInterceptor;-><init>(Lcom/htc/widget/internal/ListPopupBubbleWindow;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    .line 1754
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1755
    .local v0, action:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 1756
    .local v1, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 1758
    .local v2, y:I
    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupTouchInterceptor;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;
    invoke-static {v3}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->access$1100(Lcom/htc/widget/internal/ListPopupBubbleWindow;)Lcom/htc/widget/internal/PopupBubbleWindow;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupTouchInterceptor;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;
    invoke-static {v3}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->access$1100(Lcom/htc/widget/internal/ListPopupBubbleWindow;)Lcom/htc/widget/internal/PopupBubbleWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/internal/PopupBubbleWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupTouchInterceptor;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;
    invoke-static {v3}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->access$1100(Lcom/htc/widget/internal/ListPopupBubbleWindow;)Lcom/htc/widget/internal/PopupBubbleWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/internal/PopupBubbleWindow;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_1

    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupTouchInterceptor;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;
    invoke-static {v3}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->access$1100(Lcom/htc/widget/internal/ListPopupBubbleWindow;)Lcom/htc/widget/internal/PopupBubbleWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/internal/PopupBubbleWindow;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1761
    iget-object v3, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupTouchInterceptor;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->access$1300(Lcom/htc/widget/internal/ListPopupBubbleWindow;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupTouchInterceptor;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;
    invoke-static {v4}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->access$1200(Lcom/htc/widget/internal/ListPopupBubbleWindow;)Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;

    move-result-object v4

    const-wide/16 v5, 0xfa

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1765
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 1762
    :cond_1
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 1763
    iget-object v3, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupTouchInterceptor;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->access$1300(Lcom/htc/widget/internal/ListPopupBubbleWindow;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupTouchInterceptor;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;
    invoke-static {v4}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->access$1200(Lcom/htc/widget/internal/ListPopupBubbleWindow;)Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
