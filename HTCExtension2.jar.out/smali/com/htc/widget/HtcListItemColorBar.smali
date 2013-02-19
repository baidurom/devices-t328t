.class public Lcom/htc/widget/HtcListItemColorBar;
.super Landroid/widget/ImageView;
.source "HtcListItemColorBar.java"

# interfaces
.implements Lcom/htc/widget/IHtcListItemComponent;


# instance fields
.field private mDesiredWidth:I

.field mItemMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 14
    iput v0, p0, Lcom/htc/widget/HtcListItemColorBar;->mDesiredWidth:I

    .line 85
    iput v0, p0, Lcom/htc/widget/HtcListItemColorBar;->mItemMode:I

    .line 30
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemColorBar;->init(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    iput v0, p0, Lcom/htc/widget/HtcListItemColorBar;->mDesiredWidth:I

    .line 85
    iput v0, p0, Lcom/htc/widget/HtcListItemColorBar;->mItemMode:I

    .line 35
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemColorBar;->init(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    iput v0, p0, Lcom/htc/widget/HtcListItemColorBar;->mDesiredWidth:I

    .line 85
    iput v0, p0, Lcom/htc/widget/HtcListItemColorBar;->mItemMode:I

    .line 40
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemColorBar;->init(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 18
    iget v1, p0, Lcom/htc/widget/HtcListItemColorBar;->mItemMode:I

    invoke-static {p1, v1}, Lcom/htc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 20
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListItemColorBar;->setVisibility(I)V

    .line 21
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemColorBar;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20500e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemColorBar;->mDesiredWidth:I

    .line 24
    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM2()I

    move-result v0

    .line 25
    .local v0, padding:I
    invoke-virtual {p0, v3, v0, v3, v0}, Lcom/htc/widget/HtcListItemColorBar;->setPadding(IIII)V

    .line 26
    return-void
.end method


# virtual methods
.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 63
    iget-object v1, p0, Lcom/htc/widget/HtcListItemColorBar;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/htc/widget/HtcListItemColorBar;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 71
    :goto_0
    return-object v0

    .line 66
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItemColorBar;->mDesiredWidth:I

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 69
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 70
    iput-object v0, p0, Lcom/htc/widget/HtcListItemColorBar;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method public notifyItemMode(I)V
    .locals 2
    .parameter "itemMode"

    .prologue
    .line 91
    iput p1, p0, Lcom/htc/widget/HtcListItemColorBar;->mItemMode:I

    .line 92
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemColorBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HtcListItemColorBar;->mItemMode:I

    invoke-static {v0, v1}, Lcom/htc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 94
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemColorBar;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 82
    invoke-static {p0, p1}, Lcom/htc/widget/HtcListItemUtil;->setViewOpacity(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "params"

    .prologue
    const/4 v1, 0x0

    .line 48
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 49
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 52
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcListItemColorBar;->mDesiredWidth:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 53
    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 55
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    return-void
.end method
