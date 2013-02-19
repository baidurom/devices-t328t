.class public Lcom/htc/widget/CanvasClipper;
.super Ljava/lang/Object;
.source "CanvasClipper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CanvasClipper"


# instance fields
.field private mAntialiasPaint:Landroid/graphics/Paint;

.field private mBottomRoundedEnabled:Z

.field private mCanvasSaveCount:I

.field private mCornerAntiAliased:Z

.field private mCornerPath:Landroid/graphics/Path;

.field private mCornerStrokeColor:I

.field private mCornerStrokeWidth:I

.field private mRadius:I

.field private mRoundedCornerEnabled:Z

.field private mTopRoundedEnabled:Z

.field private tmpRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/CanvasClipper;->mCornerPath:Landroid/graphics/Path;

    .line 19
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/widget/CanvasClipper;->mRadius:I

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/CanvasClipper;->mCanvasSaveCount:I

    .line 21
    iput-boolean v1, p0, Lcom/htc/widget/CanvasClipper;->mRoundedCornerEnabled:Z

    .line 22
    iput-boolean v1, p0, Lcom/htc/widget/CanvasClipper;->mTopRoundedEnabled:Z

    .line 23
    iput-boolean v1, p0, Lcom/htc/widget/CanvasClipper;->mBottomRoundedEnabled:Z

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/CanvasClipper;->mCornerAntiAliased:Z

    .line 25
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/widget/CanvasClipper;->mCornerStrokeWidth:I

    .line 26
    const v0, 0x7fb3b3b3

    iput v0, p0, Lcom/htc/widget/CanvasClipper;->mCornerStrokeColor:I

    .line 30
    return-void
.end method


