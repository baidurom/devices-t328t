.class public Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;
.super Landroid/view/View;
.source "PenHistoryBackgroundView.java"


# instance fields
.field private final SHADOW_SIZE:I

.field private mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20e00db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->SHADOW_SIZE:I

    .line 39
    return-void
.end method

.method private drawShadow(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v10, 0x0

    .line 75
    iget-object v7, p0, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    invoke-virtual {v7}, Lcom/htc/painting/penmenu/history/PenHistory;->getInnerRadius()I

    move-result v6

    .line 77
    .local v6, size:I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 78
    .local v4, shadow:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 79
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 80
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 81
    .local v3, paint:Landroid/graphics/Paint;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    const/high16 v7, -0x100

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    int-to-float v7, v6

    int-to-float v8, v6

    int-to-float v9, v6

    invoke-virtual {v0, v7, v8, v9, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 85
    new-instance v7, Landroid/graphics/BlurMaskFilter;

    iget v8, p0, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->SHADOW_SIZE:I

    int-to-float v8, v8

    sget-object v9, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v7, v8, v9}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 86
    invoke-virtual {v4, v3, v10}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 87
    .local v5, shadowImage:Landroid/graphics/Bitmap;
    iget v7, p0, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->SHADOW_SIZE:I

    add-int/2addr v7, v6

    add-int/lit8 v1, v7, -0x2

    .line 88
    .local v1, dx:I
    iget v7, p0, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->SHADOW_SIZE:I

    add-int/2addr v7, v6

    add-int/lit8 v2, v7, -0x2

    .line 89
    .local v2, dy:I
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->getWidth()I

    move-result v7

    sub-int/2addr v7, v1

    int-to-float v7, v7

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->getHeight()I

    move-result v8

    sub-int/2addr v8, v2

    int-to-float v8, v8

    invoke-virtual {p1, v5, v7, v8, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 90
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 91
    const/4 v4, 0x0

    .line 92
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 93
    const/4 v5, 0x0

    .line 94
    return-void
.end method


# virtual methods
.method public getShadowSize()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->SHADOW_SIZE:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 60
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->drawShadow(Landroid/graphics/Canvas;)V

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 63
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/history/PenHistory;->getSize()I

    move-result v0

    iget-object v1, p0, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/history/PenHistory;->getSize()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->setMeasuredDimension(II)V

    .line 48
    return-void
.end method

.method setPenHistory(Lcom/htc/painting/penmenu/history/PenHistory;)V
    .locals 0
    .parameter "penHistory"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    .line 67
    return-void
.end method
