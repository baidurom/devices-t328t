.class Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;
.super Ljava/lang/Object;
.source "HtcReorderListView.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcReorderListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisableItemAdapter"
.end annotation


# instance fields
.field private mWrappedAdapter:Landroid/widget/ListAdapter;

.field final synthetic this$0:Lcom/htc/widget/HtcReorderListView;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HtcReorderListView;Landroid/widget/ListAdapter;)V
    .locals 0
    .parameter
    .parameter "adapter"

    .prologue
    .line 1530
    iput-object p1, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->this$0:Lcom/htc/widget/HtcReorderListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1531
    iput-object p2, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    .line 1532
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 1547
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    .line 1549
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 1569
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 1571
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 1580
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 1582
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 1591
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1593
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 1602
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 1604
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 1612
    const/4 v1, 0x0

    .line 1613
    .local v1, isConvertView:Z
    iget-object v4, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_4

    .line 1614
    if-eqz p2, :cond_0

    .line 1615
    const/4 v1, 0x1

    .line 1616
    instance-of v4, p2, Lcom/htc/widget/HtcListItem;

    if-eqz v4, :cond_3

    move-object v4, p2

    .line 1617
    check-cast v4, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    move-object v4, p2

    .line 1618
    check-cast v4, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    .line 1619
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1627
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1628
    .local v3, v:Landroid/view/View;
    if-nez v1, :cond_1

    .line 1629
    iget-object v4, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->this$0:Lcom/htc/widget/HtcReorderListView;

    #getter for: Lcom/htc/widget/HtcReorderListView;->mDraggerId:I
    invoke-static {v4}, Lcom/htc/widget/HtcReorderListView;->access$800(Lcom/htc/widget/HtcReorderListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1630
    .local v0, dragger:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1631
    check-cast v0, Landroid/widget/ImageView;

    .end local v0           #dragger:Landroid/view/View;
    iget-object v4, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->this$0:Lcom/htc/widget/HtcReorderListView;

    #getter for: Lcom/htc/widget/HtcReorderListView;->imageRest:Landroid/graphics/drawable/LayerDrawable;
    invoke-static {v4}, Lcom/htc/widget/HtcReorderListView;->access$900(Lcom/htc/widget/HtcReorderListView;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1635
    :cond_1
    iget-object v4, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->this$0:Lcom/htc/widget/HtcReorderListView;

    #getter for: Lcom/htc/widget/HtcReorderListView;->mAllItemFocusable:Z
    invoke-static {v4}, Lcom/htc/widget/HtcReorderListView;->access$1000(Lcom/htc/widget/HtcReorderListView;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1636
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 1640
    .end local v3           #v:Landroid/view/View;
    :cond_2
    :goto_1
    return-object v3

    .line 1621
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1622
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->this$0:Lcom/htc/widget/HtcReorderListView;

    #getter for: Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I
    invoke-static {v4}, Lcom/htc/widget/HtcReorderListView;->access$000(Lcom/htc/widget/HtcReorderListView;)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1623
    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1624
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1640
    .end local v2           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 1649
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    .line 1651
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 1660
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    .line 1662
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1670
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 1671
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    .line 1673
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 1558
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    .line 1560
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 1678
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1680
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 1684
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1686
    :cond_0
    return-void
.end method
