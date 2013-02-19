.class public Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;
.super Lcom/htc/painting/penmenu15/drawable/CircularDrawable;
.source "CircularIconDrawable.java"


# instance fields
.field protected mIcon:Landroid/graphics/Bitmap;

.field private mInnerRadius:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 0
    .parameter "icon"
    .parameter "deg"
    .parameter "innerRadius"

    .prologue
    .line 23
    invoke-direct {p0, p2}, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;-><init>(I)V

    .line 24
    iput p3, p0, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->mInnerRadius:I

    .line 25
    iput-object p1, p0, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->mIcon:Landroid/graphics/Bitmap;

    .line 27
    return-void
.end method


# virtual methods
.method protected drawContent(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;)V
    .locals 2
    .parameter "canvas"
    .parameter "m"
    .parameter "transformedIconOut"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 95
    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v1, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 96
    iget-object v0, p0, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->mIcon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 100
    :cond_0
    return-void
.end method

.method protected getIconCenter()[F
    .locals 5

    .prologue
    .line 82
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 83
    .local v0, iconCenter:[F
    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->mInnerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mIconOutRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 84
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 85
    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public rangeContains(FF)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    const/4 v2, 0x2

    new-array v1, v2, [F

    iget-object v2, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float v2, p1, v2

    aput v2, v1, v3

    iget-object v2, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float v2, p2, v2

    aput v2, v1, v4

    .line 45
    .local v1, point:[F
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 46
    .local v0, matrix:Landroid/graphics/Matrix;
    iget v2, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mDegree:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 47
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 48
    iget-object v2, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mIconOutRect:Landroid/graphics/RectF;

    aget v3, v1, v3

    aget v4, v1, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    return v2
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->mIcon:Landroid/graphics/Bitmap;

    .line 35
    return-void
.end method

.method protected setIconOutRect(Landroid/graphics/RectF;)V
    .locals 3
    .parameter "iconOutRect"

    .prologue
    const/4 v2, 0x0

    .line 108
    iget-object v0, p0, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 110
    :cond_0
    return-void
.end method
