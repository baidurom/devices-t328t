.class public Lcom/htc/widget/CarouselTextView;
.super Landroid/widget/TextView;
.source "CarouselTextView.java"


# instance fields
.field private display:Landroid/view/Display;

.field private forceSingleLine:Z

.field private isPortrait:Z

.field private final landTextLine:I

.field private final maxAlpha:I

.field private final minAlpha:I

.field private multiplyPaint:Landroid/graphics/Paint;

.field private mutiplyEnable:Z

.field private final portTextLine:I

.field private screenBitmap:Landroid/graphics/Bitmap;

.field private screenCanvas:Landroid/graphics/Canvas;

.field private screenEnable:Z

.field private screenMatrix:Landroid/graphics/ColorMatrix;

.field private screenPaint:Landroid/graphics/Paint;

.field private final screenScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput v2, p0, Lcom/htc/widget/CarouselTextView;->minAlpha:I

    .line 26
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/widget/CarouselTextView;->maxAlpha:I

    .line 27
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/widget/CarouselTextView;->screenScale:F

    .line 29
    iput v3, p0, Lcom/htc/widget/CarouselTextView;->portTextLine:I

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/widget/CarouselTextView;->landTextLine:I

    .line 32
    iput-boolean v3, p0, Lcom/htc/widget/CarouselTextView;->isPortrait:Z

    .line 33
    iput-boolean v2, p0, Lcom/htc/widget/CarouselTextView;->screenEnable:Z

    .line 34
    iput-boolean v2, p0, Lcom/htc/widget/CarouselTextView;->mutiplyEnable:Z

    .line 35
    iput-boolean v2, p0, Lcom/htc/widget/CarouselTextView;->forceSingleLine:Z

    .line 38
    iput-object v1, p0, Lcom/htc/widget/CarouselTextView;->screenPaint:Landroid/graphics/Paint;

    .line 39
    iput-object v1, p0, Lcom/htc/widget/CarouselTextView;->multiplyPaint:Landroid/graphics/Paint;

    .line 42
    iput-object v1, p0, Lcom/htc/widget/CarouselTextView;->display:Landroid/view/Display;

    .line 44
    iput-object v1, p0, Lcom/htc/widget/CarouselTextView;->screenMatrix:Landroid/graphics/ColorMatrix;

    .line 47
    iput-object v1, p0, Lcom/htc/widget/CarouselTextView;->screenBitmap:Landroid/graphics/Bitmap;

    .line 48
    iput-object v1, p0, Lcom/htc/widget/CarouselTextView;->screenCanvas:Landroid/graphics/Canvas;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput v2, p0, Lcom/htc/widget/CarouselTextView;->minAlpha:I

    .line 26
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/widget/CarouselTextView;->maxAlpha:I

    .line 27
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/widget/CarouselTextView;->screenScale:F

    .line 29
    iput v3, p0, Lcom/htc/widget/CarouselTextView;->portTextLine:I

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/widget/CarouselTextView;->landTextLine:I

    .line 32
    iput-boolean v3, p0, Lcom/htc/widget/CarouselTextView;->isPortrait:Z

    .line 33
    iput-boolean v2, p0, Lcom/htc/widget/CarouselTextView;->screenEnable:Z

    .line 34
    iput-boolean v2, p0, Lcom/htc/widget/CarouselTextView;->mutiplyEnable:Z

    .line 35
    iput-boolean v2, p0, Lcom/htc/widget/CarouselTextView;->forceSingleLine:Z

    .line 38
    iput-object v1, p0, Lcom/htc/widget/CarouselTextView;->screenPaint:Landroid/graphics/Paint;

    .line 39
    iput-object v1, p0, Lcom/htc/widget/CarouselTextView;->multiplyPaint:Landroid/graphics/Paint;

    .line 42
    iput-object v1, p0, Lcom/htc/widget/CarouselTextView;->display:Landroid/view/Display;

    .line 44
    iput-object v1, p0, Lcom/htc/widget/CarouselTextView;->screenMatrix:Landroid/graphics/ColorMatrix;

    .line 47
    iput-object v1, p0, Lcom/htc/widget/CarouselTextView;->screenBitmap:Landroid/graphics/Bitmap;

    .line 48
    iput-object v1, p0, Lcom/htc/widget/CarouselTextView;->screenCanvas:Landroid/graphics/Canvas;

    .line 60
    invoke-direct {p0}, Lcom/htc/widget/CarouselTextView;->setOrientation()V

    .line 61
    return-void
.end method

