.class public Lcom/htc/widget/ExpandMoreShareAdapter;
.super Landroid/widget/BaseAdapter;
.source "ExpandMoreShareAdapter.java"


# static fields
.field public static final IndexOfMore:I = 0x4


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExpand:Z

.field private mListadapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/ListAdapter;Landroid/content/Context;)V
    .locals 1
    .parameter "adapter"
    .parameter "applicationContext"

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mExpand:Z

    .line 40
    iput-object p1, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mListadapter:Landroid/widget/ListAdapter;

    .line 41
    iput-object p2, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method


# virtual methods
.method public IsExpanded()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mExpand:Z

    return v0
.end method

.method public expand()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mExpand:Z

    .line 70
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mListadapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 52
    :goto_0
    return v0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mListadapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mExpand:Z

    if-nez v0, :cond_1

    .line 50
    const/4 v0, 0x5

    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mListadapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mListadapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mListadapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mListadapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 101
    const-wide/16 v0, 0x0

    .line 103
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mListadapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 108
    iget-object v4, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mListadapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mContext:Landroid/content/Context;

    if-nez v4, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-object v3

    .line 111
    :cond_1
    iget-boolean v4, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mExpand:Z

    if-nez v4, :cond_2

    const/4 v4, 0x4

    if-ne p1, v4, :cond_2

    .line 112
    iget-object v4, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 113
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x20900a9

    invoke-virtual {v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 114
    .local v3, v:Landroid/view/View;
    const v4, 0x20200f1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 115
    .local v2, tv:Landroid/widget/TextView;
    const v4, 0x1040384

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 116
    const v4, 0x20200ed

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 117
    .local v0, icon:Landroid/widget/ImageView;
    const v4, 0x20803e2

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 120
    .end local v0           #icon:Landroid/widget/ImageView;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #tv:Landroid/widget/TextView;
    .end local v3           #v:Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mListadapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_0
.end method

.method public shrink()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mExpand:Z

    .line 81
    return-void
.end method
