.class public Lcom/htc/painting/penmenu15/drawable/CircularDivider;
.super Lcom/htc/painting/penmenu15/drawable/CircularDrawable;
.source "CircularDivider.java"


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mInnerRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 2
    .parameter "ctx"
    .parameter "dividerRes"
    .parameter "deg"
    .parameter "innerRadius"

    .prologue
    .line 24
    invoke-direct {p0, p3}, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;-><init>(I)V

    .line 21
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/painting/penmenu15/drawable/CircularDivider;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 25
    iput p4, p0, Lcom/htc/painting/penmenu15/drawable/CircularDivider;->mInnerRadius:I

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 27
    .local v0, resources:Landroid/content/res/Resources;
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/painting/penmenu15/drawable/CircularDivider;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 28
    return-void
.end method


# virtual methods
.method protected drawContent(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;)V
    .locals 0
    .parameter "canvas"
    .parameter "m"
    .parameter "transformedIconOut"

    .prologue
    .line 94
    invoke-virtual {p0, p1, p3}, Lcom/htc/painting/penmenu15/drawable/CircularDivider;->drawContent(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 96
    return-void
.end method

.method protected drawContent(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 1
    .parameter "canvas"
    .parameter "transformedIconOut"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/painting/penmenu15/drawable/CircularDivider;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/htc/painting/penmenu15/drawable/CircularDivider;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 49
    :cond_0
    return-void
.end method

.method protected getIconCenter()[F
    .locals 5

    .prologue
    .line 70
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 71
    .local v0, iconCenter:[F
    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/painting/penmenu15/drawable/CircularDivider;->mInnerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mIconOutRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 72
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 73
    return-object v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5
    .parameter "bounds"

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 83
    iget-object v0, p0, Lcom/htc/painting/penmenu15/drawable/CircularDivider;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/htc/painting/penmenu15/drawable/CircularDivider;->mDivider:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mIconOutRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mIconOutRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mIconOutRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mIconOutRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 86
    :cond_0
    return-void
.end method

.method public rangeContains(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method protected setIconOutRect(Landroid/graphics/RectF;)V
    .locals 3
    .parameter "iconOutRect"

    .prologue
    const/4 v2, 0x0

    .line 57
    iget-object v0, p0, Lcom/htc/painting/penmenu15/drawable/CircularDivider;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 58
    const/high16 v0, 0x42a0

    iget-object v1, p0, Lcom/htc/painting/penmenu15/drawable/CircularDivider;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 62
    :cond_0
    return-void
.end method
