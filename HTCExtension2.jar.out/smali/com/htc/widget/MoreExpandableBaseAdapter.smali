.class public abstract Lcom/htc/widget/MoreExpandableBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "MoreExpandableBaseAdapter.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private MAX_CACHE:I

.field private mContext:Landroid/content/Context;

.field private mExpandedChildrenBackgroundColor:I

.field private mExpandedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupBackground:Landroid/graphics/drawable/Drawable;

.field private mHideLevel:I

.field private mHideViewCount:I

.field private mHideViewFlag:Z

.field private mHideViewHeightList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHideViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListItemHeight:I

.field private mReducedRemainderChildren:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldHideView:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "MoreExpandableBaseAdapter"

    sput-object v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    .line 38
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mContext:Landroid/content/Context;

    .line 39
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 40
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    .line 41
    iput v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mListItemHeight:I

    .line 645
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewFlag:Z

    .line 646
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mShouldHideView:Z

    .line 647
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideLevel:I

    .line 648
    iput v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewCount:I

    .line 649
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewList:Ljava/util/ArrayList;

    .line 650
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewHeightList:Ljava/util/ArrayList;

    .line 651
    iput v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->MAX_CACHE:I

    .line 49
    invoke-direct {p0, p1, v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->init(Landroid/content/Context;Ljava/util/LinkedList;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/LinkedList;)V
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, itemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<+Lcom/htc/widget/MoreExpandableItemInfo;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    .line 38
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mContext:Landroid/content/Context;

    .line 39
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 40
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    .line 41
    iput v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mListItemHeight:I

    .line 645
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewFlag:Z

    .line 646
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mShouldHideView:Z

    .line 647
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideLevel:I

    .line 648
    iput v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewCount:I

    .line 649
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewList:Ljava/util/ArrayList;

    .line 650
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewHeightList:Ljava/util/ArrayList;

    .line 651
    iput v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->MAX_CACHE:I

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->init(Landroid/content/Context;Ljava/util/LinkedList;)V

    .line 60
    return-void
.end method

.method private hideSibling(Lcom/htc/widget/MoreExpandableItemInfo;)Z
    .locals 6
    .parameter "self"

    .prologue
    const/4 v5, 0x1

    .line 569
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    .line 570
    .local v1, parent:Lcom/htc/widget/MoreExpandableItemInfo;
    if-nez v1, :cond_1

    .line 583
    :cond_0
    return v5

    .line 573
    :cond_1
    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v2

    .line 574
    .local v2, sibling:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/widget/MoreExpandableItemInfo;>;"
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 576
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/widget/MoreExpandableItemInfo;>;"
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 577
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/MoreExpandableItemInfo;

    .line 578
    .local v3, temp:Lcom/htc/widget/MoreExpandableItemInfo;
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 579
    iget-object v4, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Ljava/util/LinkedList;)V
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, itemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/widget/MoreExpandableItemInfo;>;"
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mContext:Landroid/content/Context;

    .line 64
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    .line 66
    if-nez p2, :cond_0

    .line 67
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    .line 70
    :goto_0
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x2050012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mListItemHeight:I

    .line 75
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mReducedRemainderChildren:Ljava/util/LinkedList;

    .line 76
    const v1, 0x208003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mGroupBackground:Landroid/graphics/drawable/Drawable;

    .line 77
    const/4 v0, 0x0

    .line 78
    return-void

    .line 69
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_0
    iput-object p2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    goto :goto_0
.end method

.method private showChildren(ILcom/htc/widget/MoreExpandableItemInfo;Lcom/htc/widget/MoreExpandableItemInfo;)Z
    .locals 4
    .parameter "position"
    .parameter "self"
    .parameter "expandedChild"

    .prologue
    const/4 v3, 0x1

    .line 610
    if-eqz p2, :cond_0

    .line 611
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 612
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getChildren(ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->setChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    .line 613
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedList;->addAll(ILjava/util/Collection;)Z

    .line 616
    :cond_0
    return v3
.end method

.method private showSibling(Lcom/htc/widget/MoreExpandableItemInfo;)Z
    .locals 7
    .parameter "self"

    .prologue
    const/4 v6, 0x1

    .line 588
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v2

    .line 589
    .local v2, parent:Lcom/htc/widget/MoreExpandableItemInfo;
    if-nez v2, :cond_1

    .line 605
    :cond_0
    return v6

    .line 592
    :cond_1
    invoke-virtual {v2}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v3

    .line 593
    .local v3, sibling:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/widget/MoreExpandableItemInfo;>;"
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 595
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/widget/MoreExpandableItemInfo;>;"
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v5, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 596
    .local v0, addPos:I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 597
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/MoreExpandableItemInfo;

    .line 598
    .local v4, temp:Lcom/htc/widget/MoreExpandableItemInfo;
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 599
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v5, v0, v4}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 600
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 602
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method Destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 713
    iput-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    .line 714
    iput-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mContext:Landroid/content/Context;

    .line 715
    iput-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 716
    iput-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    .line 717
    iput-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewList:Ljava/util/ArrayList;

    .line 718
    iput-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewHeightList:Ljava/util/ArrayList;

    .line 719
    return-void
