.class Lcom/htc/widget/PopupBubbleWindow$1;
.super Ljava/lang/Object;
.source "PopupBubbleWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/PopupBubbleWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/PopupBubbleWindow;


# direct methods
.method constructor <init>(Lcom/htc/widget/PopupBubbleWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/htc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 180
    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/htc/widget/PopupBubbleWindow;->access$000(Lcom/htc/widget/PopupBubbleWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/htc/widget/PopupBubbleWindow;->access$000(Lcom/htc/widget/PopupBubbleWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 181
    .local v0, anchor:Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;
    invoke-static {v1}, Lcom/htc/widget/PopupBubbleWindow;->access$100(Lcom/htc/widget/PopupBubbleWindow;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v1}, Lcom/htc/widget/PopupBubbleWindow;->access$200(Lcom/htc/widget/PopupBubbleWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/PopupBubbleWindow;->triangleLayout:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v1}, Lcom/htc/widget/PopupBubbleWindow;->access$300(Lcom/htc/widget/PopupBubbleWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lcom/htc/widget/PopupBubbleWindow;->access$200(Lcom/htc/widget/PopupBubbleWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/PopupBubbleWindow;->mAnchorXoff:I
    invoke-static {v3}, Lcom/htc/widget/PopupBubbleWindow;->access$400(Lcom/htc/widget/PopupBubbleWindow;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/PopupBubbleWindow;->mAnchorYoff:I
    invoke-static {v4}, Lcom/htc/widget/PopupBubbleWindow;->access$500(Lcom/htc/widget/PopupBubbleWindow;)I

    move-result v4

    #calls: Lcom/htc/widget/PopupBubbleWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V
    invoke-static {v1, v0, v2, v3, v4}, Lcom/htc/widget/PopupBubbleWindow;->access$600(Lcom/htc/widget/PopupBubbleWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    .line 184
    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/PopupBubbleWindow;->triangleLayout:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lcom/htc/widget/PopupBubbleWindow;->access$300(Lcom/htc/widget/PopupBubbleWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/PopupBubbleWindow;->mAnchorXoff:I
    invoke-static {v3}, Lcom/htc/widget/PopupBubbleWindow;->access$400(Lcom/htc/widget/PopupBubbleWindow;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/PopupBubbleWindow;->mAnchorYoff:I
    invoke-static {v4}, Lcom/htc/widget/PopupBubbleWindow;->access$500(Lcom/htc/widget/PopupBubbleWindow;)I

    move-result v4

    #calls: Lcom/htc/widget/PopupBubbleWindow;->findTrianglePosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V
    invoke-static {v1, v0, v2, v3, v4}, Lcom/htc/widget/PopupBubbleWindow;->access$700(Lcom/htc/widget/PopupBubbleWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    .line 185
    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lcom/htc/widget/PopupBubbleWindow;->access$200(Lcom/htc/widget/PopupBubbleWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, p0, Lcom/htc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3}, Lcom/htc/widget/PopupBubbleWindow;->access$200(Lcom/htc/widget/PopupBubbleWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v1, v2, v3, v5, v5}, Lcom/htc/widget/PopupBubbleWindow;->update(IIII)V

    .line 187
    :cond_0
    return-void

    .line 180
    .end local v0           #anchor:Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
