.class public Lcom/htc/widget/HtcListItemImageButton;
.super Landroid/widget/ImageView;
.source "HtcListItemImageButton.java"

# interfaces
.implements Lcom/htc/widget/IHtcListItemControl;
.implements Lcom/htc/widget/IHtcListItemComponent;


# instance fields
.field mItemMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItemImageButton;->mItemMode:I

    .line 36
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemImageButton;->init(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItemImageButton;->mItemMode:I

    .line 41
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemImageButton;->init(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItemImageButton;->mItemMode:I

    .line 46
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemImageButton;->init(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    iget v0, p0, Lcom/htc/widget/HtcListItemImageButton;->mItemMode:I

    invoke-static {p1, v0}, Lcom/htc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 31
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 65
    iget-object v1, p0, Lcom/htc/widget/HtcListItemImageButton;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageButton;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 71
    :goto_0
    return-object v0

    .line 68
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 70
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iput-object v0, p0, Lcom/htc/widget/HtcListItemImageButton;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method public notifyItemMode(I)V
    .locals 2
    .parameter "itemMode"

    .prologue
    .line 91
    iput p1, p0, Lcom/htc/widget/HtcListItemImageButton;->mItemMode:I

    .line 92
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HtcListItemImageButton;->mItemMode:I

    invoke-static {v0, v1}, Lcom/htc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 94
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemImageButton;->isEnabled()Z

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
    .locals 1
    .parameter "params"

    .prologue
    const/4 v0, -0x2

    .line 54
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 55
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 57
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    return-void
.end method