# virtual methods
.method public antialiasCorners(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/htc/widget/CanvasClipper;->mRoundedCornerEnabled:Z

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0, p1}, Lcom/htc/widget/CanvasClipper;->restoreCanvas(Landroid/graphics/Canvas;)V

    .line 215
    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/CanvasClipper;->mCornerAntiAliased:Z

    if-nez v0, :cond_1

    .line 232
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/CanvasClipper;->mAntialiasPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 218
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/CanvasClipper;->mAntialiasPaint:Landroid/graphics/Paint;

    .line 219
    iget-object v0, p0, Lcom/htc/widget/CanvasClipper;->mAntialiasPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 220
    iget-object v0, p0, Lcom/htc/widget/CanvasClipper;->mAntialiasPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/CanvasClipper;->mAntialiasPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    iget v1, p0, Lcom/htc/widget/CanvasClipper;->mCornerStrokeWidth:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 224
    iget-object v0, p0, Lcom/htc/widget/CanvasClipper;->mAntialiasPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/widget/CanvasClipper;->mCornerStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 227
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/CanvasClipper;->mAntialiasPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/CanvasClipper;->mCornerStrokeColor:I

    if-eq v0, v1, :cond_4

    .line 228
    iget-object v0, p0, Lcom/htc/widget/CanvasClipper;->mAntialiasPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/widget/CanvasClipper;->mCornerStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 231
    :cond_4
    iget-object v0, p0, Lcom/htc/widget/CanvasClipper;->mCornerPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/htc/widget/CanvasClipper;->mAntialiasPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public clipCanvas(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 9
    .parameter "canvas"
    .parameter "view"

    .prologue
    .line 167
    iget-boolean v4, p0, Lcom/htc/widget/CanvasClipper;->mRoundedCornerEnabled:Z

    if-eqz v4, :cond_2

    .line 168
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    iput v4, p0, Lcom/htc/widget/CanvasClipper;->mCanvasSaveCount:I

    .line 169
    iget-object v4, p0, Lcom/htc/widget/CanvasClipper;->mCornerPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 170
    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v1

    .line 171
    .local v1, cLeft:I
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v2, v4, v5

    .line 172
    .local v2, cRight:I
    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result v3

    .line 173
    .local v3, cTop:I
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v0, v4, v5

    .line 175
    .local v0, cBottom:I
    iget-boolean v4, p0, Lcom/htc/widget/CanvasClipper;->mTopRoundedEnabled:Z

    if-nez v4, :cond_0

    .line 176
    iget v4, p0, Lcom/htc/widget/CanvasClipper;->mRadius:I

    sub-int/2addr v3, v4

    .line 179
    :cond_0
    iget-boolean v4, p0, Lcom/htc/widget/CanvasClipper;->mBottomRoundedEnabled:Z

    if-nez v4, :cond_1

    .line 180
    iget v4, p0, Lcom/htc/widget/CanvasClipper;->mRadius:I

    add-int/2addr v0, v4

    .line 183
    :cond_1
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v1

    int-to-float v6, v3

    int-to-float v7, v2

    int-to-float v8, v0

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/htc/widget/CanvasClipper;->tmpRectF:Landroid/graphics/RectF;

    .line 184
    iget-object v4, p0, Lcom/htc/widget/CanvasClipper;->mCornerPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/htc/widget/CanvasClipper;->tmpRectF:Landroid/graphics/RectF;

    iget v6, p0, Lcom/htc/widget/CanvasClipper;->mRadius:I

    int-to-float v6, v6

    iget v7, p0, Lcom/htc/widget/CanvasClipper;->mRadius:I

    int-to-float v7, v7

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 186
    iget-object v4, p0, Lcom/htc/widget/CanvasClipper;->mCornerPath:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 188
    .end local v0           #cBottom:I
    .end local v1           #cLeft:I
    .end local v2           #cRight:I
    .end local v3           #cTop:I
    :cond_2
    return-void
.end method

.method public getCornerRadius()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/htc/widget/CanvasClipper;->mRadius:I

    return v0
.end method

.method public isBottomCornerRounded()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/htc/widget/CanvasClipper;->mBottomRoundedEnabled:Z

    return v0
.end method

.method public isRoundedCornerEnabled()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/htc/widget/CanvasClipper;->mRoundedCornerEnabled:Z

    return v0
.end method

.method public isTopCornerRounded()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/htc/widget/CanvasClipper;->mTopRoundedEnabled:Z

    return v0
.end method

.method public restoreCanvas(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    const/4 v1, -0x1

    .line 198
    iget v0, p0, Lcom/htc/widget/CanvasClipper;->mCanvasSaveCount:I

    if-ne v0, v1, :cond_0

    .line 199
    const-string v0, "CanvasClipper"

    const-string v1, "Cannot restore canvas, lose count!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    iget v0, p0, Lcom/htc/widget/CanvasClipper;->mCanvasSaveCount:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 203
    iput v1, p0, Lcom/htc/widget/CanvasClipper;->mCanvasSaveCount:I

    goto :goto_0
.end method

.method public setCornerAntiAliased(Z)V
    .locals 0
    .parameter "aa"

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/htc/widget/CanvasClipper;->mCornerAntiAliased:Z

    .line 160
    return-void
.end method

.method public setCornerRadius(I)V
    .locals 0
    .parameter "radius"

    .prologue
    .line 104
    iput p1, p0, Lcom/htc/widget/CanvasClipper;->mRadius:I

    .line 105
    return-void
.end method

.method public setCornerStrokeColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 145
    iput p1, p0, Lcom/htc/widget/CanvasClipper;->mCornerStrokeColor:I

    .line 146
    return-void
.end method

.method public setCornerStrokeWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 127
    iput p1, p0, Lcom/htc/widget/CanvasClipper;->mCornerStrokeWidth:I

    .line 128
    return-void
.end method

.method public setRoundedCornerEnabled(Z)V
    .locals 2
    .parameter "roundCorner"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/htc/widget/CanvasClipper;->mRoundedCornerEnabled:Z

    .line 42
    if-eqz p1, :cond_0

    .line 43
    iput-boolean v1, p0, Lcom/htc/widget/CanvasClipper;->mTopRoundedEnabled:Z

    .line 44
    iput-boolean v1, p0, Lcom/htc/widget/CanvasClipper;->mBottomRoundedEnabled:Z

    .line 49
    :goto_0
    return-void

    .line 46
    :cond_0
    iput-boolean v0, p0, Lcom/htc/widget/CanvasClipper;->mTopRoundedEnabled:Z

    .line 47
    iput-boolean v0, p0, Lcom/htc/widget/CanvasClipper;->mBottomRoundedEnabled:Z

    goto :goto_0
.end method

.method public setRoundedCornerEnabled(ZZ)V
    .locals 1
    .parameter "topRoundCorners"
    .parameter "bottomRoundCorners"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/htc/widget/CanvasClipper;->mTopRoundedEnabled:Z

    .line 62
    iput-boolean p2, p0, Lcom/htc/widget/CanvasClipper;->mBottomRoundedEnabled:Z

    .line 63
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 64
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/CanvasClipper;->mRoundedCornerEnabled:Z

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/CanvasClipper;->mRoundedCornerEnabled:Z

    goto :goto_0
.end method
