.class public Lcom/htc/fragment/widget/CarouselFrameLayout;
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

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->roundRadius:I

    .line 22
    iput v1, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->color:I

    .line 23
    iput v1, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->focusWidth:I

    .line 24
    iput v1, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->removeableColor:I

    .line 25
    iput v1, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->unremoveableColor:I

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->highlightEnabled:Z

    .line 29
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->drawRect:Landroid/graphics/RectF;

    .line 30
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->drawPaint:Landroid/graphics/Paint;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->roundRadius:I

    .line 22
    iput v1, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->color:I

    .line 23
    iput v1, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->focusWidth:I

    .line 24
    iput v1, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->removeableColor:I

    .line 25
    iput v1, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->unremoveableColor:I

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->highlightEnabled:Z

    .line 29
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->drawRect:Landroid/graphics/RectF;

    .line 30
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->drawPaint:Landroid/graphics/Paint;

    .line 40
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/high16 v3, 0x4120

    .line 122
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 125
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->highlightEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->drawPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->drawRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->drawRect:Landroid/graphics/RectF;

    .line 130
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->drawRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->focusWidth:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 131
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->drawRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->focusWidth:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 132
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFrameLayout;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->focusWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 133
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFrameLayout;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->focusWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->drawRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->drawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 138
    :cond_1
    return-void
.end method

.method enableHighlight(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->highlightEnabled:Z

    if-ne v0, p1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iput-boolean p1, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->highlightEnabled:Z

    .line 71
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->highlightEnabled:Z

    if-eqz v0, :cond_0

    .line 73
    iget v0, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->focusWidth:I

    if-gez v0, :cond_2

    .line 74
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20e0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->focusWidth:I

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->drawPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->drawPaint:Landroid/graphics/Paint;

    .line 80
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->drawPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->drawPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 82
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->drawPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->drawPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->focusWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 84
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->drawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0
.end method

.method enableRemoveableColor(I)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 45
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 47
    iget v0, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->removeableColor:I

    if-gez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->mContext:Landroid/content/Context;

    const-string v2, "app_selection_highlight"

    const v3, 0x2060033

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->removeableColor:I

    .line 51
    :cond_0
    iget v0, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->removeableColor:I

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->color:I

    .line 60
    :goto_0
    return-void

    .line 55
    :cond_1
    iget v0, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->unremoveableColor:I

    if-gez v0, :cond_2

    .line 56
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2060034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->unremoveableColor:I

    .line 58
    :cond_2
    iget v0, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->unremoveableColor:I

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->color:I

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->drawRect:Landroid/graphics/RectF;

    .line 113
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFrameLayout;->drawRect:Landroid/graphics/RectF;

    .line 100
    return-void
.end method