.method private setOrientation()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 76
    iget-object v1, p0, Lcom/htc/widget/CarouselTextView;->display:Landroid/view/Display;

    if-nez v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/htc/widget/CarouselTextView;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/CarouselTextView;->display:Landroid/view/Display;

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/CarouselTextView;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 81
    .local v0, orientation:I
    iput-boolean v2, p0, Lcom/htc/widget/CarouselTextView;->isPortrait:Z

    .line 84
    iget-boolean v1, p0, Lcom/htc/widget/CarouselTextView;->isPortrait:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/widget/CarouselTextView;->forceSingleLine:Z

    if-eqz v1, :cond_2

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/widget/CarouselTextView;->setMaxLines(I)V

    .line 85
    return-void

    .line 84
    :cond_2
    const/4 v1, 0x2

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 232
    iget-boolean v0, p0, Lcom/htc/widget/CarouselTextView;->screenEnable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/CarouselTextView;->screenPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/htc/widget/CarouselTextView;->screenBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselTextView;->screenCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/CarouselTextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselTextView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/CarouselTextView;->screenBitmap:Landroid/graphics/Bitmap;

    .line 238
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/htc/widget/CarouselTextView;->screenBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselTextView;->screenCanvas:Landroid/graphics/Canvas;

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/CarouselTextView;->screenCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 243
    iget-object v0, p0, Lcom/htc/widget/CarouselTextView;->screenCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 246
    iget-object v0, p0, Lcom/htc/widget/CarouselTextView;->screenCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/htc/widget/CarouselTextView;->screenBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/htc/widget/CarouselTextView;->screenPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 247
    iget-object v0, p0, Lcom/htc/widget/CarouselTextView;->screenBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 251
    :goto_0
    return-void

    .line 250
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public enableBrightScreen(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/high16 v3, 0x3f80

    .line 144
    iget-boolean v1, p0, Lcom/htc/widget/CarouselTextView;->screenEnable:Z

    if-ne p1, v1, :cond_0

    .line 175
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/CarouselTextView;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_3

    const v1, 0x203005b

    :goto_1
    invoke-virtual {p0, v2, v1}, Lcom/htc/widget/CarouselTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 150
    if-eqz p1, :cond_2

    .line 152
    iget-object v1, p0, Lcom/htc/widget/CarouselTextView;->screenPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_1

    .line 154
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/CarouselTextView;->screenPaint:Landroid/graphics/Paint;

    .line 155
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/CarouselTextView;->screenMatrix:Landroid/graphics/ColorMatrix;

    .line 156
    iget-object v1, p0, Lcom/htc/widget/CarouselTextView;->screenMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v1}, Landroid/graphics/ColorMatrix;->reset()V

    .line 159
    :cond_1
    const/4 v0, 0x0

    .line 161
    .local v0, screenArray:[F
    iget-object v1, p0, Lcom/htc/widget/CarouselTextView;->screenMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v1}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    .line 162
    const/4 v1, 0x0

    aput v3, v0, v1

    .line 163
    const/4 v1, 0x6

    aput v3, v0, v1

    .line 164
    const/16 v1, 0xc

    aput v3, v0, v1

    .line 165
    const/16 v1, 0x12

    aput v3, v0, v1

    .line 167
    iget-object v1, p0, Lcom/htc/widget/CarouselTextView;->screenMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v1, v0}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 168
    iget-object v1, p0, Lcom/htc/widget/CarouselTextView;->screenPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v3, p0, Lcom/htc/widget/CarouselTextView;->screenMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v2, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 169
    iget-object v1, p0, Lcom/htc/widget/CarouselTextView;->screenPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 173
    .end local v0           #screenArray:[F
    :cond_2
    iput-boolean p1, p0, Lcom/htc/widget/CarouselTextView;->screenEnable:Z

    .line 174
    invoke-virtual {p0}, Lcom/htc/widget/CarouselTextView;->invalidate()V

    goto :goto_0

    .line 147
    :cond_3
    const v1, 0x203005c

    goto :goto_1
.end method

