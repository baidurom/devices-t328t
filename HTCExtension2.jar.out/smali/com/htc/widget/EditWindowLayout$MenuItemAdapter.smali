.class Lcom/htc/widget/EditWindowLayout$MenuItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "EditWindowLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/EditWindowLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuItemAdapter"
.end annotation


# instance fields
.field private mMenuItemList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/widget/EditWindowLayout;


# direct methods
.method public constructor <init>(Lcom/htc/widget/EditWindowLayout;Ljava/util/LinkedList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2028
    .local p2, menuItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/view/MenuItem;>;"
    iput-object p1, p0, Lcom/htc/widget/EditWindowLayout$MenuItemAdapter;->this$0:Lcom/htc/widget/EditWindowLayout;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2029
    iput-object p2, p0, Lcom/htc/widget/EditWindowLayout$MenuItemAdapter;->mMenuItemList:Ljava/util/LinkedList;

    .line 2030
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 2074
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout$MenuItemAdapter;->mMenuItemList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 2075
    const/4 v0, 0x0

    .line 2076
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout$MenuItemAdapter;->mMenuItemList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 2084
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout$MenuItemAdapter;->mMenuItemList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 2085
    const/4 v0, 0x0

    .line 2086
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout$MenuItemAdapter;->mMenuItemList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 2094
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 2038
    invoke-virtual {p0, p1}, Lcom/htc/widget/EditWindowLayout$MenuItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MenuItem;

    .line 2039
    .local v2, menuItem:Landroid/view/MenuItem;
    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p2

    .line 2040
    if-nez p2, :cond_0

    .line 2041
    iget-object v4, p0, Lcom/htc/widget/EditWindowLayout$MenuItemAdapter;->this$0:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v4}, Lcom/htc/widget/EditWindowLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2042
    .local v1, mInflater:Landroid/view/LayoutInflater;
    const v4, 0x1090068

    invoke-virtual {v1, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2047
    .end local v1           #mInflater:Landroid/view/LayoutInflater;
    :cond_0
    if-eqz p2, :cond_1

    .line 2048
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2049
    const v4, 0x1020016

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2051
    .local v3, tv:Landroid/widget/TextView;
    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2052
    .local v0, item_text:Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 2053
    if-eqz v3, :cond_1

    .line 2054
    invoke-interface {v2}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2055
    iget-object v4, p0, Lcom/htc/widget/EditWindowLayout$MenuItemAdapter;->this$0:Lcom/htc/widget/EditWindowLayout;

    #getter for: Lcom/htc/widget/EditWindowLayout;->disableItemTxtColor:I
    invoke-static {v4}, Lcom/htc/widget/EditWindowLayout;->access$1200(Lcom/htc/widget/EditWindowLayout;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2059
    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2060
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2064
    .end local v0           #item_text:Ljava/lang/CharSequence;
    .end local v3           #tv:Landroid/widget/TextView;
    :cond_1
    const/16 v4, 0xa

    invoke-virtual {p2, v5, v4, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 2065
    return-object p2

    .line 2057
    .restart local v0       #item_text:Ljava/lang/CharSequence;
    .restart local v3       #tv:Landroid/widget/TextView;
    :cond_2
    iget-object v4, p0, Lcom/htc/widget/EditWindowLayout$MenuItemAdapter;->this$0:Lcom/htc/widget/EditWindowLayout;

    #getter for: Lcom/htc/widget/EditWindowLayout;->enableItemTxtColor:I
    invoke-static {v4}, Lcom/htc/widget/EditWindowLayout;->access$1100(Lcom/htc/widget/EditWindowLayout;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 2103
    invoke-virtual {p0, p1}, Lcom/htc/widget/EditWindowLayout$MenuItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    .line 2104
    .local v0, menuItem:Landroid/view/MenuItem;
    const/4 v1, 0x0

    .line 2105
    .local v1, result:Z
    if-eqz v0, :cond_0

    .line 2106
    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v1

    .line 2107
    :cond_0
    return v1
.end method
