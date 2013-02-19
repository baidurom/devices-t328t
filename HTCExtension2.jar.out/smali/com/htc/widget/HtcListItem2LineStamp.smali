.class public Lcom/htc/widget/HtcListItem2LineStamp;
.super Lcom/htc/widget/HtcListItem2TextComponent;
.source "HtcListItem2LineStamp.java"

# interfaces
.implements Lcom/htc/widget/IHtcListItemStampComponent;


# instance fields
.field private mRightMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;-><init>(Landroid/content/Context;)V

    .line 99
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2LineStamp;->init(Landroid/content/Context;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem2TextComponent;-><init>(Landroid/content/Context;I)V

    .line 114
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2LineStamp;->init(Landroid/content/Context;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem2TextComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2LineStamp;->init(Landroid/content/Context;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItem2TextComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2LineStamp;->init(Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 74
    iput-object p1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    .line 76
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    new-instance v1, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-direct {v1, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v2

    .line 77
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    new-instance v1, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-direct {v1, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v4

    .line 79
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mIsMarqueeEnabled:Z

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem2LineStamp;->enableMarquee(Z)V

    .line 84
    invoke-direct {p0}, Lcom/htc/widget/HtcListItem2LineStamp;->setDefaultTextStyle()V

    .line 86
    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getDesiredChildrenGap()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mRightMargin:I

    .line 88
    iput v2, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mPaddingTop:I

    .line 89
    iput v2, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mPaddingRight:I

    .line 90
    iput v2, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mPaddingLeft:I

    .line 91
    iput v2, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mPaddingBottom:I

    .line 93
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItem2LineStamp;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItem2LineStamp;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    return-void
.end method

.method private setDefaultTextStyle()V
    .locals 7

    .prologue
    const v6, 0x2030090

    const v5, 0x2030024

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 168
    iget v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mItemMode:I

    if-nez v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mFontSize:[I

    iget-object v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205009e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    aput v1, v0, v4

    .line 170
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mFontSize:[I

    iget-object v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050092

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    aput v1, v0, v3

    .line 172
    iget v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mMode:I

    if-nez v0, :cond_1

    .line 173
    const v0, 0x2030071

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryTextStyle(I)V

    .line 174
    const v0, 0x2030045

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryTextStyle(I)V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mMode:I

    if-ne v0, v3, :cond_0

    .line 176
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryTextStyle(I)V

    .line 177
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryTextStyle(I)V

    goto :goto_0

    .line 179
    :cond_2
    iget v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mItemMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mFontSize:[I

    iget-object v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20501f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    aput v1, v0, v4

    .line 181
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mFontSize:[I

    iget-object v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20501f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    aput v1, v0, v3

    .line 183
    iget v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mMode:I

    if-nez v0, :cond_3

    .line 184
    const v0, 0x2030094

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryTextStyle(I)V

    .line 185
    const v0, 0x2030091

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryTextStyle(I)V

    goto :goto_0

    .line 186
    :cond_3
    iget v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mMode:I

    if-ne v0, v3, :cond_0

    .line 187
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryTextStyle(I)V

    .line 188
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryTextStyle(I)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic enableMarquee(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->enableMarquee(Z)V

    return-void
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 137
    iget-object v1, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 144
    :goto_0
    return-object v0

    .line 139
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 142
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mRightMargin:I

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 143
    iput-object v0, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method public bridge synthetic getPrimaryCharSequence()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getPrimaryCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrimaryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getPrimaryText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrimaryTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getPrimaryTextView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrimaryTextVisibility()I
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getPrimaryTextVisibility()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSecondaryCharSequence()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getSecondaryCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSecondaryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getSecondaryText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSecondaryTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getSecondaryTextView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSecondaryTextVisibility()I
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getSecondaryTextVisibility()I

    move-result v0

    return v0
.end method

.method public notifyItemMode(I)V
    .locals 2
    .parameter "itemMode"

    .prologue
    .line 197
    iget v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mItemMode:I

    if-eq v0, p1, :cond_0

    .line 198
    iput p1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mItemMode:I

    .line 199
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2LineStamp;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mItemMode:I

    invoke-static {v0, v1}, Lcom/htc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 200
    iget v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mItemMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mIsAutomotiveMode:Z

    .line 201
    invoke-direct {p0}, Lcom/htc/widget/HtcListItem2LineStamp;->setDefaultTextStyle()V

    .line 203
    :cond_0
    return-void

    .line 200
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 153
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 154
    invoke-virtual {p0, v1, v1, v1}, Lcom/htc/widget/HtcListItem2LineStamp;->layoutText(IZI)V

    .line 155
    invoke-virtual {p0, v2, v1, v1}, Lcom/htc/widget/HtcListItem2LineStamp;->layoutText(IZI)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 159
    invoke-virtual {p0, v1, v1, v1}, Lcom/htc/widget/HtcListItem2LineStamp;->layoutTextAtCenter(IZI)V

    goto :goto_0

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 163
    invoke-virtual {p0, v2, v1, v1}, Lcom/htc/widget/HtcListItem2LineStamp;->layoutTextAtCenter(IZI)V

    goto :goto_0
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setEnabled(Z)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 122
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 123
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItem2LineStamp;->mRightMargin:I

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 126
    :cond_0
    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 127
    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 129
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 148
    return-void
.end method

.method public bridge synthetic setPrimaryText(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setPrimaryText(I)V

    return-void
.end method

.method public bridge synthetic setPrimaryText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setPrimaryText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setPrimaryText(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setPrimaryText(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setPrimaryTextStyle(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setPrimaryTextStyle(I)V

    return-void
.end method

.method public bridge synthetic setPrimaryTextVisibility(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setPrimaryTextVisibility(I)V

    return-void
.end method

.method public bridge synthetic setSecondaryText(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setSecondaryText(I)V

    return-void
.end method

.method public bridge synthetic setSecondaryText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setSecondaryText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setSecondaryText(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setSecondaryText(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setSecondaryTextStyle(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setSecondaryTextStyle(I)V

    return-void
.end method

.method public bridge synthetic setSecondaryTextVisibility(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setSecondaryTextVisibility(I)V

    return-void
.end method

.method public bridge synthetic setUseFontSizeInStyle(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setUseFontSizeInStyle(Z)V

    return-void
.end method
