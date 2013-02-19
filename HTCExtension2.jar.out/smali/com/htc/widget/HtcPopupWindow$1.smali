.class Lcom/htc/widget/HtcPopupWindow$1;
.super Ljava/lang/Object;
.source "HtcPopupWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcPopupWindow;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/htc/widget/HtcPopupWindow$1;->this$0:Lcom/htc/widget/HtcPopupWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 8

    .prologue
    const/4 v3, -0x1

    .line 94
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow$1;->this$0:Lcom/htc/widget/HtcPopupWindow;

    #getter for: Lcom/htc/widget/HtcPopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/htc/widget/HtcPopupWindow;->access$000(Lcom/htc/widget/HtcPopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow$1;->this$0:Lcom/htc/widget/HtcPopupWindow;

    #getter for: Lcom/htc/widget/HtcPopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/htc/widget/HtcPopupWindow;->access$000(Lcom/htc/widget/HtcPopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v6, v0

    .line 95
    .local v6, anchor:Landroid/view/View;
    :goto_0
    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow$1;->this$0:Lcom/htc/widget/HtcPopupWindow;

    #getter for: Lcom/htc/widget/HtcPopupWindow;->mPopupView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/widget/HtcPopupWindow;->access$100(Lcom/htc/widget/HtcPopupWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow$1;->this$0:Lcom/htc/widget/HtcPopupWindow;

    #getter for: Lcom/htc/widget/HtcPopupWindow;->mPopupView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/widget/HtcPopupWindow;->access$100(Lcom/htc/widget/HtcPopupWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 99
    .local v7, p:Landroid/view/WindowManager$LayoutParams;
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow$1;->this$0:Lcom/htc/widget/HtcPopupWindow;

    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindow$1;->this$0:Lcom/htc/widget/HtcPopupWindow;

    iget-object v2, p0, Lcom/htc/widget/HtcPopupWindow$1;->this$0:Lcom/htc/widget/HtcPopupWindow;

    #getter for: Lcom/htc/widget/HtcPopupWindow;->mAnchorXoff:I
    invoke-static {v2}, Lcom/htc/widget/HtcPopupWindow;->access$200(Lcom/htc/widget/HtcPopupWindow;)I

    move-result v2

    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindow$1;->this$0:Lcom/htc/widget/HtcPopupWindow;

    #getter for: Lcom/htc/widget/HtcPopupWindow;->mAnchorYoff:I
    invoke-static {v4}, Lcom/htc/widget/HtcPopupWindow;->access$300(Lcom/htc/widget/HtcPopupWindow;)I

    move-result v4

    #calls: Lcom/htc/widget/HtcPopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    invoke-static {v1, v6, v7, v2, v4}, Lcom/htc/widget/HtcPopupWindow;->access$400(Lcom/htc/widget/HtcPopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v1

    #calls: Lcom/htc/widget/HtcPopupWindow;->updateAboveAnchor(Z)V
    invoke-static {v0, v1}, Lcom/htc/widget/HtcPopupWindow;->access$500(Lcom/htc/widget/HtcPopupWindow;Z)V

    .line 100
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow$1;->this$0:Lcom/htc/widget/HtcPopupWindow;

    iget v1, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcPopupWindow;->update(IIIIZ)V

    .line 102
    .end local v7           #p:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void

    .line 94
    .end local v6           #anchor:Landroid/view/View;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method
