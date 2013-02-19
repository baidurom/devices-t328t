.class public Lcom/htc/widget/HtcListItemTileImage;
.super Lcom/htc/widget/HtcListItemImageComponent;
.source "HtcListItemTileImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcListItemTileImage$MaskImageView;
    }
.end annotation


# static fields
.field private static sBmpRetNoBadge:Landroid/graphics/Bitmap;

.field private static sErasePaint:Landroid/graphics/Paint;

.field private static sMaskBitmap:Landroid/graphics/Bitmap;

.field private static sRectBmpMask:Landroid/graphics/Rect;


# instance fields
.field private mBadge:Lcom/htc/widget/HtcListItemTileImage$MaskImageView;

.field private mIsDark:Z

.field private mMask:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    sput-object v0, Lcom/htc/widget/HtcListItemTileImage;->sMaskBitmap:Landroid/graphics/Bitmap;

    .line 31
    sput-object v0, Lcom/htc/widget/HtcListItemTileImage;->sErasePaint:Landroid/graphics/Paint;

    .line 32
    sput-object v0, Lcom/htc/widget/HtcListItemTileImage;->sRectBmpMask:Landroid/graphics/Rect;

    .line 33
    sput-object v0, Lcom/htc/widget/HtcListItemTileImage;->sBmpRetNoBadge:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mMask:Landroid/graphics/drawable/Drawable;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mIsDark:Z

    .line 109
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemTileImage;->init(Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemImageComponent;-><init>(Landroid/content/Context;I)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mMask:Landroid/graphics/drawable/Drawable;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mIsDark:Z

    .line 114
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemTileImage;->init(Landroid/content/Context;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemImageComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mMask:Landroid/graphics/drawable/Drawable;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mIsDark:Z

    .line 119
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemTileImage;->init(Landroid/content/Context;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItemImageComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mMask:Landroid/graphics/drawable/Drawable;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mIsDark:Z

    .line 124
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemTileImage;->init(Landroid/content/Context;)V

    .line 125
    return-void
.end method

.method static synthetic access$000()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/htc/widget/HtcListItemTileImage;->sMaskBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$100()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/htc/widget/HtcListItemTileImage;->sBmpRetNoBadge:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$200()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/htc/widget/HtcListItemTileImage;->sErasePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private convertToBitmap()V
    .locals 7

    .prologue
    .line 38
    iget-object v1, p0, Lcom/htc/widget/HtcListItemTileImage;->mMask:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 62
    :goto_0
    return-void

    .line 40
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    sget-object v1, Lcom/htc/widget/HtcListItemTileImage;->sMaskBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 55
    .local v0, canvas:Landroid/graphics/Canvas;
    iget-object v1, p0, Lcom/htc/widget/HtcListItemTileImage;->mMask:Landroid/graphics/drawable/Drawable;

    sget v2, Lcom/htc/widget/HtcListItemTileImage;->mFrameWidth:I

    iget-object v3, p0, Lcom/htc/widget/HtcListItemTileImage;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sget v3, Lcom/htc/widget/HtcListItemTileImage;->mFrameHeight:I

    iget-object v4, p0, Lcom/htc/widget/HtcListItemTileImage;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sget v4, Lcom/htc/widget/HtcListItemTileImage;->mFrameWidth:I

    iget-object v5, p0, Lcom/htc/widget/HtcListItemTileImage;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sget v5, Lcom/htc/widget/HtcListItemTileImage;->mFrameHeight:I

    iget-object v6, p0, Lcom/htc/widget/HtcListItemTileImage;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 61
    iget-object v1, p0, Lcom/htc/widget/HtcListItemTileImage;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 65
    iput-object p1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    .line 66
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemTileImage;->setLayerType(ILandroid/graphics/Paint;)V

    .line 68
    new-instance v0, Lcom/htc/widget/HtcListItemTileImage$MaskImageView;

    invoke-direct {v0, p0, p1}, Lcom/htc/widget/HtcListItemTileImage$MaskImageView;-><init>(Lcom/htc/widget/HtcListItemTileImage;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/widget/HtcListItemTileImage$MaskImageView;

    .line 69
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "common_photo_frame_mask"

    const v2, 0x208017e

    invoke-static {p1, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mMask:Landroid/graphics/drawable/Drawable;

    .line 71
    iget-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/widget/HtcListItemTileImage$MaskImageView;

    const-string v1, "common_photo_frame"

    const v2, 0x2080040

    invoke-static {p1, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemTileImage$MaskImageView;->setBackgroundResource(I)V

    .line 74
    iget-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/widget/HtcListItemTileImage$MaskImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemTileImage$MaskImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 76
    iput v4, p0, Lcom/htc/widget/HtcListItemTileImage;->mPaddingTop:I

    .line 77
    iput v4, p0, Lcom/htc/widget/HtcListItemTileImage;->mPaddingLeft:I

    .line 78
    iput v4, p0, Lcom/htc/widget/HtcListItemTileImage;->mPaddingRight:I

    .line 79
    iput v4, p0, Lcom/htc/widget/HtcListItemTileImage;->mPaddingBottom:I

    .line 81
    sget-object v0, Lcom/htc/widget/HtcListItemTileImage;->sMaskBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 82
    const-string v0, "HtcListItemTileImage"

    const-string v1, "sMaskBitmap == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget v0, Lcom/htc/widget/HtcListItemTileImage;->mFrameWidth:I

    sget v1, Lcom/htc/widget/HtcListItemTileImage;->mFrameHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/htc/widget/HtcListItemTileImage;->sMaskBitmap:Landroid/graphics/Bitmap;

    .line 86
    invoke-direct {p0}, Lcom/htc/widget/HtcListItemTileImage;->convertToBitmap()V

    .line 88
    sget-object v0, Lcom/htc/widget/HtcListItemTileImage;->sMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/htc/widget/HtcListItemTileImage;->sMaskBitmap:Landroid/graphics/Bitmap;

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    sget v1, Lcom/htc/widget/HtcListItemTileImage;->mFrameWidth:I

    sget v2, Lcom/htc/widget/HtcListItemTileImage;->mFrameHeight:I

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/htc/widget/HtcListItemTileImage;->sRectBmpMask:Landroid/graphics/Rect;

    .line 96
    sget v0, Lcom/htc/widget/HtcListItemTileImage;->mFrameWidth:I

    sget v1, Lcom/htc/widget/HtcListItemTileImage;->mFrameHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/htc/widget/HtcListItemTileImage;->sBmpRetNoBadge:Landroid/graphics/Bitmap;

    .line 99
    :cond_0
    sget-object v0, Lcom/htc/widget/HtcListItemTileImage;->sErasePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/htc/widget/HtcListItemTileImage;->sErasePaint:Landroid/graphics/Paint;

    .line 101
    sget-object v0, Lcom/htc/widget/HtcListItemTileImage;->sErasePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/widget/HtcListItemTileImage$MaskImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v2, Lcom/htc/widget/HtcListItemTileImage;->mFrameWidth:I

    sget v3, Lcom/htc/widget/HtcListItemTileImage;->mFrameHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v4, v1}, Lcom/htc/widget/HtcListItemTileImage;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 105
    return-void
.end method


# virtual methods
.method public bridge synthetic getBubbleCountText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/htc/widget/HtcListItemImageComponent;->getBubbleCountText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIndicatorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/htc/widget/HtcListItemImageComponent;->getIndicatorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 147
    iget-object v1, p0, Lcom/htc/widget/HtcListItemTileImage;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 154
    :goto_0
    return-object v0

    .line 150
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentWidth:I

    iget v2, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentHeight:I

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 152
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mLeftMargin:I

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 153
    iput-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method public getTileImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/widget/HtcListItemTileImage$MaskImageView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListItemTileImage$MaskImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic notifyItemMode(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
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

    .line 183
    iget-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/widget/HtcListItemTileImage$MaskImageView;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/widget/HtcListItemTileImage$MaskImageView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemTileImage$MaskImageView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/widget/HtcListItemTileImage$MaskImageView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListItemTileImage$MaskImageView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/htc/widget/HtcListItemTileImage$MaskImageView;->layout(IIII)V

    .line 184
    invoke-super/range {p0 .. p5}, Lcom/htc/widget/HtcListItemImageComponent;->onLayout(ZIIII)V

    .line 185
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "w"
    .parameter "h"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/widget/HtcListItemTileImage$MaskImageView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/widget/HtcListItemTileImage;->measureChild(Landroid/view/View;II)V

    .line 171
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcListItemImageComponent;->onMeasure(II)V

    .line 172
    iget-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/widget/HtcListItemTileImage$MaskImageView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListItemTileImage$MaskImageView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mRightMargin:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/widget/HtcListItemTileImage$MaskImageView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemTileImage$MaskImageView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemTileImage;->setMeasuredDimension(II)V

    .line 175
    return-void
.end method

.method public bridge synthetic setBubbleCount(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setBubbleCount(Ljava/lang/String;)V

    return-void
.end method

.method public setDarkMode(Z)V
    .locals 4
    .parameter "isDark"

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/htc/widget/HtcListItemTileImage;->mIsDark:Z

    .line 228
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mIsDark:Z

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/widget/HtcListItemTileImage$MaskImageView;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    const-string v2, "common_b_photo_frame"

    const v3, 0x2080152

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemTileImage$MaskImageView;->setBackgroundResource(I)V

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/widget/HtcListItemTileImage$MaskImageView;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    const-string v2, "common_photo_frame"

    const v3, 0x2080040

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemTileImage$MaskImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setIndicatorBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setIndicatorBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic setIndicatorResource(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setIndicatorResource(I)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 132
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 133
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mLeftMargin:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 136
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentWidth:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 137
    iget v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentHeight:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 139
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 162
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .parameter "scaleType"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/widget/HtcListItemTileImage$MaskImageView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemTileImage$MaskImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 224
    return-void
.end method

.method public setTileImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bm"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/widget/HtcListItemTileImage$MaskImageView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemTileImage$MaskImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 211
    iget-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/widget/HtcListItemTileImage$MaskImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemTileImage$MaskImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 212
    return-void
.end method

.method public setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "drawable"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/widget/HtcListItemTileImage$MaskImageView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemTileImage$MaskImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    iget-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/widget/HtcListItemTileImage$MaskImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemTileImage$MaskImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 194
    return-void
.end method

.method public setTileImageResource(I)V
    .locals 2
    .parameter "rId"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/widget/HtcListItemTileImage$MaskImageView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemTileImage$MaskImageView;->setImageResource(I)V

    .line 202
    iget-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/widget/HtcListItemTileImage$MaskImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemTileImage$MaskImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 203
    return-void
.end method
