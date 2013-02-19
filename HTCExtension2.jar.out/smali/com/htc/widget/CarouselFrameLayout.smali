.class public Lcom/htc/widget/CarouselFrameLayout;
.super Landroid/widget/FrameLayout;
.source "CarouselFrameLayout.java"


# instance fields
.field private color:I

.field private drawPaint:Landroid/graphics/Paint;

.field private drawRect:Landroid/graphics/RectF;

.field private focusWidth:I

.field private highlightEnabled:Z

.field private removeableColor:I

.field private final roundRadius:I

.field private unremoveableColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 19
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/widget/CarouselFrameLayout;->roundRadius:I

    .line 21
    iput v1, p0, Lcom/htc/widget/CarouselFrameLayout;->color:I

    .line 22
    iput v1, p0, Lcom/htc/widget/CarouselFrameLayout;->focusWidth:I

    .line 23
    iput v1, p0, Lcom/htc/widget/CarouselFrameLayout;->removeableColor:I

    .line 24
    iput v1, p0, Lcom/htc/widget/CarouselFrameLayout;->unremoveableColor:I

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/CarouselFrameLayout;->highlightEnabled:Z

    .line 28
    iput-object v2, p0, Lcom/htc/widget/CarouselFrameLayout;->drawRect:Landroid/graphics/RectF;

    .line 29
    iput-object v2, p0, Lcom/htc/widget/CarouselFrameLayout;->drawPaint:Landroid/graphics/Paint;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/widget/CarouselFrameLayout;->roundRadius:I

    .line 21
    iput v1, p0, Lcom/htc/widget/CarouselFrameLayout;->color:I

    .line 22
    iput v1, p0, Lcom/htc/widget/CarouselFrameLayout;->focusWidth:I

    .line 23
    iput v1, p0, Lcom/htc/widget/CarouselFrameLayout;->removeableColor:I

    .line 24
    iput v1, p0, Lcom/htc/widget/CarouselFrameLayout;->unremoveableColor:I

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/CarouselFrameLayout;->highlightEnabled:Z

    .line 28
    iput-object v2, p0, Lcom/htc/widget/CarouselFrameLayout;->drawRect:Landroid/graphics/RectF;

    .line 29
    iput-object v2, p0, Lcom/htc/widget/CarouselFrameLayout;->drawPaint:Landroid/graphics/Paint;

    .line 39
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/high16 v3, 0x4120

    .line 121
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 124
    iget-boolean v0, p0, Lcom/htc/widget/CarouselFrameLayout;->highlightEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/CarouselFrameLayout;->drawPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/htc/widget/CarouselFrameLayout;->drawRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/CarouselFrameLayout;->drawRect:Landroid/graphics/RectF;

    .line 129
    iget-object v0, p0, Lcom/htc/widget/CarouselFrameLayout;->drawRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/htc/widget/CarouselFrameLayout;->focusWidth:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 130
    iget-object v0, p0, Lcom/htc/widget/CarouselFrameLayout;->drawRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/htc/widget/CarouselFrameLayout;->focusWidth:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 131
    iget-object v0, p0, Lcom/htc/widget/CarouselFrameLayout;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/widget/CarouselFrameLayout;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/htc/widget/CarouselFrameLayout;->focusWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 132
    iget-object v0, p0, Lcom/htc/widget/CarouselFrameLayout;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/widget/CarouselFrameLayout;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/htc/widget/CarouselFrameLayout;->focusWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselFrameLayout;->drawRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/htc/widget/CarouselFrameLayout;->drawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 137
    :cond_1
    return-void
.end method

.method enableHighlight(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/htc/widget/CarouselFrameLayout;->highlightEnabled:Z

    if-ne v0, p1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iput-boolean p1, p0, Lcom/htc/widget/CarouselFrameLayout;->highlightEnabled:Z

    .line 70
    iget-boolean v0, p0, Lcom/htc/widget/CarouselFrameLayout;->highlightEnabled:Z

    if-eqz v0, :cond_0

    .line 72
    iget v0, p0, Lcom/htc/widget/CarouselFrameLayout;->focusWidth:I

    if-gez v0, :cond_2

    .line 73
    invoke-virtual {p0}, Lcom/htc/widget/CarouselFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20e0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/CarouselFrameLayout;->focusWidth:I

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/CarouselFrameLayout;->drawPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/CarouselFrameLayout;->drawPaint:Landroid/graphics/Paint;

    .line 79
    iget-object v0, p0, Lcom/htc/widget/CarouselFrameLayout;->drawPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/widget/CarouselFrameLayout;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object v0, p0, Lcom/htc/widget/CarouselFrameLayout;->drawPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 81
    iget-object v0, p0, Lcom/htc/widget/CarouselFrameLayout;->drawPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    iget-object v0, p0, Lcom/htc/widget/CarouselFrameLayout;->drawPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/widget/CarouselFrameLayout;->focusWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 83
    iget-object v0, p0, Lcom/htc/widget/CarouselFrameLayout;->drawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0
.end method

.method enableRemoveableColor(I)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 44
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 46
    iget v0, p0, Lcom/htc/widget/CarouselFrameLayout;->removeableColor:I

    if-gez v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/htc/widget/CarouselFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/CarouselFrameLayout;->mContext:Landroid/content/Context;

    const-string v2, "app_selection_highlight"

    const v3, 0x2060033

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/CarouselFrameLayout;->removeableColor:I

    .line 50
    :cond_0
    iget v0, p0, Lcom/htc/widget/CarouselFrameLayout;->removeableColor:I

    iput v0, p0, Lcom/htc/widget/CarouselFrameLayout;->color:I

    .line 59
    :goto_0
    return-void

    .line 54
    :cond_1
    iget v0, p0, Lcom/htc/widget/CarouselFrameLayout;->unremoveableColor:I

    if-gez v0, :cond_2

    .line 55
    invoke-virtual {p0}, Lcom/htc/widget/CarouselFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2060034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/CarouselFrameLayout;->unremoveableColor:I

    .line 57
    :cond_2
    iget v0, p0, Lcom/htc/widget/CarouselFrameLayout;->unremoveableColor:I

    iput v0, p0, Lcom/htc/widget/CarouselFrameLayout;->color:I

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/CarouselFrameLayout;->drawRect:Landroid/graphics/RectF;

    .line 112
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/CarouselFrameLayout;->drawRect:Landroid/graphics/RectF;

    .line 99
    return-void
.end method
