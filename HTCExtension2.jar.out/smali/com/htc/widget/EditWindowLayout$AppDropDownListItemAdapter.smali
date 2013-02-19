.class Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "EditWindowLayout.java"

# interfaces
.implements Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapterInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/EditWindowLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppDropDownListItemAdapter"
.end annotation


# instance fields
.field private mAppDropDownListItem:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEnableTitleDropDownListItem:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/widget/EditWindowLayout;


# direct methods
.method public constructor <init>(Lcom/htc/widget/EditWindowLayout;Ljava/util/LinkedList;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1828
    .local p2, titleDropDownListItem:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->this$0:Lcom/htc/widget/EditWindowLayout;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1824
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->mAppDropDownListItem:Ljava/util/LinkedList;

    .line 1825
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->mEnableTitleDropDownListItem:Ljava/util/LinkedList;

    .line 1829
    iput-object p2, p0, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->mAppDropDownListItem:Ljava/util/LinkedList;

    .line 1830
    invoke-direct {p0, p2}, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->initEnableTitleDropDownListItem(Ljava/util/LinkedList;)V

    .line 1831
    return-void
.end method

.method public constructor <init>(Lcom/htc/widget/EditWindowLayout;Ljava/util/LinkedList;Ljava/util/LinkedList;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1835
    .local p2, titleDropDownListItem:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    .local p3, enableTitleDropDownListItem:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->this$0:Lcom/htc/widget/EditWindowLayout;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1824
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->mAppDropDownListItem:Ljava/util/LinkedList;

    .line 1825
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->mEnableTitleDropDownListItem:Ljava/util/LinkedList;

    .line 1836
    if-eqz p2, :cond_0

    .line 1837
    iput-object p2, p0, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->mAppDropDownListItem:Ljava/util/LinkedList;

    .line 1839
    :cond_0
    if-nez p3, :cond_1

    .line 1840
    invoke-direct {p0, p2}, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->initEnableTitleDropDownListItem(Ljava/util/LinkedList;)V

    .line 1844
    :goto_0
    iget-object v2, p0, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->mAppDropDownListItem:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 1845
    .local v0, size1:I
    iget-object v2, p0, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->mEnableTitleDropDownListItem:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 1846
    .local v1, size2:I
    if-eq v0, v1, :cond_2

    .line 1847
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "The two parameters encounter a different size error!!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1842
    .end local v0           #size1:I
    .end local v1           #size2:I
    :cond_1
    iput-object p3, p0, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->mEnableTitleDropDownListItem:Ljava/util/LinkedList;

    goto :goto_0

    .line 1849
    .restart local v0       #size1:I
    .restart local v1       #size2:I
    :cond_2
    return-void
.end method

.method private initEnableTitleDropDownListItem(Ljava/util/LinkedList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1868
    .local p1, titleDropDownListItem:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->mEnableTitleDropDownListItem:Ljava/util/LinkedList;

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->initTitleDropDownListItem(Ljava/util/LinkedList;Ljava/util/LinkedList;)V

    .line 1870
    return-void
.end method

.method private initTitleDropDownListItem(Ljava/util/LinkedList;Ljava/util/LinkedList;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1854
    .local p1, titleDropDownListItem:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    .local p2, result:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    .line 1855
    .local v1, len:I
    if-eqz p1, :cond_0

    .line 1856
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 1857
    :cond_0
    if-lez v1, :cond_2

    .line 1858
    if-eqz p2, :cond_1

    .line 1859
    invoke-virtual {p2}, Ljava/util/LinkedList;->clear()V

    .line 1860
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1861
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1860
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1864
    .end local v0           #i:I
    :cond_2
    return-void
.end method

.method private removeItem(ILjava/util/LinkedList;)V
    .locals 1
    .parameter "index"
    .parameter "target"

    .prologue
    .line 1972
    if-eqz p2, :cond_0

    .line 1973
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 1974
    .local v0, len:I
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 1978
    .end local v0           #len:I
    :cond_0
    :goto_0
    return-void

    .line 1976
    .restart local v0       #len:I
    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method private setItemEnabled(IZ)V
    .locals 1
    .parameter "index"
    .parameter "enable"

    .prologue
    .line 1883
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->mEnableTitleDropDownListItem:Ljava/util/LinkedList;

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->setItemUpdated(IZLjava/util/LinkedList;)V

    .line 1884
    return-void
.end method

.method private setItemUpdated(IZLjava/util/LinkedList;)V
    .locals 2
    .parameter "index"
    .parameter "enable"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1874
    .local p3, result:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Boolean;>;"
    if-nez p3, :cond_1

    .line 1880
    :cond_0
    :goto_0
    return-void

    .line 1876
    :cond_1
    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 1877
    .local v0, len:I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 1879
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p3, p1, v1}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1966
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->mAppDropDownListItem:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 1967
    const/4 v0, 0x0

    .line 1968
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->mAppDropDownListItem:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 1994
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->mAppDropDownListItem:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 1995
    const/4 v0, 0x0

    .line 1996
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->mAppDropDownListItem:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 2004
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 1933
    if-nez p2, :cond_0

    .line 1934
    iget-object v3, p0, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->this$0:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v3}, Lcom/htc/widget/EditWindowLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1935
    .local v1, mInflater:Landroid/view/LayoutInflater;
    const v3, 0x1090068

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1940
    .end local v1           #mInflater:Landroid/view/LayoutInflater;
    :cond_0
    if-eqz p2, :cond_1

    .line 1941
    const v3, 0x1020016

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1943
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1944
    .local v0, itemName:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1945
    if-eqz v2, :cond_1

    .line 1946
    invoke-virtual {p0, p1}, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1947
    iget-object v3, p0, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->this$0:Lcom/htc/widget/EditWindowLayout;

    #getter for: Lcom/htc/widget/EditWindowLayout;->enableItemTxtColor:I
    invoke-static {v3}, Lcom/htc/widget/EditWindowLayout;->access$1100(Lcom/htc/widget/EditWindowLayout;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1951
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1952
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1956
    .end local v0           #itemName:Ljava/lang/String;
    .end local v2           #tv:Landroid/widget/TextView;
    :cond_1
    const/16 v3, 0xa

    invoke-virtual {p2, v4, v3, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1957
    return-object p2

    .line 1949
    .restart local v0       #itemName:Ljava/lang/String;
    .restart local v2       #tv:Landroid/widget/TextView;
    :cond_2
    iget-object v3, p0, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->this$0:Lcom/htc/widget/EditWindowLayout;

    #getter for: Lcom/htc/widget/EditWindowLayout;->disableItemTxtColor:I
    invoke-static {v3}, Lcom/htc/widget/EditWindowLayout;->access$1200(Lcom/htc/widget/EditWindowLayout;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 2013
    const/4 v1, 0x0

    .line 2014
    .local v1, result:Z
    iget-object v2, p0, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->mEnableTitleDropDownListItem:Ljava/util/LinkedList;

    if-eqz v2, :cond_2

    .line 2015
    iget-object v2, p0, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->mEnableTitleDropDownListItem:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 2016
    .local v0, len:I
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 2017
    :cond_0
    const/4 v2, 0x0

    .line 2020
    .end local v0           #len:I
    :goto_0
    return v2

    .line 2018
    .restart local v0       #len:I
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->mEnableTitleDropDownListItem:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .end local v0           #len:I
    :cond_2
    move v2, v1

    .line 2020
    goto :goto_0
.end method

.method public removeItem(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1985
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->mAppDropDownListItem:Ljava/util/LinkedList;

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->removeItem(ILjava/util/LinkedList;)V

    .line 1986
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->mEnableTitleDropDownListItem:Ljava/util/LinkedList;

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->removeItem(ILjava/util/LinkedList;)V

    .line 1987
    return-void
.end method

.method public setItemDisabled(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1923
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->setItemEnabled(IZ)V

    .line 1924
    return-void
.end method

.method public setItemEnabled(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1915
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->setItemEnabled(IZ)V

    .line 1916
    return-void
.end method

.method public setListItems(Ljava/util/LinkedList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1891
    .local p1, titleDropDownListItem:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->mAppDropDownListItem:Ljava/util/LinkedList;

    .line 1892
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->setListItems(Ljava/util/LinkedList;Ljava/util/LinkedList;)V

    .line 1893
    return-void
.end method

.method public setListItems(Ljava/util/LinkedList;Ljava/util/LinkedList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1901
    .local p1, titleDropDownListItem:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    .local p2, enableTitleDropDownListItem:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->mAppDropDownListItem:Ljava/util/LinkedList;

    .line 1903
    if-nez p2, :cond_0

    .line 1904
    invoke-direct {p0, p1}, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->initEnableTitleDropDownListItem(Ljava/util/LinkedList;)V

    .line 1908
    :goto_0
    return-void

    .line 1906
    :cond_0
    iput-object p2, p0, Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;->mEnableTitleDropDownListItem:Ljava/util/LinkedList;

    goto :goto_0
.end method
