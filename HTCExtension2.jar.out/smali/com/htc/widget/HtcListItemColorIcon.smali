.class public Lcom/htc/widget/HtcListItemColorIcon;
.super Lcom/htc/widget/HtcListItemImageComponent;
.source "HtcListItemColorIcon.java"


# instance fields
.field private mBadge:Landroid/widget/ImageView;

.field private mBadgeSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadgeSize:I

    .line 64
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemColorIcon;->init(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemImageComponent;-><init>(Landroid/content/Context;I)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadgeSize:I

    .line 79
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemColorIcon;->init(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemImageComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadgeSize:I

    .line 69
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemColorIcon;->init(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItemImageComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadgeSize:I

    .line 74
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemColorIcon;->init(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 48
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20500e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mLeftMargin:I

    .line 49
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20500e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mLeftMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentWidth:I

    .line 51
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadge:Landroid/widget/ImageView;

    .line 52
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20500e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadgeSize:I

    .line 53
    iget-object v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadge:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 55
    iput v4, p0, Lcom/htc/widget/HtcListItemColorIcon;->mPaddingTop:I

    .line 56
    iput v4, p0, Lcom/htc/widget/HtcListItemColorIcon;->mPaddingBottom:I

    .line 57
    iput v4, p0, Lcom/htc/widget/HtcListItemColorIcon;->mPaddingLeft:I

    .line 58
    iput v4, p0, Lcom/htc/widget/HtcListItemColorIcon;->mPaddingRight:I

    .line 59
    iget-object v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadge:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadgeSize:I

    iget v3, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadgeSize:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v4, v1}, Lcom/htc/widget/HtcListItemColorIcon;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 60
    return-void
.end method


# virtual methods
.method public bridge synthetic getBubbleCountText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/htc/widget/HtcListItemImageComponent;->getBubbleCountText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColorIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadge:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIndicatorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/htc/widget/HtcListItemImageComponent;->getIndicatorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 102
    iget-object v1, p0, Lcom/htc/widget/HtcListItemColorIcon;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 109
    :goto_0
    return-object v0

    .line 105
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentWidth:I

    iget v2, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentHeight:I

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 107
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mLeftMargin:I

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 108
    iput-object v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method public bridge synthetic notifyItemMode(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->notifyItemMode(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v3, 0x0

    .line 138
    iget-object v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadge:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadge:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadge:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 139
    invoke-super/range {p0 .. p5}, Lcom/htc/widget/HtcListItemImageComponent;->onLayout(ZIIII)V

    .line 140
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "w"
    .parameter "h"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadge:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/widget/HtcListItemColorIcon;->measureChild(Landroid/view/View;II)V

    .line 126
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcListItemImageComponent;->onMeasure(II)V

    .line 127
    iget-object v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadge:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mRightMargin:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadge:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemColorIcon;->setMeasuredDimension(II)V

    .line 130
    return-void
.end method

.method public bridge synthetic setBubbleCount(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setBubbleCount(Ljava/lang/String;)V

    return-void
.end method

.method public setColorIconImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bm"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadge:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 164
    return-void
.end method

.method public setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadge:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    return-void
.end method

.method public setColorIconImageResource(I)V
    .locals 1
    .parameter "rId"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadge:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    return-void
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setIndicatorBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setIndicatorBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic setIndicatorResource(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setIndicatorResource(I)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 87
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 88
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mLeftMargin:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 91
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentWidth:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 92
    iget v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentHeight:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 94
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 117
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .parameter "scaleType"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/htc/widget/HtcListItemColorIcon;->mBadge:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 179
    return-void
.end method
