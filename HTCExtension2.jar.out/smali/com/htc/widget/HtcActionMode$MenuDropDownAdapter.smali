.class Lcom/htc/widget/HtcActionMode$MenuDropDownAdapter;
.super Landroid/widget/BaseAdapter;
.source "HtcActionMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MenuDropDownAdapter"
.end annotation


# instance fields
.field count:I

.field mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/widget/HtcActionMode;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HtcActionMode;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2171
    .local p2, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/MenuItem;>;"
    iput-object p1, p0, Lcom/htc/widget/HtcActionMode$MenuDropDownAdapter;->this$0:Lcom/htc/widget/HtcActionMode;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2172
    iput-object p2, p0, Lcom/htc/widget/HtcActionMode$MenuDropDownAdapter;->mItemList:Ljava/util/ArrayList;

    .line 2173
    return-void
.end method

.method private setItemContent(Landroid/view/View;Landroid/view/MenuItem;)V
    .locals 3
    .parameter "view"
    .parameter "item"

    .prologue
    .line 2217
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2233
    :cond_0
    :goto_0
    return-void

    .line 2218
    :cond_1
    const v2, 0x20200f1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2219
    .local v1, tv:Landroid/widget/TextView;
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2220
    .local v0, text:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 2221
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 2222
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2223
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2226
    :cond_2
    invoke-interface {p2}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2227
    const v2, -0x7f000001

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 2230
    :cond_3
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 2187
    iget-object v0, p0, Lcom/htc/widget/HtcActionMode$MenuDropDownAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 2194
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 2214
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 2240
    iget-object v3, p0, Lcom/htc/widget/HtcActionMode$MenuDropDownAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 2241
    .local v1, item:Landroid/view/MenuItem;
    if-nez p2, :cond_2

    .line 2242
    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance p2, Landroid/view/View;

    .end local p2
    iget-object v3, p0, Lcom/htc/widget/HtcActionMode$MenuDropDownAdapter;->this$0:Lcom/htc/widget/HtcActionMode;

    invoke-virtual {v3}, Lcom/htc/widget/HtcActionMode;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2258
    .restart local p2
    :goto_0
    return-object p2

    .line 2244
    :cond_0
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p2

    .line 2245
    if-nez p2, :cond_1

    .line 2246
    iget-object v3, p0, Lcom/htc/widget/HtcActionMode$MenuDropDownAdapter;->this$0:Lcom/htc/widget/HtcActionMode;

    invoke-virtual {v3}, Lcom/htc/widget/HtcActionMode;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2247
    .local v0, inflater:Landroid/view/LayoutInflater;
    new-instance p2, Landroid/widget/TextView;

    .end local p2
    iget-object v3, p0, Lcom/htc/widget/HtcActionMode$MenuDropDownAdapter;->this$0:Lcom/htc/widget/HtcActionMode;

    #getter for: Lcom/htc/widget/HtcActionMode;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/widget/HtcActionMode;->access$1200(Lcom/htc/widget/HtcActionMode;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {p2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2248
    .restart local p2
    const v3, 0x20200f1

    invoke-virtual {p2, v3}, Landroid/view/View;->setId(I)V

    .line 2249
    invoke-direct {p0, p2, v1}, Lcom/htc/widget/HtcActionMode$MenuDropDownAdapter;->setItemContent(Landroid/view/View;Landroid/view/MenuItem;)V

    .line 2251
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2252
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 2253
    .local v2, lp:Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2256
    .end local v2           #lp:Landroid/widget/AbsListView$LayoutParams;
    :cond_2
    invoke-direct {p0, p2, v1}, Lcom/htc/widget/HtcActionMode$MenuDropDownAdapter;->setItemContent(Landroid/view/View;Landroid/view/MenuItem;)V

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 2202
    iget-object v0, p0, Lcom/htc/widget/HtcActionMode$MenuDropDownAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public setMenu(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2179
    .local p1, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/MenuItem;>;"
    iput-object p1, p0, Lcom/htc/widget/HtcActionMode$MenuDropDownAdapter;->mItemList:Ljava/util/ArrayList;

    .line 2180
    return-void
.end method
