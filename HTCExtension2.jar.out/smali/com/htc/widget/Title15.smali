.class public Lcom/htc/widget/Title15;
.super Landroid/widget/LinearLayout;
.source "Title15.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/Title15;->mContext:Landroid/content/Context;

    .line 28
    iput-object p1, p0, Lcom/htc/widget/Title15;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/Title15;->mContext:Landroid/content/Context;

    .line 33
    iput-object p1, p0, Lcom/htc/widget/Title15;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method public setAppIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 113
    const v1, 0x20200e8

    invoke-virtual {p0, v1}, Lcom/htc/widget/Title15;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 114
    .local v0, view:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    :cond_0
    return-void
.end method

.method public setSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 145
    throw v0

    .line 146
    :cond_0
    return-void
.end method

.method public setSearchGone()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 55
    const/4 v1, 0x0

    .line 67
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 68
    iget-object v2, p0, Lcom/htc/widget/Title15;->mContext:Landroid/content/Context;

    const-string v3, "common_titlebar_4round"

    const v4, 0x20803e2

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 69
    .local v0, bkgId:I
    if-eqz v0, :cond_0

    .line 70
    throw v1

    .line 71
    throw v1

    .line 74
    .end local v0           #bkgId:I
    :cond_0
    return-void
.end method

.method public setSearchIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 128
    const v1, 0x2020172

    invoke-virtual {p0, v1}, Lcom/htc/widget/Title15;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 129
    .local v0, view:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    :cond_0
    return-void
.end method

.method public setSearchVisible()V
    .locals 2

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 86
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    throw v0

    move-result v1

    if-nez v1, :cond_0

    .line 87
    const/4 v1, 0x0

    throw v0

    .line 91
    :cond_0
    if-eqz v0, :cond_1

    throw v0

    move-result v1

    if-nez v1, :cond_1

    .line 97
    :cond_1
    if-eqz v0, :cond_2

    .line 98
    const/4 v1, 0x0

    throw v0

    .line 100
    :cond_2
    return-void
.end method
