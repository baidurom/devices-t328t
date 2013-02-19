.class Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ExpandableListPopupBubbleWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/ExpandableListPopupBubbleWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;


# direct methods
.method private constructor <init>(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 1713
    iput-object p1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/ExpandableListPopupBubbleWindow;Lcom/htc/widget/ExpandableListPopupBubbleWindow$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1713
    invoke-direct {p0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;-><init>(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 6

    .prologue
    .line 1721
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 1723
    .local v1, threadHashCode:I
    iget-object v3, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->constructThreadHash:I
    invoke-static {v3}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$800(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 1724
    const-string v3, "ExpandableListPopupBubbleWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread changed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->constructThreadHash:I
    invoke-static {v5}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$800(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)I

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

    .line 1726
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v3}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;
    invoke-static {v3}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$700(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1727
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "borranx Strange! mDropDownList is null when showing"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1745
    :cond_1
    :goto_0
    return-void

    .line 1731
    :cond_2
    iget-object v3, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v3}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1732
    iget-object v3, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mAdapter:Landroid/widget/ExpandableListAdapter;
    invoke-static {v3}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$900(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Landroid/widget/ExpandableListAdapter;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1733
    iget-object v3, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v4, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mAdapter:Landroid/widget/ExpandableListAdapter;
    invoke-static {v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$900(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Landroid/widget/ExpandableListAdapter;

    move-result-object v4

    #calls: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->measureContentWidth(Landroid/widget/ExpandableListAdapter;)I
    invoke-static {v3, v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$1000(Lcom/htc/widget/ExpandableListPopupBubbleWindow;Landroid/widget/ExpandableListAdapter;)I

    move-result v2

    .line 1734
    .local v2, width:I
    iget-object v3, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;
    invoke-static {v3}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$1100(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Lcom/htc/widget/PopupBubbleWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/PopupBubbleWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1735
    .local v0, popupBackground:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$1200(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1737
    iget-object v3, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$1200(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$1200(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownWidth:I
    invoke-static {v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$1300(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)I

    move-result v4

    if-le v3, v4, :cond_3

    .line 1738
    iget-object v3, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v3, v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setContentWidth(I)V

    .line 1743
    .end local v0           #popupBackground:Landroid/graphics/drawable/Drawable;
    .end local v2           #width:I
    :cond_3
    iget-object v3, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v3}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->show()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 1753
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->dismiss()V

    .line 1754
    return-void
.end method