.end method

.method appendChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)Z
    .locals 8
    .parameter "self"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, newChildren:Ljava/util/LinkedList;,"Ljava/util/LinkedList<+Lcom/htc/widget/MoreExpandableItemInfo;>;"
    const/4 v6, 0x0

    .line 213
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 215
    .local v0, expandLevel:I
    if-nez p2, :cond_0

    move v5, v6

    .line 244
    :goto_0
    return v5

    .line 217
    :cond_0
    if-nez p1, :cond_1

    move v5, v6

    .line 218
    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroup()Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    .line 220
    goto :goto_0

    .line 221
    :cond_2
    const/4 v5, -0x1

    if-ne v0, v5, :cond_3

    move v5, v6

    .line 222
    goto :goto_0

    .line 223
    :cond_3
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 224
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v5, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 225
    .local v3, selfPosition:I
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildrenCount()I

    move-result v5

    if-nez v5, :cond_4

    .line 226
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->changeChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)Z

    move-result v5

    goto :goto_0

    .line 228
    :cond_4
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 229
    .local v2, newChildrenList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/widget/MoreExpandableItemInfo;>;"
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 231
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/widget/MoreExpandableItemInfo;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 232
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/MoreExpandableItemInfo;

    .line 233
    .local v4, temp:Lcom/htc/widget/MoreExpandableItemInfo;
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 235
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 237
    .end local v4           #temp:Lcom/htc/widget/MoreExpandableItemInfo;
    :cond_5
    invoke-virtual {v2, p2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 238
    invoke-virtual {p1, v2}, Lcom/htc/widget/MoreExpandableItemInfo;->setChildren(Ljava/util/LinkedList;)V

    .line 239
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/LinkedList;->addAll(ILjava/util/Collection;)Z

    .line 240
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->notifyDataSetChanged()V

    .line 241
    const/4 v5, 0x1

    goto :goto_0

    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/widget/MoreExpandableItemInfo;>;"
    .end local v2           #newChildrenList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/widget/MoreExpandableItemInfo;>;"
    .end local v3           #selfPosition:I
    :cond_6
    move v5, v6

    .line 244
    goto :goto_0
.end method

.method appendRoot(Ljava/util/LinkedList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, itemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<+Lcom/htc/widget/MoreExpandableItemInfo;>;"
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 278
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->notifyDataSetChanged()V

    .line 279
    return-void
.end method

.method changeChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)Z
    .locals 7
    .parameter "self"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, children:Ljava/util/LinkedList;,"Ljava/util/LinkedList<+Lcom/htc/widget/MoreExpandableItemInfo;>;"
    const/4 v5, 0x0

    .line 174
    iget-object v4, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 175
    .local v0, expandLevel:I
    if-nez p2, :cond_0

    move v4, v5

    .line 200
    :goto_0
    return v4

    .line 177
    :cond_0
    if-nez p1, :cond_1

    move v4, v5

    .line 178
    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroup()Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v5

    .line 180
    goto :goto_0

    .line 181
    :cond_2
    const/4 v4, -0x1

    if-ne v0, v4, :cond_3

    .line 182
    invoke-virtual {p1, p2}, Lcom/htc/widget/MoreExpandableItemInfo;->setChildren(Ljava/util/LinkedList;)V

    move v4, v5

    .line 183
    goto :goto_0

    .line 184
    :cond_3
    iget-object v4, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 185
    iget-object v4, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v4, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 186
    .local v2, selfPosition:I
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 188
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/widget/MoreExpandableItemInfo;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 189
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/MoreExpandableItemInfo;

    .line 190
    .local v3, temp:Lcom/htc/widget/MoreExpandableItemInfo;
    iget-object v4, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 191
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 194
    .end local v3           #temp:Lcom/htc/widget/MoreExpandableItemInfo;
    :cond_4
    invoke-virtual {p1, p2}, Lcom/htc/widget/MoreExpandableItemInfo;->setChildren(Ljava/util/LinkedList;)V

    .line 195
    iget-object v4, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/LinkedList;->addAll(ILjava/util/Collection;)Z

    .line 196
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->notifyDataSetChanged()V

    .line 197
    const/4 v4, 0x1

    goto :goto_0

    .line 199
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/widget/MoreExpandableItemInfo;>;"
    .end local v2           #selfPosition:I
    :cond_5
    invoke-virtual {p1, p2}, Lcom/htc/widget/MoreExpandableItemInfo;->setChildren(Ljava/util/LinkedList;)V

    move v4, v5

    .line 200
    goto :goto_0
.end method

.method changeRoot(Ljava/util/LinkedList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, itemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<+Lcom/htc/widget/MoreExpandableItemInfo;>;"
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 267
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 268
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    .line 269
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->notifyDataSetChanged()V

    .line 270
    return-void
.end method

.method collapseAll()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 631
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 632
    const/high16 v1, -0x8000

    .line 635
    :goto_0
    return v1

    .line 634
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 635
    .local v0, rootExpandedPosition:I
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->collapseGroup(ILcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v1

    goto :goto_0
.end method

.method collapseChild(ILcom/htc/widget/MoreExpandableItemInfo;)I
    .locals 2
    .parameter "position"
    .parameter "self"

    .prologue
    .line 511
    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getExpandedChild()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v0

    .line 512
    .local v0, expandedChild:Lcom/htc/widget/MoreExpandableItemInfo;
    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {p0, v0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->collapseGroup(Lcom/htc/widget/MoreExpandableItemInfo;)Z

    .line 514
    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->showChildren(ILcom/htc/widget/MoreExpandableItemInfo;Lcom/htc/widget/MoreExpandableItemInfo;)Z

    .line 515
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->notifyDataSetChanged()V

    .line 517
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method collapseGroup(ILcom/htc/widget/MoreExpandableItemInfo;)I
    .locals 3
    .parameter "position"
    .parameter "self"

    .prologue
    .line 500
    invoke-virtual {p0, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->collapseGroup(Lcom/htc/widget/MoreExpandableItemInfo;)Z

    .line 501
    invoke-direct {p0, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->showSibling(Lcom/htc/widget/MoreExpandableItemInfo;)Z

    .line 502
    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v0

    .line 503
    .local v0, parent:Lcom/htc/widget/MoreExpandableItemInfo;
    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v1

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildrenCount()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->setHideViewFlag(II)V

    .line 505
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->notifyDataSetChanged()V

    .line 506
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method collapseGroup(Lcom/htc/widget/MoreExpandableItemInfo;)Z
    .locals 5
    .parameter "self"

    .prologue
    .line 522
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->isChildExpanded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 523
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v2

    .line 524
    .local v2, selfLevel:I
    if-ltz v2, :cond_0

    iget-object v4, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 525
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getExpandedChild()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v3

    .line 526
    .local v3, temp:Lcom/htc/widget/MoreExpandableItemInfo;
    invoke-virtual {p0, v3}, Lcom/htc/widget/MoreExpandableBaseAdapter;->collapseGroup(Lcom/htc/widget/MoreExpandableItemInfo;)Z

    .line 527
    invoke-virtual {v3}, Lcom/htc/widget/MoreExpandableItemInfo;->onCollapseDelete()V

    .line 528
    iget-object v4, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 529
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 544
    .end local v2           #selfLevel:I
    .end local v3           #temp:Lcom/htc/widget/MoreExpandableItemInfo;
    :cond_0
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->setGroupCollapse()V

    .line 545
    iget-object v4, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 546
    const/4 v4, 0x1

    return v4

    .line 532
    :cond_1
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v0

    .line 533
    .local v0, children:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/widget/MoreExpandableItemInfo;>;"
    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 536
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/widget/MoreExpandableItemInfo;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 537
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/MoreExpandableItemInfo;

    .line 538
    .restart local v3       #temp:Lcom/htc/widget/MoreExpandableItemInfo;
    invoke-virtual {v3}, Lcom/htc/widget/MoreExpandableItemInfo;->onCollapseDelete()V

    .line 539
    iget-object v4, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 540
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method deleteItem(ILcom/htc/widget/MoreExpandableItemInfo;)I
    .locals 1
    .parameter "position"
    .parameter "self"

    .prologue
    .line 626
    invoke-virtual {p0, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->collapseGroup(Lcom/htc/widget/MoreExpandableItemInfo;)Z

    .line 627
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method deleteItem(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/MoreExpandableItemInfo;

    .line 299
    .local v2, self:Lcom/htc/widget/MoreExpandableItemInfo;
    if-nez v2, :cond_0

    .line 326
    :goto_0
    return-void

    .line 301
    :cond_0
    invoke-virtual {v2}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    .line 302
    .local v1, parent:Lcom/htc/widget/MoreExpandableItemInfo;
    invoke-virtual {v2}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroupExpanded()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 303
    invoke-virtual {p0, p1, v2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->deleteItem(ILcom/htc/widget/MoreExpandableItemInfo;)I

    .line 304
    if-nez v1, :cond_2

    .line 305
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 325
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 307
    :cond_2
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-direct {p0, v3, v1, v2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->showChildren(ILcom/htc/widget/MoreExpandableItemInfo;Lcom/htc/widget/MoreExpandableItemInfo;)Z

    goto :goto_1

    .line 310
    :cond_3
    if-eqz v1, :cond_5

    .line 311
    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildrenCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 312
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0, v3, v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->deleteItem(ILcom/htc/widget/MoreExpandableItemInfo;)I

    .line 313
    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v0

    .line 314
    .local v0, grandParent:Lcom/htc/widget/MoreExpandableItemInfo;
    if-eqz v0, :cond_1

    .line 315
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-direct {p0, v3, v0, v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->showChildren(ILcom/htc/widget/MoreExpandableItemInfo;Lcom/htc/widget/MoreExpandableItemInfo;)Z

    goto :goto_1

    .line 318
    .end local v0           #grandParent:Lcom/htc/widget/MoreExpandableItemInfo;
    :cond_4
    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 319
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 322
    :cond_5
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method expandAndSetChildrenWithOutAnimation(ILcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)I
    .locals 3
    .parameter "position"
    .parameter "self"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 722
    .local p3, children:Ljava/util/LinkedList;,"Ljava/util/LinkedList<+Lcom/htc/widget/MoreExpandableItemInfo;>;"
    invoke-virtual {p0, p2, p3}, Lcom/htc/widget/MoreExpandableBaseAdapter;->setChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    .line 723
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedList;->addAll(ILjava/util/Collection;)Z

    .line 724
    invoke-direct {p0, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->hideSibling(Lcom/htc/widget/MoreExpandableItemInfo;)Z

    .line 725
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->setGroupExpanded()V

    .line 727
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->notifyDataSetChanged()V

    .line 728
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method expandGroup(ILcom/htc/widget/MoreExpandableItemInfo;)I
    .locals 5
    .parameter "position"
    .parameter "self"

    .prologue
    .line 481
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedList;->addAll(ILjava/util/Collection;)Z

    .line 483
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 484
    .local v0, expandedLevel:I
    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v1

    .line 485
    .local v1, selfLevel:I
    if-lt v0, v1, :cond_0

    .line 486
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {p0, v2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->collapseGroup(Lcom/htc/widget/MoreExpandableItemInfo;)Z

    .line 488
    :cond_0
    invoke-direct {p0, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->hideSibling(Lcom/htc/widget/MoreExpandableItemInfo;)Z

    .line 489
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->setGroupExpanded()V

    .line 493
    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildrenCount()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/MoreExpandableBaseAdapter;->setHideViewFlag(II)V

    .line 494
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->notifyDataSetChanged()V

    .line 495
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2, p2}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    return v2
.end method

.method public abstract getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getChildren(ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ")",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    const/4 v0, 0x0

    .line 289
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/MoreExpandableItemInfo;

    goto :goto_0
.end method

.method getExpandedLevel()I
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getExpandedRootPosition()I
    .locals 3

    .prologue
    .line 686
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 689
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method public abstract getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method getIndexOfMoreExpandableItemInfo(Lcom/htc/widget/MoreExpandableItemInfo;)I
    .locals 1
    .parameter "self"

    .prologue
    .line 473
    if-nez p1, :cond_0

    .line 474
    const/high16 v0, -0x8000

    .line 476
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 86
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 89
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
    .line 93
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableItemInfo;->getId()J

    move-result-wide v0

    .line 96
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method getMoreExpandableItemInfo(I)Lcom/htc/widget/MoreExpandableItemInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 469
    invoke-virtual {p0, p1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/MoreExpandableItemInfo;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 24
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 330
    invoke-virtual/range {p0 .. p1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/htc/widget/MoreExpandableItemInfo;

    .line 331
    .local v20, self:Lcom/htc/widget/MoreExpandableItemInfo;
    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v17

    .line 332
    .local v17, mother:Lcom/htc/widget/MoreExpandableItemInfo;
    const/high16 v5, -0x8000

    .line 333
    .local v5, groupPosition:I
    const/high16 v6, -0x8000

    .line 334
    .local v6, childPosition:I
    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v15

    .line 335
    .local v15, level:I
    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/MoreExpandableItemInfo;->isLastChild()Z

    move-result v7

    .line 336
    .local v7, isLastChild:Z
    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroupExpanded()Z

    move-result v13

    .line 337
    .local v13, isGroupExpanded:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getExpandedLevel()I

    move-result v11

    .line 339
    .local v11, expandedLevel:I
    if-eqz v17, :cond_0

    .line 340
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 341
    move/from16 v0, p1

    invoke-static {v5, v0}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildPosition(II)I

    move-result v6

    .line 344
    :cond_0
    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 345
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v13, v2, v3}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v22

    .line 349
    .local v22, view:Landroid/view/View;
    const v4, 0x202000d

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 350
    .local v12, indicator:Landroid/view/View;
    if-nez v12, :cond_1

    .line 351
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x2090062

    move-object/from16 v4, v22

    check-cast v4, Landroid/view/ViewGroup;

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v8, v9, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 353
    move-object/from16 v0, v22

    instance-of v4, v0, Lcom/htc/widget/HtcListItem;

    if-eqz v4, :cond_7

    move-object/from16 v4, v22

    .line 354
    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 367
    :cond_1
    :goto_0
    if-eqz v12, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/view/View;->setVisibility(I)V

    .line 384
    :cond_2
    :goto_1
    const/16 v19, 0x0

    .line 385
    .local v19, rightPadding:I
    const/4 v14, 0x0

    .line 386
    .local v14, leftPadding:I
    const/16 v21, 0x0

    .line 387
    .local v21, topPadding:I
    const/4 v10, 0x0

    .line 388
    .local v10, bottomPadding:I
    if-eqz v22, :cond_3

    .line 389
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getPaddingLeft()I

    move-result v14

    .line 390
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getPaddingTop()I

    move-result v21

    .line 391
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getPaddingRight()I

    move-result v19

    .line 392
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    .line 394
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 396
    .local v18, res:Landroid/content/res/Resources;
    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/MoreExpandableItemInfo;->getUserBackgroundEnable()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 429
    :cond_4
    :goto_2
    if-eqz v22, :cond_5

    .line 430
    move-object/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v0, v14, v1, v2, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 434
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewFlag:Z

    if-eqz v4, :cond_6

    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideLevel:I

    if-ne v4, v8, :cond_6

    .line 435
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewList:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    move-object/from16 v0, v22

    instance-of v4, v0, Lcom/htc/widget/HtcListItem;

    if-eqz v4, :cond_10

    move-object/from16 v4, v22

    .line 438
    check-cast v4, Lcom/htc/widget/HtcListItem;

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListItem;->setUseCustomHeight(Z)V

    move-object/from16 v4, v22

    .line 439
    check-cast v4, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v4}, Lcom/htc/widget/HtcListItem;->getCustomLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .line 440
    .local v16, lp:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewHeightList:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    iget v8, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewCount:I

    if-ne v4, v8, :cond_6

    .line 450
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->unSetHideViewFlag()V

    .line 451
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mShouldHideView:Z

    .line 455
    .end local v16           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    return-object v22

    .line 356
    .end local v10           #bottomPadding:I
    .end local v14           #leftPadding:I
    .end local v18           #res:Landroid/content/res/Resources;
    .end local v19           #rightPadding:I
    .end local v21           #topPadding:I
    :cond_7
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout$LayoutParams;

    .line 358
    .local v16, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xf

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 359
    const/16 v4, 0xb

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 360
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x2050001

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move-object/from16 v0, v16

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move-object/from16 v4, v22

    .line 362
    check-cast v4, Landroid/view/ViewGroup;

    move-object/from16 v0, v16

    invoke-virtual {v4, v12, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 369
    .end local v12           #indicator:Landroid/view/View;
    .end local v16           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v22           #view:Landroid/view/View;
    :cond_8
    if-nez v17, :cond_9

    .line 370
    move/from16 v5, p1

    .line 371
    const/4 v6, -0x1

    :cond_9
    move-object/from16 v4, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 373
    invoke-virtual/range {v4 .. v9}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v22

    .line 377
    .restart local v22       #view:Landroid/view/View;
    const v4, 0x202000d

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 378
    .restart local v12       #indicator:Landroid/view/View;
    if-eqz v12, :cond_2

    .line 379
    const/16 v4, 0x8

    invoke-virtual {v12, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 399
    .restart local v10       #bottomPadding:I
    .restart local v14       #leftPadding:I
    .restart local v18       #res:Landroid/content/res/Resources;
    .restart local v19       #rightPadding:I
    .restart local v21       #topPadding:I
    :cond_a
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getId()I

    move-result v4

    const v8, 0x20200a3

    if-eq v4, v8, :cond_4

    .line 402
    if-nez v17, :cond_b

    if-nez v13, :cond_b

    .line 405
    const v4, 0x208003b

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mGroupBackground:Landroid/graphics/drawable/Drawable;

    .line 406
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mGroupBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mGroupBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 407
    :cond_b
    if-nez v17, :cond_c

    if-eqz v13, :cond_c

    .line 409
    const v4, 0x208003b

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mGroupBackground:Landroid/graphics/drawable/Drawable;

    .line 410
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mGroupBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mGroupBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 411
    :cond_c
    if-eq v15, v11, :cond_d

    if-eqz v13, :cond_d

    .line 413
    const v4, 0x208003b

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mGroupBackground:Landroid/graphics/drawable/Drawable;

    .line 414
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mGroupBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mGroupBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 415
    :cond_d
    if-ne v15, v11, :cond_e

    .line 417
    const v4, 0x208016a

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 419
    :cond_e
    if-eqz v7, :cond_f

    .line 421
    const v4, 0x208003b

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 425
    :cond_f
    const v4, 0x208003b

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mGroupBackground:Landroid/graphics/drawable/Drawable;

    .line 426
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mGroupBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mGroupBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 444
    :cond_10
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .line 445
    .local v16, lp:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewHeightList:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    iget v8, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3
.end method

.method public isGroupExpanded(I)Z
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 159
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroupExpanded()Z

    move-result v0

    .line 162
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method linkHideViewList(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 0
    .parameter
    .parameter
    .parameter "maxCache"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 680
    .local p1, hideViewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p2, hideViewHeightList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewList:Ljava/util/ArrayList;

    .line 681
    iput-object p2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewHeightList:Ljava/util/ArrayList;

    .line 682
    iput p3, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->MAX_CACHE:I

    .line 683
    return-void
.end method

.method newExpandedChildrenBackgroundColor()Landroid/graphics/drawable/StateListDrawable;
    .locals 3

    .prologue
    .line 701
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 703
    .local v0, expandedChildrenBackground:Landroid/graphics/drawable/StateListDrawable;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedChildrenBackgroundColor:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 708
    .local v1, itembackground:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 709
    return-object v0
.end method

.method recoverChildren(Lcom/htc/widget/MoreExpandableItemInfo;Z)Z
    .locals 10
    .parameter "self"
    .parameter "isExpanded"

    .prologue
    const/4 v8, 0x0

    .line 788
    iget-object v9, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .line 789
    .local v3, expandLevel:I
    if-nez p1, :cond_1

    .line 816
    :cond_0
    :goto_0
    return v8

    .line 791
    :cond_1
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroup()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 793
    const/4 v9, -0x1

    if-eq v3, v9, :cond_0

    .line 796
    iget-object v8, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v8, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 797
    .local v6, selfPosition:I
    iget-object v8, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mReducedRemainderChildren:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 799
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/widget/MoreExpandableItemInfo;>;"
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v1

    .line 800
    .local v1, children:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/widget/MoreExpandableItemInfo;>;"
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v5

    .line 803
    .local v5, originalVisibleViewSize:I
    const/4 v2, 0x0

    .line 804
    .local v2, count:I
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 805
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/MoreExpandableItemInfo;

    .line 806
    .local v7, temp:Lcom/htc/widget/MoreExpandableItemInfo;
    invoke-virtual {v1, v7}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 807
    invoke-virtual {v1, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 808
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 809
    add-int v8, v6, v5

    add-int/2addr v8, v2

    add-int/lit8 v0, v8, 0x1

    .line 811
    .local v0, addedPos:I
    if-eqz p2, :cond_3

    .line 812
    iget-object v8, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v8, v0, v7}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 813
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 814
    goto :goto_1

    .line 816
    .end local v0           #addedPos:I
    .end local v7           #temp:Lcom/htc/widget/MoreExpandableItemInfo;
    :cond_4
    const/4 v8, 0x1

    goto :goto_0
.end method

.method reduceChildren(Lcom/htc/widget/MoreExpandableItemInfo;IZ)Z
    .locals 5
    .parameter "self"
    .parameter "newChildrenSize"
    .parameter "isReduceAtTail"

    .prologue
    const/4 v4, 0x0

    .line 752
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mReducedRemainderChildren:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 753
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 754
    .local v1, expandLevel:I
    if-gtz p2, :cond_0

    move v3, v4

    .line 774
    :goto_0
    return v3

    .line 756
    :cond_0
    if-nez p1, :cond_1

    move v3, v4

    .line 757
    goto :goto_0

    .line 758
    :cond_1
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroup()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    .line 759
    goto :goto_0

    .line 760
    :cond_2
    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    move v3, v4

    .line 761
    goto :goto_0

    .line 764
    :cond_3
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz p3, :cond_5

    .line 765
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v0

    .line 767
    .local v0, children:Ljava/util/LinkedList;,"Ljava/util/LinkedList<+Lcom/htc/widget/MoreExpandableItemInfo;>;"
    :goto_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-le v3, p2, :cond_4

    .line 768
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/MoreExpandableItemInfo;

    .line 769
    .local v2, itemInfo:Lcom/htc/widget/MoreExpandableItemInfo;
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mReducedRemainderChildren:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 770
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 772
    .end local v2           #itemInfo:Lcom/htc/widget/MoreExpandableItemInfo;
    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    .end local v0           #children:Ljava/util/LinkedList;,"Ljava/util/LinkedList<+Lcom/htc/widget/MoreExpandableItemInfo;>;"
    :cond_5
    move v3, v4

    .line 774
    goto :goto_0
.end method

.method setChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V
    .locals 0
    .parameter "self"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 465
    .local p2, children:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/widget/MoreExpandableItemInfo;>;"
    invoke-virtual {p1, p2}, Lcom/htc/widget/MoreExpandableItemInfo;->setChildren(Ljava/util/LinkedList;)V

    .line 466
    return-void
.end method

.method setExpandedChildrenBackgroundColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 697
    iput p1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedChildrenBackgroundColor:I

    .line 698
    return-void
.end method

.method setHideViewFlag(II)V
    .locals 1
    .parameter "hideLevel"
    .parameter "hideViewCount"

    .prologue
    const/4 v0, 0x1

    .line 655
    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mShouldHideView:Z

    .line 656
    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewFlag:Z

    .line 657
    iput p1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideLevel:I

    .line 658
    iget v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->MAX_CACHE:I

    if-le p2, v0, :cond_0

    .line 659
    iget v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->MAX_CACHE:I

    iput v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewCount:I

    .line 662
    :goto_0
    return-void

    .line 661
    :cond_0
    iput p2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewCount:I

    goto :goto_0
.end method

.method public setMoreExpandableItemInfo(Ljava/util/LinkedList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 258
    .local p1, itemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<+Lcom/htc/widget/MoreExpandableItemInfo;>;"
    invoke-virtual {p0, p1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->changeRoot(Ljava/util/LinkedList;)V

    .line 259
    return-void
.end method

.method shouldHideView()Z
    .locals 1

    .prologue
    .line 676
    iget-boolean v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mShouldHideView:Z

    return v0
.end method

.method unSetHideViewFlag()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 665
    iput-boolean v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mShouldHideView:Z

    .line 666
    iput-boolean v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewFlag:Z

    .line 667
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideLevel:I

    .line 668
    iput v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewCount:I

    .line 669
    return-void
.end method
