.class public Lcom/htc/widget/HtcListItemStockBoard;
.super Landroid/widget/FrameLayout;
.source "HtcListItemStockBoard.java"

# interfaces
.implements Lcom/htc/widget/IHtcListItemComponent;


# static fields
.field private static STOCK:Ljava/lang/String;


# instance fields
.field private mBoardFontSize1:I

.field private mBoardFontSize2:I

.field private mBoardPane:Landroid/widget/ImageView;

.field private mBoardText1:Landroid/widget/TextView;

.field private mBoardText2:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDesiredBoardHeight:I

.field private mDesiredBoardWidth:I

.field private mFrontFontSize:I

.field private mFrontText:Landroid/widget/TextView;

.field private mFrontTextRightMargin:I

.field mItemMode:I

.field private mRightMargin:I

.field private mTextRightX:I

.field private mTopDownMargin:I

.field private mUseCustomSize:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "+100.00%"

    sput-object v0, Lcom/htc/widget/HtcListItemStockBoard;->STOCK:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    iput v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mDesiredBoardWidth:I

    .line 37
    iput v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mDesiredBoardHeight:I

    .line 38
    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mUseCustomSize:Z

    .line 46
    iput v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mTopDownMargin:I

    .line 49
    iput v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontTextRightMargin:I

    .line 50
    iput v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mRightMargin:I

    .line 428
    iput v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mItemMode:I

    .line 96
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemStockBoard;->init(Landroid/content/Context;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mDesiredBoardWidth:I

    .line 37
    iput v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mDesiredBoardHeight:I

    .line 38
    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mUseCustomSize:Z

    .line 46
    iput v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mTopDownMargin:I

    .line 49
    iput v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontTextRightMargin:I

    .line 50
    iput v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mRightMargin:I

    .line 428
    iput v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mItemMode:I

    .line 101
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemStockBoard;->init(Landroid/content/Context;)V

    .line 102
    return-void
.end method

.method private compareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter "text1"
    .parameter "text2"

    .prologue
    const/4 v0, 0x1

    .line 286
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 288
    :cond_0
    :goto_0
    return v0

    .line 287
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const v6, 0x20500ab

    const v5, 0x203001e

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x2

    .line 54
    iget v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mItemMode:I

    invoke-static {p1, v0}, Lcom/htc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 56
    iput-object p1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mContext:Landroid/content/Context;

    .line 58
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardPane:Landroid/widget/ImageView;

    .line 59
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardPane:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 61
    new-instance v0, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardFontSize1:I

    .line 64
    invoke-virtual {p0, v2, v5}, Lcom/htc/widget/HtcListItemStockBoard;->setTextLineStyle(II)V

    .line 66
    new-instance v0, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardFontSize2:I

    .line 69
    invoke-virtual {p0, v3, v5}, Lcom/htc/widget/HtcListItemStockBoard;->setTextLineStyle(II)V

    .line 71
    new-instance v0, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontFontSize:I

    .line 74
    const v0, 0x2030038

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemStockBoard;->setFrontTextStyle(I)V

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20500e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mTextRightX:I

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20500ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mTopDownMargin:I

    .line 79
    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM2()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontTextRightMargin:I

    .line 80
    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getDesiredChildrenGap()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mRightMargin:I

    .line 82
    iput v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mPaddingTop:I

    .line 83
    iput v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mPaddingLeft:I

    .line 84
    iput v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mPaddingBottom:I

    .line 85
    iput v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mPaddingRight:I

    .line 87
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardPane:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mDesiredBoardWidth:I

    iget v3, p0, Lcom/htc/widget/HtcListItemStockBoard;->mDesiredBoardHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemStockBoard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemStockBoard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemStockBoard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemStockBoard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    return-void
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "text"

    .prologue
    .line 276
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getBoardDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardPane:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFrontText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 122
    iget-object v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 130
    :goto_0
    return-object v0

    .line 125
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 128
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mRightMargin:I

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 129
    iput-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method public getTextLineContent(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 353
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 356
    :goto_0
    return-object v0

    .line 354
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 356
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyItemMode(I)V
    .locals 2
    .parameter "itemMode"

    .prologue
    .line 433
    iput p1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mItemMode:I

    .line 434
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemStockBoard;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mItemMode:I

    invoke-static {v0, v1}, Lcom/htc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 435
    iget v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mItemMode:I

    if-nez v0, :cond_1

    .line 436
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemStockBoard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontFontSize:I

    .line 437
    const v0, 0x2030038

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemStockBoard;->setFrontTextStyle(I)V

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mItemMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemStockBoard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20501f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontFontSize:I

    .line 440
    const v0, 0x203009d

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemStockBoard;->setFrontTextStyle(I)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemStockBoard;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    .line 182
    .local v3, top:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemStockBoard;->getMeasuredWidth()I

    move-result v1

    .line 184
    .local v1, right:I
    iget-object v4, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardPane:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardPane:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v1, v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardPane:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    add-int/lit8 v7, v7, 0x0

    invoke-virtual {v4, v5, v6, v1, v7}, Landroid/widget/ImageView;->layout(IIII)V

    .line 190
    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM5()I

    move-result v4

    sub-int v2, v1, v4

    .line 191
    .local v2, textRight:I
    iget-object v4, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v2, v5

    iget-object v6, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v5, v3, v2, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 197
    iget-object v4, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 198
    iget-object v4, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v2, v5

    iget-object v6, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v5, v3, v2, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 204
    iget-object v4, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardPane:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v1, v4

    iget v5, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontTextRightMargin:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sub-int v0, v4, v5

    .line 205
    .local v0, left:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemStockBoard;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    .line 206
    iget-object v4, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v0, v3, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 211
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "w"
    .parameter "h"

    .prologue
    const/high16 v5, 0x4000

    .line 151
    iget-object v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    invoke-virtual {p0, v2, p1, p2}, Lcom/htc/widget/HtcListItemStockBoard;->measureChild(Landroid/view/View;II)V

    .line 152
    iget-object v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    invoke-virtual {p0, v2, p1, p2}, Lcom/htc/widget/HtcListItemStockBoard;->measureChild(Landroid/view/View;II)V

    .line 153
    iget-object v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    invoke-virtual {p0, v2, p1, p2}, Lcom/htc/widget/HtcListItemStockBoard;->measureChild(Landroid/view/View;II)V

    .line 156
    iget-object v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sget-object v3, Lcom/htc/widget/HtcListItemStockBoard;->STOCK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM5()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 157
    .local v1, width:I
    iget-object v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM2()I

    move-result v3

    add-int v0, v2, v3

    .line 159
    .local v0, height:I
    iget-boolean v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mUseCustomSize:Z

    if-eqz v2, :cond_0

    .line 160
    iget-object v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardPane:Landroid/widget/ImageView;

    iget v3, p0, Lcom/htc/widget/HtcListItemStockBoard;->mDesiredBoardWidth:I

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v4, p0, Lcom/htc/widget/HtcListItemStockBoard;->mDesiredBoardHeight:I

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/widget/HtcListItemStockBoard;->measureChild(Landroid/view/View;II)V

    .line 170
    :goto_0
    iget-object v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardPane:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontTextRightMargin:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardPane:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcListItemStockBoard;->setMeasuredDimension(II)V

    .line 173
    return-void

    .line 164
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardPane:Landroid/widget/ImageView;

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/widget/HtcListItemStockBoard;->measureChild(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public setBoardBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardPane:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    return-void
.end method

.method public setBoardBackgroundResource(I)V
    .locals 1
    .parameter "rId"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardPane:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 261
    return-void
.end method

.method public setBoardImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bm"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardPane:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 245
    return-void
.end method

.method public setBoardImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardPane:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    return-void
.end method

.method public setBoardImageResource(I)V
    .locals 1
    .parameter "rId"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardPane:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 233
    return-void
.end method

.method public setBoardSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mUseCustomSize:Z

    .line 421
    iput p1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mDesiredBoardWidth:I

    .line 422
    iput p2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mDesiredBoardHeight:I

    .line 423
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemStockBoard;->requestLayout()V

    .line 424
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemStockBoard;->isEnabled()Z

    move-result v2

    if-ne v2, p1, :cond_1

    .line 417
    :cond_0
    return-void

    .line 410
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 412
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemStockBoard;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 413
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemStockBoard;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 414
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 415
    iget-object v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardPane:Landroid/widget/ImageView;

    invoke-static {v2, p1}, Lcom/htc/widget/HtcListItemUtil;->setViewOpacity(Landroid/view/View;Z)V

    .line 412
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setFrontText(I)V
    .locals 2
    .parameter "rId"

    .prologue
    .line 379
    iget-object v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/htc/widget/HtcListItemStockBoard;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public setFrontText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemStockBoard;->compareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemStockBoard;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFrontTextStyle(I)V
    .locals 3
    .parameter "defStyle"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    check-cast v0, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;->setTextStyle(I)V

    .line 391
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontText:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/widget/HtcListItemStockBoard;->mFrontFontSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 393
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 109
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 110
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mRightMargin:I

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 112
    :cond_0
    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 113
    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 114
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 138
    return-void
.end method

.method public setTextLine(ILjava/lang/String;)V
    .locals 1
    .parameter "index"
    .parameter "text"

    .prologue
    .line 298
    if-nez p1, :cond_2

    .line 299
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/htc/widget/HtcListItemStockBoard;->compareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    invoke-direct {p0, v0, p2}, Lcom/htc/widget/HtcListItemStockBoard;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 301
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/htc/widget/HtcListItemStockBoard;->compareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    invoke-direct {p0, v0, p2}, Lcom/htc/widget/HtcListItemStockBoard;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTextLineResource(II)V
    .locals 2
    .parameter "index"
    .parameter "rId"

    .prologue
    .line 318
    iget-object v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, text:Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HtcListItemStockBoard;->setTextLine(ILjava/lang/String;)V

    .line 320
    return-void
.end method

.method public setTextLineStyle(II)V
    .locals 3
    .parameter "index"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 329
    if-nez p1, :cond_1

    .line 330
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    check-cast v0, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcFadingEdgeTextView;->setTextStyle(I)V

    .line 332
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText1:Landroid/widget/TextView;

    iget v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardFontSize1:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    check-cast v0, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcFadingEdgeTextView;->setTextStyle(I)V

    .line 337
    iget-object v0, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardText2:Landroid/widget/TextView;

    iget v1, p0, Lcom/htc/widget/HtcListItemStockBoard;->mBoardFontSize2:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method
