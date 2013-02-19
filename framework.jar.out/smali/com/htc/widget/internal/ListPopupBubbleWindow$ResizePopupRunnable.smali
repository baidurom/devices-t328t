.class Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;
.super Ljava/lang/Object;
.source "ListPopupBubbleWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/internal/ListPopupBubbleWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizePopupRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;


# direct methods
.method private constructor <init>(Lcom/htc/widget/internal/ListPopupBubbleWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 1740
    iput-object p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/internal/ListPopupBubbleWindow;Lcom/htc/widget/internal/ListPopupBubbleWindow$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1740
    invoke-direct {p0, p1}, Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;-><init>(Lcom/htc/widget/internal/ListPopupBubbleWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1743
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;
    invoke-static {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->access$600(Lcom/htc/widget/internal/ListPopupBubbleWindow;)Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;
    invoke-static {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->access$600(Lcom/htc/widget/internal/ListPopupBubbleWindow;)Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;
    invoke-static {v1}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->access$600(Lcom/htc/widget/internal/ListPopupBubbleWindow;)Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;
    invoke-static {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->access$600(Lcom/htc/widget/internal/ListPopupBubbleWindow;)Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    iget v1, v1, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mListItemExpandMaximum:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;
    invoke-static {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->access$1100(Lcom/htc/widget/internal/ListPopupBubbleWindow;)Lcom/htc/widget/internal/PopupBubbleWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1745
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;
    invoke-static {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->access$1100(Lcom/htc/widget/internal/ListPopupBubbleWindow;)Lcom/htc/widget/internal/PopupBubbleWindow;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/widget/internal/PopupBubbleWindow;->setInputMethodMode(I)V

    .line 1746
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->show()V

    .line 1748
    :cond_0
    return-void
.end method
