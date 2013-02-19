.class public Lcom/htc/widget/HtcListItem2LineText;
.super Lcom/htc/widget/HtcListItem2TextComponent;
.source "HtcListItem2LineText.java"

# interfaces
.implements Lcom/htc/widget/IHtcListItemTextComponent;
.implements Lcom/htc/widget/IHtcListItemAutoMotiveControl;


# instance fields
.field private mBlackIcon:Landroid/widget/ImageView;

.field private mLeftMargin:I

.field private mRightMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2LineText;->init(Landroid/content/Context;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem2TextComponent;-><init>(Landroid/content/Context;I)V

    .line 143
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2LineText;->init(Landroid/content/Context;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem2TextComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2LineText;->init(Landroid/content/Context;)V

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem2LineText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 136
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItem2TextComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 137
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2LineText;->init(Landroid/content/Context;)V

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem2LineText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 139
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 89
    iput-object p1, p0, Lcom/htc/widget/HtcListItem2LineText;->mContext:Landroid/content/Context;

    .line 91
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/HtcListItem2LineText;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mBlackIcon:Landroid/widget/ImageView;

    .line 92
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mBlackIcon:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 93
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mBlackIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    new-instance v1, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-direct {v1, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v2

    .line 96
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    new-instance v1, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-direct {v1, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v5

    .line 98
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mIsMarqueeEnabled:Z

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem2LineText;->enableMarquee(Z)V

    .line 106
    invoke-direct {p0}, Lcom/htc/widget/HtcListItem2LineText;->setDefaultTextStyle()V

    .line 108
    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getDesiredChildrenGap()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mLeftMargin:I

    .line 109
    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getDesiredChildrenGap()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mRightMargin:I

    .line 111
    iput v2, p0, Lcom/htc/widget/HtcListItem2LineText;->mPaddingTop:I

    .line 112
    iput v2, p0, Lcom/htc/widget/HtcListItem2LineText;->mPaddingRight:I

    .line 113
    iput v2, p0, Lcom/htc/widget/HtcListItem2LineText;->mPaddingLeft:I

    .line 114
    iput v2, p0, Lcom/htc/widget/HtcListItem2LineText;->mPaddingBottom:I

    .line 119
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mBlackIcon:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v5

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 147
    sget-object v2, Lcom/htc/R$styleable;->HtcListItem2LineText:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 150
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 152
    .local v1, background:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 153
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 155
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    return-void
.end method

.method private layoutBlackIcon(Z)I
    .locals 5
    .parameter "isVerticalCenter"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 262
    iget-object v2, p0, Lcom/htc/widget/HtcListItem2LineText;->mBlackIcon:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v1

    .line 265
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/HtcListItem2LineText;->mBlackIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 272
    iget-object v2, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/widget/TextView;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/widget/HtcListItem2LineText;->mBlackIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 281
    .local v0, top:I
    iget-object v2, p0, Lcom/htc/widget/HtcListItem2LineText;->mBlackIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/htc/widget/HtcListItem2LineText;->mBlackIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcListItem2LineText;->mBlackIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 285
    iget-object v1, p0, Lcom/htc/widget/HtcListItem2LineText;->mBlackIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/htc/widget/HtcListItem2LineText;->mBlackIconRightMargin:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method private setDefaultTextStyle()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 323
    iget v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mItemMode:I

    if-nez v0, :cond_2

    .line 324
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mFontSize:[I

    iget-object v1, p0, Lcom/htc/widget/HtcListItem2LineText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    aput v1, v0, v4

    .line 325
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mFontSize:[I

    iget-object v1, p0, Lcom/htc/widget/HtcListItem2LineText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    aput v1, v0, v3

    .line 327
    iget v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mMode:I

    if-nez v0, :cond_1

    .line 328
    const v0, 0x2030038

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 329
    const v0, 0x2030042

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextStyle(I)V

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mMode:I

    if-ne v0, v3, :cond_0

    .line 332
    const v0, 0x2030016

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 333
    const v0, 0x2030021

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextStyle(I)V

    goto :goto_0

    .line 335
    :cond_2
    iget v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mItemMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 336
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mFontSize:[I

    iget-object v1, p0, Lcom/htc/widget/HtcListItem2LineText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20501f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    aput v1, v0, v4

    .line 337
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mFontSize:[I

    iget-object v1, p0, Lcom/htc/widget/HtcListItem2LineText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20501f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    aput v1, v0, v3

    .line 339
    iget v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mMode:I

    if-nez v0, :cond_3

    .line 340
    const v0, 0x203009d

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 341
    const v0, 0x2030096

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextStyle(I)V

    goto :goto_0

    .line 342
    :cond_3
    iget v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mMode:I

    if-ne v0, v3, :cond_0

    .line 344
    const v0, 0x2030092

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 345
    const v0, 0x2030095

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextStyle(I)V

    goto :goto_0

    .line 348
    :cond_4
    const v0, 0x203007e

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 349
    const v0, 0x2030082

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextStyle(I)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic enableMarquee(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->enableMarquee(Z)V

    return-void
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 178
    iget-object v1, p0, Lcom/htc/widget/HtcListItem2LineText;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 186
    :goto_0
    return-object v0

    .line 181
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 184
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/htc/widget/HtcListItem2LineText;->mLeftMargin:I

    iget v2, p0, Lcom/htc/widget/HtcListItem2LineText;->mRightMargin:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 185
    iput-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method public bridge synthetic getPrimaryCharSequence()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getPrimaryCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrimaryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getPrimaryText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrimaryTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getPrimaryTextView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrimaryTextVisibility()I
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getPrimaryTextVisibility()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSecondaryCharSequence()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getSecondaryCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSecondaryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getSecondaryText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSecondaryTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getSecondaryTextView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSecondaryTextVisibility()I
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getSecondaryTextVisibility()I

    move-result v0

    return v0
.end method

.method public notifyItemMode(I)V
    .locals 2
    .parameter "itemMode"

    .prologue
    .line 384
    iget v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mItemMode:I

    if-eq v0, p1, :cond_0

    .line 385
    iput p1, p0, Lcom/htc/widget/HtcListItem2LineText;->mItemMode:I

    .line 386
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2LineText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HtcListItem2LineText;->mItemMode:I

    invoke-static {v0, v1}, Lcom/htc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 387
    iget v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mItemMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mIsAutomotiveMode:Z

    .line 388
    invoke-direct {p0}, Lcom/htc/widget/HtcListItem2LineText;->setDefaultTextStyle()V

    .line 390
    :cond_0
    return-void

    .line 387
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
    const/16 v1, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 232
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 233
    invoke-virtual {p0, v3, v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->layoutText(IZI)V

    .line 234
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mBlackIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 235
    iget v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mBlackIconSize:I

    iget v1, p0, Lcom/htc/widget/HtcListItem2LineText;->mBlackIconRightMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v2, v2, v0}, Lcom/htc/widget/HtcListItem2LineText;->layoutText(IZI)V

    .line 236
    invoke-direct {p0, v3}, Lcom/htc/widget/HtcListItem2LineText;->layoutBlackIcon(Z)I

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-virtual {p0, v2, v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->layoutText(IZI)V

    goto :goto_0

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 243
    invoke-virtual {p0, v3, v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->layoutTextAtCenter(IZI)V

    goto :goto_0

    .line 246
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mBlackIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_4

    .line 248
    iget v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mBlackIconSize:I

    iget v1, p0, Lcom/htc/widget/HtcListItem2LineText;->mBlackIconRightMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v2, v2, v0}, Lcom/htc/widget/HtcListItem2LineText;->layoutTextAtCenter(IZI)V

    .line 249
    invoke-direct {p0, v2}, Lcom/htc/widget/HtcListItem2LineText;->layoutBlackIcon(Z)I

    goto :goto_0

    .line 251
    :cond_4
    invoke-virtual {p0, v2, v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->layoutTextAtCenter(IZI)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/4 v2, 0x0

    .line 200
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mBlackIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mBlackIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/widget/HtcListItem2LineText;->measureChild(Landroid/view/View;II)V

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mIsFrontImageExist:Z

    .line 213
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mBlackIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mBlackIconSize:I

    .line 219
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcListItem2TextComponent;->onMeasure(II)V

    .line 222
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2LineText;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2LineText;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setMeasuredDimension(II)V

    .line 223
    return-void

    .line 215
    :cond_0
    iput-boolean v2, p0, Lcom/htc/widget/HtcListItem2LineText;->mIsFrontImageExist:Z

    .line 216
    iput v2, p0, Lcom/htc/widget/HtcListItem2LineText;->mBlackIconSize:I

    goto :goto_0
.end method

.method public setAutoMotiveMode(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mIsAutomotiveMode:Z

    if-ne v0, p1, :cond_0

    .line 368
    :goto_0
    return-void

    .line 356
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcListItem2LineText;->mIsAutomotiveMode:Z

    .line 358
    if-eqz p1, :cond_1

    .line 359
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mItemMode:I

    .line 360
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2LineText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HtcListItem2LineText;->mItemMode:I

    invoke-static {v0, v1}, Lcom/htc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 361
    invoke-direct {p0}, Lcom/htc/widget/HtcListItem2LineText;->setDefaultTextStyle()V

    .line 367
    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2LineText;->requestLayout()V

    goto :goto_0

    .line 363
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mItemMode:I

    .line 364
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2LineText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HtcListItem2LineText;->mItemMode:I

    invoke-static {v0, v1}, Lcom/htc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 365
    invoke-direct {p0}, Lcom/htc/widget/HtcListItem2LineText;->setDefaultTextStyle()V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 318
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setEnabled(Z)V

    .line 319
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mBlackIcon:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/htc/widget/HtcListItemUtil;->setViewOpacity(Landroid/view/View;Z)V

    .line 320
    return-void
.end method

.method public setIndicatorBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bm"

    .prologue
    .line 309
    if-nez p1, :cond_0

    .line 310
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mBlackIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 313
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mBlackIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 314
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mBlackIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 289
    if-nez p1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mBlackIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 293
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mBlackIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 294
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mBlackIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIndicatorResource(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 297
    if-nez p1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mBlackIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mBlackIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 302
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mBlackIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 163
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 164
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItem2LineText;->mLeftMargin:I

    iget v2, p0, Lcom/htc/widget/HtcListItem2LineText;->mRightMargin:I

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 167
    :cond_0
    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 168
    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 170
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 190
    return-void
.end method

.method public bridge synthetic setPrimaryText(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setPrimaryText(I)V

    return-void
.end method

.method public bridge synthetic setPrimaryText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setPrimaryText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setPrimaryText(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setPrimaryText(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setPrimaryTextStyle(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setPrimaryTextStyle(I)V

    return-void
.end method

.method public bridge synthetic setPrimaryTextVisibility(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setPrimaryTextVisibility(I)V

    return-void
.end method

.method public bridge synthetic setSecondaryText(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setSecondaryText(I)V

    return-void
.end method

.method public bridge synthetic setSecondaryText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setSecondaryText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setSecondaryText(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setSecondaryText(Ljava/lang/String;)V

    return-void
.end method

.method public setSecondaryTextSingleLine(Z)V
    .locals 3
    .parameter "isSingeline"

    .prologue
    const/4 v2, 0x1

    .line 375
    if-eqz p1, :cond_0

    .line 376
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    check-cast v0, Lcom/htc/widget/HtcFadingEdgeTextView;

    iget-boolean v1, p0, Lcom/htc/widget/HtcListItem2LineText;->mIsMarqueeEnabled:Z

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFadingEdgeTextView;->setEnableMarquee(Z)V

    .line 381
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 379
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineText;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_0
.end method

.method public bridge synthetic setSecondaryTextStyle(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setSecondaryTextStyle(I)V

    return-void
.end method

.method public bridge synthetic setSecondaryTextVisibility(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setSecondaryTextVisibility(I)V

    return-void
.end method

.method public bridge synthetic setUseFontSizeInStyle(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setUseFontSizeInStyle(Z)V

    return-void
.end method
