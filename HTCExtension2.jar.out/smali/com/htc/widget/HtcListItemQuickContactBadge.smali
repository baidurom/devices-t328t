.class public Lcom/htc/widget/HtcListItemQuickContactBadge;
.super Lcom/htc/widget/HtcListItemImageComponent;
.source "HtcListItemQuickContactBadge.java"


# instance fields
.field private mBadge:Lcom/htc/widget/QuickContactBadge;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->init(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemImageComponent;-><init>(Landroid/content/Context;I)V

    .line 70
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->init(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemImageComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->init(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItemImageComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->init(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 43
    new-instance v0, Lcom/htc/widget/QuickContactBadge;

    invoke-direct {v0, p1}, Lcom/htc/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadge:Lcom/htc/widget/QuickContactBadge;

    .line 45
    iput v4, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mPaddingTop:I

    .line 46
    iput v4, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mPaddingRight:I

    .line 47
    iput v4, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mPaddingLeft:I

    .line 48
    iput v4, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mPaddingBottom:I

    .line 50
    iget-object v0, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadge:Lcom/htc/widget/QuickContactBadge;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v2, Lcom/htc/widget/HtcListItemQuickContactBadge;->mFrameWidth:I

    sget v3, Lcom/htc/widget/HtcListItemQuickContactBadge;->mFrameHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v4, v1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 51
    return-void
.end method


# virtual methods
.method public getBadge()Lcom/htc/widget/QuickContactBadge;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadge:Lcom/htc/widget/QuickContactBadge;

    return-object v0
.end method

.method public bridge synthetic getBubbleCountText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lcom/htc/widget/HtcListItemImageComponent;->getBubbleCountText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIndicatorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lcom/htc/widget/HtcListItemImageComponent;->getIndicatorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 89
    iget-object v1, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 96
    :goto_0
    return-object v0

    .line 92
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentWidth:I

    iget v2, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentHeight:I

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 94
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mLeftMargin:I

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 95
    iput-object v0, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method public bridge synthetic notifyItemMode(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
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

    .line 125
    iget-object v0, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadge:Lcom/htc/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadge:Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v1}, Lcom/htc/widget/QuickContactBadge;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadge:Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v2}, Lcom/htc/widget/QuickContactBadge;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/htc/widget/QuickContactBadge;->layout(IIII)V

    .line 126
    invoke-super/range {p0 .. p5}, Lcom/htc/widget/HtcListItemImageComponent;->onLayout(ZIIII)V

    .line 127
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "w"
    .parameter "h"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadge:Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/widget/HtcListItemQuickContactBadge;->measureChild(Landroid/view/View;II)V

    .line 113
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcListItemImageComponent;->onMeasure(II)V

    .line 114
    iget-object v0, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadge:Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v0}, Lcom/htc/widget/QuickContactBadge;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mRightMargin:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/widget/HtcListItemQuickContactBadge;->mBadge:Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v1}, Lcom/htc/widget/QuickContactBadge;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->setMeasuredDimension(II)V

    .line 117
    return-void
.end method

.method public bridge synthetic setBubbleCount(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setBubbleCount(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setIndicatorBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setIndicatorBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic setIndicatorResource(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setIndicatorResource(I)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 78
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 79
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mLeftMargin:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 82
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentWidth:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 83
    iget v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentHeight:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 85
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 104
    return-void
.end method
