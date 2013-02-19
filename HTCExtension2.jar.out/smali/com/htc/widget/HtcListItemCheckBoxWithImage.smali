.class public Lcom/htc/widget/HtcListItemCheckBoxWithImage;
.super Landroid/widget/FrameLayout;
.source "HtcListItemCheckBoxWithImage.java"

# interfaces
.implements Lcom/htc/widget/IHtcListItemComponent;


# instance fields
.field private mHtcCheckBox:Lcom/htc/widget/HtcCheckBox;

.field mItemMode:I

.field private mReplyImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 229
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mItemMode:I

    .line 47
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->init(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 229
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mItemMode:I

    .line 52
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->init(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 229
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mItemMode:I

    .line 57
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->init(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x2

    const/4 v1, 0x0

    .line 27
    iget v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mItemMode:I

    invoke-static {p1, v0}, Lcom/htc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 29
    new-instance v0, Lcom/htc/widget/HtcCheckBox;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcCheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mHtcCheckBox:Lcom/htc/widget/HtcCheckBox;

    .line 30
    iget-object v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mHtcCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcCheckBox;->setFocusable(Z)V

    .line 31
    iget-object v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mHtcCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcCheckBox;->setClickable(Z)V

    .line 32
    iget-object v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mHtcCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcCheckBox;->setDuplicateParentStateEnabled(Z)V

    .line 34
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyImage:Landroid/widget/ImageView;

    .line 36
    iput v1, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mPaddingTop:I

    .line 37
    iput v1, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mPaddingBottom:I

    .line 38
    iput v1, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mPaddingLeft:I

    .line 39
    iput v1, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mPaddingRight:I

    .line 41
    iget-object v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mHtcCheckBox:Lcom/htc/widget/HtcCheckBox;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    iget-object v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyImage:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHtcCheckBox()Lcom/htc/widget/HtcCheckBox;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mHtcCheckBox:Lcom/htc/widget/HtcCheckBox;

    return-object v0
.end method

.method public getImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 80
    iget-object v1, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 88
    :goto_0
    return-object v0

    .line 83
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 86
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 87
    iput-object v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method public notifyItemMode(I)V
    .locals 2
    .parameter "itemMode"

    .prologue
    .line 234
    iput p1, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mItemMode:I

    .line 235
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mItemMode:I

    invoke-static {v0, v1}, Lcom/htc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 237
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/16 v8, 0x8

    .line 118
    iget-object v2, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mHtcCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2}, Lcom/htc/widget/HtcCheckBox;->getVisibility()I

    move-result v2

    if-eq v2, v8, :cond_0

    .line 119
    iget-object v2, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mHtcCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v3, 0x0

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM2()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mHtcCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v5}, Lcom/htc/widget/HtcCheckBox;->getMeasuredWidth()I

    move-result v5

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM2()I

    move-result v6

    iget-object v7, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mHtcCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v7}, Lcom/htc/widget/HtcCheckBox;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/htc/widget/HtcCheckBox;->layout(IIII)V

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eq v2, v8, :cond_1

    .line 127
    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM2()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mHtcCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v3}, Lcom/htc/widget/HtcCheckBox;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM5()I

    move-result v3

    add-int v1, v2, v3

    .line 129
    .local v1, top:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 130
    .local v0, left:I
    iget-object v2, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 136
    .end local v0           #left:I
    .end local v1           #top:I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "w"
    .parameter "h"

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 105
    iget-object v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mHtcCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v0}, Lcom/htc/widget/HtcCheckBox;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM2()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mHtcCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2}, Lcom/htc/widget/HtcCheckBox;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM5()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM5()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->setMeasuredDimension(II)V

    .line 110
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->isEnabled()Z

    move-result v2

    if-ne v2, p1, :cond_1

    .line 227
    :cond_0
    return-void

    .line 220
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 222
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 223
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 224
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 225
    invoke-static {v0, p1}, Lcom/htc/widget/HtcListItemUtil;->setViewOpacity(Landroid/view/View;Z)V

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 187
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .parameter "rId"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    return-void
.end method

.method public setImageVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/htc/widget/HtcListItemCheckBoxWithImage;->mReplyImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "params"

    .prologue
    const/4 v1, 0x0

    .line 65
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 66
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 69
    :cond_0
    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 70
    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 72
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 96
    return-void
.end method
