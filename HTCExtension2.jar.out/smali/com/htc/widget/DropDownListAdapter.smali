.class public Lcom/htc/widget/DropDownListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DropDownListAdapter.java"


# instance fields
.field private context:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "a"

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/DropDownListAdapter;->context:Landroid/app/Activity;

    .line 21
    iput-object p1, p0, Lcom/htc/widget/DropDownListAdapter;->context:Landroid/app/Activity;

    .line 22
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 36
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v6, 0x1a

    const v5, 0x20803e2

    const/16 v4, 0x1e

    const/4 v3, 0x0

    .line 40
    if-nez p2, :cond_0

    .line 42
    iget-object v1, p0, Lcom/htc/widget/DropDownListAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 43
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x1090003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 47
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    if-nez p1, :cond_1

    .line 48
    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 49
    invoke-virtual {p2, v4, v6, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 58
    :goto_0
    return-object p2

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/DropDownListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_2

    .line 51
    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 52
    invoke-virtual {p2, v4, v3, v3, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 55
    invoke-virtual {p2, v4, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method
