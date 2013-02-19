.class public Lcom/htc/widget/HtcListItemSingleText;
.super Landroid/widget/FrameLayout;
.source "HtcListItemSingleText.java"

# interfaces
.implements Lcom/htc/widget/IHtcListItemTextComponent;
.implements Lcom/htc/widget/IHtcListItemAutoMotiveControl;
.implements Lcom/htc/widget/IHtcListItemComponent;


# instance fields
.field private mCustomStyle:I

.field private mFontSize:I

.field private mIsAutomotiveMode:Z

.field mItemMode:I

.field private mLeftMargin:I

.field private mMode:I

.field private mRightMargin:I

.field private mTextView:Landroid/widget/TextView;

.field private mUseFontSizeInStyle:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    iput v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mLeftMargin:I

    .line 24
    iput v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mRightMargin:I

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    .line 28
    iput v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mCustomStyle:I

    .line 29
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mUseFontSizeInStyle:Z

    .line 31
    iput v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mFontSize:I

    .line 32
    iput v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mMode:I

    .line 34
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mIsAutomotiveMode:Z

    .line 216
    iput v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mItemMode:I

    .line 71
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemSingleText;->init(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mLeftMargin:I

    .line 24
    iput v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mRightMargin:I

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    .line 28
    iput v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mCustomStyle:I

    .line 29
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mUseFontSizeInStyle:Z

    .line 31
    iput v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mFontSize:I

    .line 32
    iput v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mMode:I

    .line 34
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mIsAutomotiveMode:Z

    .line 216
    iput v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mItemMode:I

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemSingleText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    iput v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mLeftMargin:I

    .line 24
    iput v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mRightMargin:I

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    .line 28
    iput v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mCustomStyle:I

    .line 29
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mUseFontSizeInStyle:Z

    .line 31
    iput v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mFontSize:I

    .line 32
    iput v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mMode:I

    .line 34
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mIsAutomotiveMode:Z

    .line 216
    iput v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mItemMode:I

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemSingleText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 51
    iget v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mItemMode:I

    invoke-static {p1, v0}, Lcom/htc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 53
    new-instance v0, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    .line 55
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 56
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mFontSize:I

    .line 59
    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getDesiredChildrenGap()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mLeftMargin:I

    .line 60
    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getDesiredChildrenGap()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mRightMargin:I

    .line 62
    invoke-direct {p0}, Lcom/htc/widget/HtcListItemSingleText;->setDefaultTextStyle()V

    .line 64
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemSingleText;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 37
    if-eqz p2, :cond_0

    .line 38
    sget-object v1, Lcom/htc/R$styleable;->HtcListItemTextComponentMode:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 40
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mMode:I

    .line 46
    .end local v0           #a:Landroid/content/res/TypedArray;
    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemSingleText;->init(Landroid/content/Context;)V

    .line 47
    return-void

    .line 43
    :cond_0
    iput v2, p0, Lcom/htc/widget/HtcListItemSingleText;->mMode:I

    goto :goto_0
.end method

.method private setDefaultTextStyle()V
    .locals 2

    .prologue
    .line 167
    iget v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mItemMode:I

    if-nez v0, :cond_1

    .line 168
    iget v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mMode:I

    if-nez v0, :cond_0

    .line 169
    const v0, 0x203003a

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemSingleText;->setTextStyle(I)V

    .line 182
    :goto_0
    return-void

    .line 171
    :cond_0
    const v0, 0x2030019

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemSingleText;->setTextStyle(I)V

    goto :goto_0

    .line 173
    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mItemMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 174
    iget v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mMode:I

    if-nez v0, :cond_2

    .line 175
    const v0, 0x20300a0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemSingleText;->setTextStyle(I)V

    goto :goto_0

    .line 177
    :cond_2
    const v0, 0x203009f

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemSingleText;->setTextStyle(I)V

    goto :goto_0

    .line 180
    :cond_3
    const v0, 0x203007e

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemSingleText;->setTextStyle(I)V

    goto :goto_0
.end method


# virtual methods
.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 104
    iget-object v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 112
    :goto_0
    return-object v0

    .line 107
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 110
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mLeftMargin:I

    iget v2, p0, Lcom/htc/widget/HtcListItemSingleText;->mRightMargin:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 111
    iput-object v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method public notifyItemMode(I)V
    .locals 2
    .parameter "itemMode"

    .prologue
    .line 221
    iput p1, p0, Lcom/htc/widget/HtcListItemSingleText;->mItemMode:I

    .line 222
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSingleText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mItemMode:I

    invoke-static {v0, v1}, Lcom/htc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 223
    iget v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mItemMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mIsAutomotiveMode:Z

    .line 224
    invoke-direct {p0}, Lcom/htc/widget/HtcListItemSingleText;->setDefaultTextStyle()V

    .line 225
    return-void

    .line 223
    :cond_0
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
    .line 128
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSingleText;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 129
    .local v0, top:I
    iget-object v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/widget/HtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 130
    return-void
.end method

.method public setAutoMotiveMode(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mIsAutomotiveMode:Z

    if-ne v0, p1, :cond_0

    .line 201
    :goto_0
    return-void

    .line 191
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcListItemSingleText;->mIsAutomotiveMode:Z

    .line 192
    if-eqz p1, :cond_1

    .line 193
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mItemMode:I

    .line 194
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSingleText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mItemMode:I

    invoke-static {v0, v1}, Lcom/htc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 195
    const v0, 0x203007e

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemSingleText;->setTextStyle(I)V

    goto :goto_0

    .line 197
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mItemMode:I

    .line 198
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSingleText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mItemMode:I

    invoke-static {v0, v1}, Lcom/htc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 199
    invoke-direct {p0}, Lcom/htc/widget/HtcListItemSingleText;->setDefaultTextStyle()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSingleText;->isEnabled()Z

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
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSingleText;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 161
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemSingleText;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 162
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 89
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 90
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItemSingleText;->mLeftMargin:I

    iget v2, p0, Lcom/htc/widget/HtcListItemSingleText;->mRightMargin:I

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 93
    :cond_0
    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 94
    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 96
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 120
    return-void
.end method

.method public setText(I)V
    .locals 1
    .parameter "rId"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 152
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    return-void
.end method

.method public setTextStyle(I)V
    .locals 3
    .parameter "defStyle"

    .prologue
    .line 138
    iput p1, p0, Lcom/htc/widget/HtcListItemSingleText;->mCustomStyle:I

    .line 139
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    check-cast v0, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;->setTextStyle(I)V

    .line 141
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mIsAutomotiveMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mUseFontSizeInStyle:Z

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/widget/HtcListItemSingleText;->mFontSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 144
    :cond_0
    return-void
.end method

.method public setUseFontSizeInStyle(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 212
    iput-boolean p1, p0, Lcom/htc/widget/HtcListItemSingleText;->mUseFontSizeInStyle:Z

    .line 213
    iget v0, p0, Lcom/htc/widget/HtcListItemSingleText;->mCustomStyle:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemSingleText;->setTextStyle(I)V

    .line 214
    return-void
.end method
