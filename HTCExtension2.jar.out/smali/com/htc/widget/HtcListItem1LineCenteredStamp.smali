.class public Lcom/htc/widget/HtcListItem1LineCenteredStamp;
.super Landroid/widget/FrameLayout;
.source "HtcListItem1LineCenteredStamp.java"

# interfaces
.implements Lcom/htc/widget/IHtcListItemStampComponent;
.implements Lcom/htc/widget/IHtcListItemAutoMotiveControl;
.implements Lcom/htc/widget/IHtcListItemComponent;


# instance fields
.field private mIsAutomotiveMode:Z

.field private mIsMarqueeEnabled:Z

.field mItemMode:I

.field protected mMode:I

.field private mRightMargin:I

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mRightMargin:I

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    .line 23
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mIsMarqueeEnabled:Z

    .line 28
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mMode:I

    .line 29
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mIsAutomotiveMode:Z

    .line 220
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mItemMode:I

    .line 68
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->init(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mRightMargin:I

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    .line 23
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mIsMarqueeEnabled:Z

    .line 28
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mMode:I

    .line 29
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mIsAutomotiveMode:Z

    .line 220
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mItemMode:I

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mRightMargin:I

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    .line 23
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mIsMarqueeEnabled:Z

    .line 28
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mMode:I

    .line 29
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mIsAutomotiveMode:Z

    .line 220
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mItemMode:I

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 47
    iget v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mItemMode:I

    invoke-static {p1, v0}, Lcom/htc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 49
    new-instance v0, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mIsMarqueeEnabled:Z

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->enableMarquee(Z)V

    .line 53
    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getDesiredChildrenGap()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mRightMargin:I

    .line 54
    iput v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mPaddingBottom:I

    .line 55
    iput v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mPaddingTop:I

    .line 56
    iput v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mPaddingLeft:I

    .line 57
    iput v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mPaddingRight:I

    .line 59
    invoke-direct {p0}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->setDefaultTextStyle()V

    .line 61
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 32
    if-eqz p2, :cond_0

    .line 33
    sget-object v1, Lcom/htc/R$styleable;->HtcListItemTextComponentMode:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 35
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mIsMarqueeEnabled:Z

    .line 36
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mMode:I

    .line 42
    .end local v0           #a:Landroid/content/res/TypedArray;
    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->init(Landroid/content/Context;)V

    .line 43
    return-void

    .line 38
    :cond_0
    iput-boolean v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mIsMarqueeEnabled:Z

    .line 39
    iput v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mMode:I

    goto :goto_0
.end method

.method private setDefaultTextStyle()V
    .locals 2

    .prologue
    .line 182
    iget v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mMode:I

    if-nez v0, :cond_1

    .line 183
    iget v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mMode:I

    if-nez v0, :cond_0

    .line 184
    const v0, 0x2030045

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->setTextStyle(I)V

    .line 197
    :goto_0
    return-void

    .line 186
    :cond_0
    const v0, 0x2030024

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->setTextStyle(I)V

    goto :goto_0

    .line 188
    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 189
    iget v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mMode:I

    if-nez v0, :cond_2

    .line 190
    const v0, 0x2030091

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->setTextStyle(I)V

    goto :goto_0

    .line 192
    :cond_2
    const v0, 0x2030090

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->setTextStyle(I)V

    goto :goto_0

    .line 195
    :cond_3
    const v0, 0x2030082

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->setTextStyle(I)V

    goto :goto_0
.end method


# virtual methods
.method public enableMarquee(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mIsMarqueeEnabled:Z

    .line 178
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    check-cast v0, Lcom/htc/widget/HtcFadingEdgeTextView;

    iget-boolean v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mIsMarqueeEnabled:Z

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFadingEdgeTextView;->setEnableMarquee(Z)V

    .line 179
    return-void
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 99
    iget-object v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 107
    :goto_0
    return-object v0

    .line 102
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 105
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mRightMargin:I

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 106
    iput-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method public notifyItemMode(I)V
    .locals 2
    .parameter "itemMode"

    .prologue
    .line 225
    iget v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mItemMode:I

    if-eq v0, p1, :cond_0

    .line 226
    iput p1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mItemMode:I

    .line 227
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mItemMode:I

    invoke-static {v0, v1}, Lcom/htc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 228
    iget v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mItemMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mIsAutomotiveMode:Z

    .line 229
    invoke-direct {p0}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->setDefaultTextStyle()V

    .line 231
    :cond_0
    return-void

    .line 228
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 124
    .local v1, top:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->getMeasuredWidth()I

    move-result v0

    .line 125
    .local v0, right:I
    iget-object v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v0, v3

    iget-object v4, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 128
    return-void
.end method

.method public setAutoMotiveMode(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    const/4 v1, 0x3

    .line 204
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mIsAutomotiveMode:Z

    if-ne v0, p1, :cond_0

    .line 218
    :goto_0
    return-void

    .line 206
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mIsAutomotiveMode:Z

    .line 207
    if-eqz p1, :cond_1

    .line 208
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mItemMode:I

    .line 209
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/htc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 210
    invoke-direct {p0}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->setDefaultTextStyle()V

    .line 217
    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->requestLayout()V

    goto :goto_0

    .line 212
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mItemMode:I

    .line 213
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mItemMode:I

    invoke-static {v0, v1}, Lcom/htc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 214
    invoke-direct {p0}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->setDefaultTextStyle()V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->isEnabled()Z

    move-result v2

    if-ne v2, p1, :cond_1

    .line 164
    :cond_0
    return-void

    .line 158
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 160
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 161
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 162
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 86
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 87
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mRightMargin:I

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 89
    :cond_0
    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 90
    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 91
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 115
    return-void
.end method

.method public setText(I)V
    .locals 1
    .parameter "rId"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 148
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method

.method public setTextStyle(I)V
    .locals 1
    .parameter "defStyle"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredStamp;->mTextView:Landroid/widget/TextView;

    check-cast v0, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;->setTextStyle(I)V

    .line 136
    return-void
.end method
