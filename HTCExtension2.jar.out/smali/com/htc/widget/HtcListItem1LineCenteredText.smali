.class public Lcom/htc/widget/HtcListItem1LineCenteredText;
.super Landroid/widget/FrameLayout;
.source "HtcListItem1LineCenteredText.java"

# interfaces
.implements Lcom/htc/widget/IHtcListItemTextComponent;
.implements Lcom/htc/widget/IHtcListItemAutoMotiveControl;
.implements Lcom/htc/widget/IHtcListItemComponent;


# instance fields
.field private mIsAutomotiveMode:Z

.field private mIsMarqueeEnabled:Z

.field mItemMode:I

.field private mLeftMargin:I

.field protected mMode:I

.field private mRightMargin:I

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mRightMargin:I

    .line 22
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mLeftMargin:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    .line 25
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mIsMarqueeEnabled:Z

    .line 26
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mMode:I

    .line 27
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mIsAutomotiveMode:Z

    .line 188
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mItemMode:I

    .line 69
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem1LineCenteredText;->init(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mRightMargin:I

    .line 22
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mLeftMargin:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    .line 25
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mIsMarqueeEnabled:Z

    .line 26
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mMode:I

    .line 27
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mIsAutomotiveMode:Z

    .line 188
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mItemMode:I

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem1LineCenteredText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mRightMargin:I

    .line 22
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mLeftMargin:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    .line 25
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mIsMarqueeEnabled:Z

    .line 26
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mMode:I

    .line 27
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mIsAutomotiveMode:Z

    .line 188
    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mItemMode:I

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem1LineCenteredText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 45
    iget v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mItemMode:I

    invoke-static {p1, v0}, Lcom/htc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 47
    new-instance v0, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mIsMarqueeEnabled:Z

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->enableMarquee(Z)V

    .line 51
    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getDesiredChildrenGap()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mRightMargin:I

    .line 53
    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getDesiredChildrenGap()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mLeftMargin:I

    .line 55
    iput v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mPaddingBottom:I

    .line 56
    iput v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mPaddingTop:I

    .line 57
    iput v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mPaddingLeft:I

    .line 58
    iput v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mPaddingRight:I

    .line 60
    invoke-direct {p0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setDefaultTextStyle()V

    .line 62
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItem1LineCenteredText;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 30
    if-eqz p2, :cond_0

    .line 31
    sget-object v1, Lcom/htc/R$styleable;->HtcListItemTextComponentMode:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 33
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mIsMarqueeEnabled:Z

    .line 34
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mMode:I

    .line 40
    .end local v0           #a:Landroid/content/res/TypedArray;
    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem1LineCenteredText;->init(Landroid/content/Context;)V

    .line 41
    return-void

    .line 36
    :cond_0
    iput-boolean v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mIsMarqueeEnabled:Z

    .line 37
    iput v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mMode:I

    goto :goto_0
.end method

.method private setDefaultTextStyle()V
    .locals 2

    .prologue
    .line 154
    iget v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mItemMode:I

    if-nez v0, :cond_1

    .line 155
    iget v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mMode:I

    if-nez v0, :cond_0

    .line 157
    const v0, 0x2030038

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setTextStyle(I)V

    .line 171
    :goto_0
    return-void

    .line 159
    :cond_0
    const v0, 0x2030016

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setTextStyle(I)V

    goto :goto_0

    .line 161
    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mItemMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 162
    iget v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mMode:I

    if-nez v0, :cond_2

    .line 164
    const v0, 0x203009d

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setTextStyle(I)V

    goto :goto_0

    .line 166
    :cond_2
    const v0, 0x2030092

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setTextStyle(I)V

    goto :goto_0

    .line 169
    :cond_3
    const v0, 0x203007e

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setTextStyle(I)V

    goto :goto_0
.end method


# virtual methods
.method public enableMarquee(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mIsMarqueeEnabled:Z

    .line 149
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    check-cast v0, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;->setEnableMarquee(Z)V

    .line 151
    return-void
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 92
    iget-object v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 100
    :goto_0
    return-object v0

    .line 95
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 98
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mLeftMargin:I

    iget v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mRightMargin:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 99
    iput-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method public notifyItemMode(I)V
    .locals 2
    .parameter "itemMode"

    .prologue
    .line 194
    iput p1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mItemMode:I

    .line 195
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mItemMode:I

    invoke-static {v0, v1}, Lcom/htc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 196
    iget v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mItemMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mIsAutomotiveMode:Z

    .line 197
    invoke-direct {p0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setDefaultTextStyle()V

    .line 198
    return-void

    .line 196
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
    .line 108
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 109
    .local v0, top:I
    iget-object v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 110
    return-void
.end method

.method public setAutoMotiveMode(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mIsAutomotiveMode:Z

    if-ne v0, p1, :cond_0

    .line 186
    :goto_0
    return-void

    .line 176
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mIsAutomotiveMode:Z

    .line 177
    if-eqz p1, :cond_1

    .line 178
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mItemMode:I

    .line 179
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mItemMode:I

    invoke-static {v0, v1}, Lcom/htc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 180
    invoke-direct {p0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setDefaultTextStyle()V

    goto :goto_0

    .line 182
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mItemMode:I

    .line 183
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mItemMode:I

    invoke-static {v0, v1}, Lcom/htc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 184
    invoke-direct {p0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setDefaultTextStyle()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->isEnabled()Z

    move-result v2

    if-ne v2, p1, :cond_1

    .line 139
    :cond_0
    return-void

    .line 134
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 135
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 136
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItem1LineCenteredText;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 137
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 83
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 84
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mLeftMargin:I

    iget v2, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mRightMargin:I

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 86
    :cond_0
    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 87
    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 88
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
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

.method public setText(I)V
    .locals 1
    .parameter "rId"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 128
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    return-void
.end method

.method public setTextStyle(I)V
    .locals 1
    .parameter "defStyle"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    check-cast v0, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;->setTextStyle(I)V

    .line 120
    return-void
.end method
