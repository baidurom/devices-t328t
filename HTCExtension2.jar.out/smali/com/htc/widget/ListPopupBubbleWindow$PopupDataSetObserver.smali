.class Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ListPopupBubbleWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/ListPopupBubbleWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/ListPopupBubbleWindow;


# direct methods
.method private constructor <init>(Lcom/htc/widget/ListPopupBubbleWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 1807
    iput-object p1, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/ListPopupBubbleWindow;Lcom/htc/widget/ListPopupBubbleWindow$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1807
    invoke-direct {p0, p1}, Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;-><init>(Lcom/htc/widget/ListPopupBubbleWindow;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 6

    .prologue
    .line 1815
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 1817
    .local v1, threadHashCode:I
    iget-object v3, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ListPopupBubbleWindow;->constructThreadHash:I
    invoke-static {v3}, Lcom/htc/widget/ListPopupBubbleWindow;->access$700(Lcom/htc/widget/ListPopupBubbleWindow;)I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 1818
    const-string v3, "ListPopupBubbleWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread changed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ListPopupBubbleWindow;->constructThreadHash:I
    invoke-static {v5}, Lcom/htc/widget/ListPopupBubbleWindow;->access$700(Lcom/htc/widget/ListPopupBubbleWindow;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v3}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;
    invoke-static {v3}, Lcom/htc/widget/ListPopupBubbleWindow;->access$600(Lcom/htc/widget/ListPopupBubbleWindow;)Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1822
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "borranx Strange! mDropDownList is null when showing"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1840
    :cond_1
    :goto_0
    return-void

    .line 1826
    :cond_2
    iget-object v3, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v3}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1828
    iget-object v3, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v3}, Lcom/htc/widget/ListPopupBubbleWindow;->access$800(Lcom/htc/widget/ListPopupBubbleWindow;)Landroid/widget/ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1829
    iget-object v3, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v4, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v4}, Lcom/htc/widget/ListPopupBubbleWindow;->access$800(Lcom/htc/widget/ListPopupBubbleWindow;)Landroid/widget/ListAdapter;

    move-result-object v4

    #calls: Lcom/htc/widget/ListPopupBubbleWindow;->measureContentWidth(Landroid/widget/ListAdapter;)I
    invoke-static {v3, v4}, Lcom/htc/widget/ListPopupBubbleWindow;->access$900(Lcom/htc/widget/ListPopupBubbleWindow;Landroid/widget/ListAdapter;)I

    move-result v2

    .line 1830
    .local v2, width:I
    iget-object v3, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;
    invoke-static {v3}, Lcom/htc/widget/ListPopupBubbleWindow;->access$1000(Lcom/htc/widget/ListPopupBubbleWindow;)Lcom/htc/widget/PopupBubbleWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/PopupBubbleWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1831
    .local v0, popupBackground:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/htc/widget/ListPopupBubbleWindow;->access$1100(Lcom/htc/widget/ListPopupBubbleWindow;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1833
    iget-object v3, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/htc/widget/ListPopupBubbleWindow;->access$1100(Lcom/htc/widget/ListPopupBubbleWindow;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/htc/widget/ListPopupBubbleWindow;->access$1100(Lcom/htc/widget/ListPopupBubbleWindow;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownWidth:I
    invoke-static {v4}, Lcom/htc/widget/ListPopupBubbleWindow;->access$1200(Lcom/htc/widget/ListPopupBubbleWindow;)I

    move-result v4

    if-le v3, v4, :cond_3

    .line 1834
    iget-object v3, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v3, v2}, Lcom/htc/widget/ListPopupBubbleWindow;->setContentWidth(I)V

    .line 1838
    .end local v0           #popupBackground:Landroid/graphics/drawable/Drawable;
    .end local v2           #width:I
    :cond_3
    iget-object v3, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v3}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->dismiss()V

    .line 1849
    return-void
.end method