.method public enableClickMultiply(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/htc/widget/CarouselTextView;->mutiplyEnable:Z

    if-ne p1, v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 106
    :cond_0
    if-eqz p1, :cond_2

    .line 108
    iget-object v0, p0, Lcom/htc/widget/CarouselTextView;->multiplyPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 109
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/CarouselTextView;->multiplyPaint:Landroid/graphics/Paint;

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/CarouselTextView;->multiplyPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 113
    iget-object v0, p0, Lcom/htc/widget/CarouselTextView;->multiplyPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 114
    iget-object v0, p0, Lcom/htc/widget/CarouselTextView;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/htc/widget/CarouselTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x206

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    :cond_2
    iput-boolean p1, p0, Lcom/htc/widget/CarouselTextView;->mutiplyEnable:Z

    .line 119
    invoke-virtual {p0}, Lcom/htc/widget/CarouselTextView;->invalidate()V

    goto :goto_0
.end method

.method enableForceSingleLine(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/htc/widget/CarouselTextView;->forceSingleLine:Z

    .line 90
    iget-boolean v0, p0, Lcom/htc/widget/CarouselTextView;->isPortrait:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/CarouselTextView;->forceSingleLine:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselTextView;->setMaxLines(I)V

    .line 91
    return-void

    .line 90
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 308
    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/CarouselTextView;->screenBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/htc/widget/CarouselTextView;->screenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 311
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/widget/CarouselTextView;->screenBitmap:Landroid/graphics/Bitmap;

    .line 313
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 317
    .local v0, exception:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 71
    invoke-direct {p0}, Lcom/htc/widget/CarouselTextView;->setOrientation()V

    .line 72
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 288
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 291
    iget-object v0, p0, Lcom/htc/widget/CarouselTextView;->screenBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/htc/widget/CarouselTextView;->screenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/CarouselTextView;->screenBitmap:Landroid/graphics/Bitmap;

    .line 296
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/htc/widget/CarouselTextView;->mutiplyEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselTextView;->multiplyPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 263
    const/4 v7, 0x0

    .line 266
    .local v7, canvasCount:I
    iget v0, p0, Lcom/htc/widget/CarouselTextView;->mScrollX:I

    int-to-float v1, v0

    iget v0, p0, Lcom/htc/widget/CarouselTextView;->mScrollY:I

    int-to-float v2, v0

    iget v0, p0, Lcom/htc/widget/CarouselTextView;->mScrollX:I

    invoke-virtual {p0}, Lcom/htc/widget/CarouselTextView;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/htc/widget/CarouselTextView;->mScrollY:I

    invoke-virtual {p0}, Lcom/htc/widget/CarouselTextView;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v7

    .line 267
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 270
    iget-object v0, p0, Lcom/htc/widget/CarouselTextView;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 271
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 275
    .end local v7           #canvasCount:I
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "owidth"
    .parameter "oheight"

    .prologue
    const/4 v1, 0x0

    .line 213
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 216
    iget-object v0, p0, Lcom/htc/widget/CarouselTextView;->screenBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/htc/widget/CarouselTextView;->screenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 219
    iput-object v1, p0, Lcom/htc/widget/CarouselTextView;->screenBitmap:Landroid/graphics/Bitmap;

    .line 220
    iput-object v1, p0, Lcom/htc/widget/CarouselTextView;->screenCanvas:Landroid/graphics/Canvas;

    .line 222
    :cond_0
    return-void
.end method

.method public setPaintAlpha(F)V
    .locals 2
    .parameter "ratio"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/htc/widget/CarouselTextView;->multiplyPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/htc/widget/CarouselTextView;->multiplyPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 133
    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/CarouselTextView;->mutiplyEnable:Z

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/htc/widget/CarouselTextView;->invalidate()V

    .line 135
    :cond_1
    return-void
.end method

.method public setPaintScreen(F)V
    .locals 4
    .parameter "scale"

    .prologue
    .line 184
    iget-object v1, p0, Lcom/htc/widget/CarouselTextView;->screenPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/CarouselTextView;->screenMatrix:Landroid/graphics/ColorMatrix;

    if-eqz v1, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 188
    .local v0, screenArray:[F
    iget-object v1, p0, Lcom/htc/widget/CarouselTextView;->screenMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v1}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    .line 189
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 190
    const/4 v1, 0x6

    aput p1, v0, v1

    .line 191
    const/16 v1, 0xc

    aput p1, v0, v1

    .line 192
    const/16 v1, 0x12

    aput p1, v0, v1

    .line 194
    iget-object v1, p0, Lcom/htc/widget/CarouselTextView;->screenMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v1, v0}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 195
    iget-object v1, p0, Lcom/htc/widget/CarouselTextView;->screenPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v3, p0, Lcom/htc/widget/CarouselTextView;->screenMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v2, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 196
    iget-object v1, p0, Lcom/htc/widget/CarouselTextView;->screenPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 200
    .end local v0           #screenArray:[F
    :cond_0
    iget-boolean v1, p0, Lcom/htc/widget/CarouselTextView;->screenEnable:Z

    if-eqz v1, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/htc/widget/CarouselTextView;->invalidate()V

    .line 202
    :cond_1
    return-void
.end method
