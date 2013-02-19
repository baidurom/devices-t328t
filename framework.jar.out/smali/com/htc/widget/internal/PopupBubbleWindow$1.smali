.class Lcom/htc/widget/internal/PopupBubbleWindow$1;
.super Ljava/lang/Object;
.source "PopupBubbleWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/internal/PopupBubbleWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/internal/PopupBubbleWindow;


# direct methods
.method constructor <init>(Lcom/htc/widget/internal/PopupBubbleWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 208
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/internal/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/htc/widget/internal/PopupBubbleWindow;->access$000(Lcom/htc/widget/internal/PopupBubbleWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/internal/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/htc/widget/internal/PopupBubbleWindow;->access$000(Lcom/htc/widget/internal/PopupBubbleWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 209
    .local v0, anchor:Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/internal/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/PopupBubbleWindow;->mPopupView:Landroid/view/View;
    invoke-static {v1}, Lcom/htc/widget/internal/PopupBubbleWindow;->access$100(Lcom/htc/widget/internal/PopupBubbleWindow;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/internal/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v1}, Lcom/htc/widget/internal/PopupBubbleWindow;->access$200(Lcom/htc/widget/internal/PopupBubbleWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/internal/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/PopupBubbleWindow;->triangleLayout:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v1}, Lcom/htc/widget/internal/PopupBubbleWindow;->access$300(Lcom/htc/widget/internal/PopupBubbleWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/internal/PopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/widget/internal/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/internal/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lcom/htc/widget/internal/PopupBubbleWindow;->access$200(Lcom/htc/widget/internal/PopupBubbleWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/internal/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/PopupBubbleWindow;->mAnchorXoff:I
    invoke-static {v3}, Lcom/htc/widget/internal/PopupBubbleWindow;->access$400(Lcom/htc/widget/internal/PopupBubbleWindow;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/internal/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/PopupBubbleWindow;->mAnchorYoff:I
    invoke-static {v4}, Lcom/htc/widget/internal/PopupBubbleWindow;->access$500(Lcom/htc/widget/internal/PopupBubbleWindow;)I

    move-result v4

    #calls: Lcom/htc/widget/internal/PopupBubbleWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V
    invoke-static {v1, v0, v2, v3, v4}, Lcom/htc/widget/internal/PopupBubbleWindow;->access$600(Lcom/htc/widget/internal/PopupBubbleWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    .line 212
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/internal/PopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/widget/internal/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/internal/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/PopupBubbleWindow;->triangleLayout:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lcom/htc/widget/internal/PopupBubbleWindow;->access$300(Lcom/htc/widget/internal/PopupBubbleWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/internal/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/PopupBubbleWindow;->mAnchorXoff:I
    invoke-static {v3}, Lcom/htc/widget/internal/PopupBubbleWindow;->access$400(Lcom/htc/widget/internal/PopupBubbleWindow;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/internal/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/internal/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/PopupBubbleWindow;->mAnchorYoff:I
    invoke-static {v4}, Lcom/htc/widget/internal/PopupBubbleWindow;->access$500(Lcom/htc/widget/internal/PopupBubbleWindow;)I

    move-result v4

    #calls: Lcom/htc/widget/internal/PopupBubbleWindow;->findTrianglePosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V
    invoke-static {v1, v0, v2, v3, v4}, Lcom/htc/widget/internal/PopupBubbleWindow;->access$700(Lcom/htc/widget/internal/PopupBubbleWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    .line 213
    iget-object v1, p0, Lcom/htc/widget/internal/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/internal/PopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/widget/internal/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/internal/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lcom/htc/widget/internal/PopupBubbleWindow;->access$200(Lcom/htc/widget/internal/PopupBubbleWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, p0, Lcom/htc/widget/internal/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/internal/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3}, Lcom/htc/widget/internal/PopupBubbleWindow;->access$200(Lcom/htc/widget/internal/PopupBubbleWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v1, v2, v3, v5, v5}, Lcom/htc/widget/internal/PopupBubbleWindow;->update(IIII)V

    .line 215
    :cond_0
    return-void

    .line 208
    .end local v0           #anchor:Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
