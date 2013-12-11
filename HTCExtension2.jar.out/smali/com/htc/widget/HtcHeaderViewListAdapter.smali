.class public Lcom/htc/widget/HtcHeaderViewListAdapter;
.super Ljava/lang/Object;
.source "HtcHeaderViewListAdapter.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;
.implements Landroid/widget/Filterable;


# static fields
.field static final EMPTY_INFO_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAdapter:Landroid/widget/ListAdapter;

.field mAreAllFixedViewsSelectable:Z

.field mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsFilterable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/widget/HtcHeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter
    .parameter
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListView$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, headerViewInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListView$FixedViewInfo;>;"
    .local p2, footerViewInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListView$FixedViewInfo;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 58
    instance-of v0, p3, Landroid/widget/Filterable;

    iput-boolean v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mIsFilterable:Z

    .line 60
    if-nez p1, :cond_0

    .line 61
    sget-object v0, Lcom/htc/widget/HtcHeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 66
    :goto_0
    if-nez p2, :cond_1

    .line 67
    sget-object v0, Lcom/htc/widget/HtcHeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 72
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 75
    return-void

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    goto :goto_0

    .line 69
    :cond_1
    iput-object p2, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    goto :goto_1

    .line 72
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private areAllListInfosSelectable(Ljava/util/ArrayList;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListView$FixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 103
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView$FixedViewInfo;

    .line 104
    .local v1, info:Lcom/htc/widget/HtcListView$FixedViewInfo;
    iget-boolean v2, v1, Lcom/htc/widget/HtcListView$FixedViewInfo;->isSelectable:Z

    if-nez v2, :cond_0

    .line 105
    const/4 v2, 0x0

    .line 109
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Lcom/htc/widget/HtcListView$FixedViewInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 171
    iget-object v1, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 172
    iget-boolean v1, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v0

    .line 172
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/htc/widget/HtcHeaderViewListAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/HtcHeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 162
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcHeaderViewListAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/HtcHeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mIsFilterable:Z

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 330
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFootersCount()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersCount()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .parameter "position"

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/htc/widget/HtcHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 210
    .local v2, numHeaders:I
    if-ge p1, v2, :cond_0

    .line 211
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListView$FixedViewInfo;

    iget-object v3, v3, Lcom/htc/widget/HtcListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 225
    :goto_0
    return-object v3

    .line 215
    :cond_0
    sub-int v1, p1, v2

    .line 216
    .local v1, adjPosition:I
    const/4 v0, 0x0

    .line 217
    .local v0, adapterCount:I
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 218
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 219
    if-ge v1, v0, :cond_1

    .line 220
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 225
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListView$FixedViewInfo;

    iget-object v3, v3, Lcom/htc/widget/HtcListView$FixedViewInfo;->data:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 5
    .parameter "position"

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/htc/widget/HtcHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 234
    .local v2, numHeaders:I
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    if-lt p1, v2, :cond_0

    .line 235
    sub-int v1, p1, v2

    .line 236
    .local v1, adjPosition:I
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 237
    .local v0, adapterCount:I
    if-ge v1, v0, :cond_0

    .line 238
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 241
    .end local v0           #adapterCount:I
    .end local v1           #adjPosition:I
    :goto_0
    return-wide v3

    :cond_0
    const-wide/16 v3, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 4
    .parameter "position"

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/htc/widget/HtcHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 286
    .local v2, numHeaders:I
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    if-lt p1, v2, :cond_0

    .line 287
    sub-int v1, p1, v2

    .line 288
    .local v1, adjPosition:I
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 289
    .local v0, adapterCount:I
    if-ge v1, v0, :cond_0

    .line 290
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    .line 294
    .end local v0           #adapterCount:I
    .end local v1           #adjPosition:I
    :goto_0
    return v3

    :cond_0
    const/4 v3, -0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/htc/widget/HtcHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 262
    .local v2, numHeaders:I
    if-ge p1, v2, :cond_0

    .line 263
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListView$FixedViewInfo;

    iget-object v3, v3, Lcom/htc/widget/HtcListView$FixedViewInfo;->view:Landroid/view/View;

    .line 277
    :goto_0
    return-object v3

    .line 267
    :cond_0
    sub-int v1, p1, v2

    .line 268
    .local v1, adjPosition:I
    const/4 v0, 0x0

    .line 269
    .local v0, adapterCount:I
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 270
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 271
    if-ge v1, v0, :cond_1

    .line 272
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 277
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListView$FixedViewInfo;

    iget-object v3, v3, Lcom/htc/widget/HtcListView$FixedViewInfo;->view:Landroid/view/View;

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    .line 305
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    .line 252
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 5
    .parameter "position"

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/htc/widget/HtcHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 185
    .local v2, numHeaders:I
    if-ge p1, v2, :cond_0

    .line 186
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListView$FixedViewInfo;

    iget-boolean v3, v3, Lcom/htc/widget/HtcListView$FixedViewInfo;->isSelectable:Z

    .line 200
    :goto_0
    return v3

    .line 190
    :cond_0
    sub-int v1, p1, v2

    .line 191
    .local v1, adjPosition:I
    const/4 v0, 0x0

    .line 192
    .local v0, adapterCount:I
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 193
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 194
    if-ge v1, v0, :cond_1

    .line 195
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    goto :goto_0

    .line 200
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListView$FixedViewInfo;

    iget-boolean v3, v3, Lcom/htc/widget/HtcListView$FixedViewInfo;->isSelectable:Z

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 313
    :cond_0
    return-void
.end method

.method public removeFooter(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 138
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 139
    iget-object v4, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView$FixedViewInfo;

    .line 140
    .local v1, info:Lcom/htc/widget/HtcListView$FixedViewInfo;
    iget-object v4, v1, Lcom/htc/widget/HtcListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v4, p1, :cond_1

    .line 141
    iget-object v4, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 143
    iget-object v4, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/htc/widget/HtcHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/htc/widget/HtcHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 151
    .end local v1           #info:Lcom/htc/widget/HtcListView$FixedViewInfo;
    :goto_1
    return v3

    .line 138
    .restart local v1       #info:Lcom/htc/widget/HtcListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #info:Lcom/htc/widget/HtcListView$FixedViewInfo;
    :cond_2
    move v3, v2

    .line 151
    goto :goto_1
.end method

.method public removeHeader(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 118
    iget-object v4, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView$FixedViewInfo;

    .line 119
    .local v1, info:Lcom/htc/widget/HtcListView$FixedViewInfo;
    iget-object v4, v1, Lcom/htc/widget/HtcListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v4, p1, :cond_1

    .line 120
    iget-object v4, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 122
    iget-object v4, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/htc/widget/HtcHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/htc/widget/HtcHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 130
    .end local v1           #info:Lcom/htc/widget/HtcListView$FixedViewInfo;
    :goto_1
    return v3

    .line 117
    .restart local v1       #info:Lcom/htc/widget/HtcListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #info:Lcom/htc/widget/HtcListView$FixedViewInfo;
    :cond_2
    move v3, v2

    .line 130
    goto :goto_1
.end method

.method public setNullCheckView(Landroid/view/View;)V
    .locals 0
    .parameter "nullCheckView"

    .prologue
    .line 345
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 320
    :cond_0
    return-void
.end method
