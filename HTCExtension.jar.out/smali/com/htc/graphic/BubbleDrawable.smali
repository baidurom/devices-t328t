.class public Lcom/htc/graphic/BubbleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BubbleDrawable.java"


# instance fields
.field mBody:Landroid/graphics/drawable/Drawable;

.field mBodyBounds:Landroid/graphics/Rect;

.field mGravity:I

.field mOffset:I

.field mTriangle:Landroid/graphics/drawable/Drawable;

.field mTriangleBounds:Landroid/graphics/Rect;

.field mTrianglePadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2080182

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/graphic/BubbleDrawable;->mBody:Landroid/graphics/drawable/Drawable;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2080125

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/graphic/BubbleDrawable;->mTriangle:Landroid/graphics/drawable/Drawable;

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/graphic/BubbleDrawable;->mBodyBounds:Landroid/graphics/Rect;

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/graphic/BubbleDrawable;->mTriangleBounds:Landroid/graphics/Rect;

    .line 35
    const/16 v0, 0x30

    iput v0, p0, Lcom/htc/graphic/BubbleDrawable;->mGravity:I

    .line 36
    iget-object v0, p0, Lcom/htc/graphic/BubbleDrawable;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    iput v0, p0, Lcom/htc/graphic/BubbleDrawable;->mTrianglePadding:I

    .line 37
    return-void
.end method

.method private setBodyDrawableGravity(I)V
    .locals 6
    .parameter "mGravity"

    .prologue
    const/4 v2, 0x0

    .line 185
    iput p1, p0, Lcom/htc/graphic/BubbleDrawable;->mGravity:I

    .line 187
    invoke-virtual {p0}, Lcom/htc/graphic/BubbleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 189
    .local v0, bounds:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/htc/graphic/BubbleDrawable;->mBodyBounds:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/16 v1, 0x30

    and-int/lit8 v5, p1, 0x30

    if-ne v1, v5, :cond_1

    iget v1, p0, Lcom/htc/graphic/BubbleDrawable;->mTrianglePadding:I

    :goto_0
    add-int/2addr v1, v4

    iput v1, v3, Landroid/graphics/Rect;->top:I

    .line 190
    iget-object v3, p0, Lcom/htc/graphic/BubbleDrawable;->mBodyBounds:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    const/16 v1, 0x50

    and-int/lit8 v5, p1, 0x50

    if-ne v1, v5, :cond_2

    iget v1, p0, Lcom/htc/graphic/BubbleDrawable;->mTrianglePadding:I

    :goto_1
    sub-int v1, v4, v1

    iput v1, v3, Landroid/graphics/Rect;->bottom:I

    .line 191
    iget-object v3, p0, Lcom/htc/graphic/BubbleDrawable;->mBodyBounds:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x3

    and-int/lit8 v5, p1, 0x3

    if-ne v1, v5, :cond_3

    iget v1, p0, Lcom/htc/graphic/BubbleDrawable;->mTrianglePadding:I

    :goto_2
    add-int/2addr v1, v4

    iput v1, v3, Landroid/graphics/Rect;->left:I

    .line 192
    iget-object v1, p0, Lcom/htc/graphic/BubbleDrawable;->mBodyBounds:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->right:I

    const/4 v4, 0x5

    and-int/lit8 v5, p1, 0x5

    if-ne v4, v5, :cond_0

    iget v2, p0, Lcom/htc/graphic/BubbleDrawable;->mTrianglePadding:I

    :cond_0
    sub-int v2, v3, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 193
    iget-object v1, p0, Lcom/htc/graphic/BubbleDrawable;->mBody:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/htc/graphic/BubbleDrawable;->mBodyBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 194
    return-void

    :cond_1
    move v1, v2

    .line 189
    goto :goto_0

    :cond_2
    move v1, v2

    .line 190
    goto :goto_1

    :cond_3
    move v1, v2

    .line 191
    goto :goto_2
.end method

.method private setTriangleBounds()V
    .locals 5

    .prologue
    const/16 v4, 0x30

    .line 197
    invoke-virtual {p0}, Lcom/htc/graphic/BubbleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 199
    .local v0, bounds:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/htc/graphic/BubbleDrawable;->mTriangleBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/htc/graphic/BubbleDrawable;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 200
    iget-object v1, p0, Lcom/htc/graphic/BubbleDrawable;->mTriangleBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/htc/graphic/BubbleDrawable;->mTriangleBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/htc/graphic/BubbleDrawable;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 201
    iget-object v2, p0, Lcom/htc/graphic/BubbleDrawable;->mTriangleBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/htc/graphic/BubbleDrawable;->mGravity:I

    and-int/lit8 v1, v1, 0x30

    if-ne v4, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/graphic/BubbleDrawable;->getOffset()I

    move-result v1

    neg-int v1, v1

    :goto_0
    add-int/2addr v1, v3

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 202
    iget-object v2, p0, Lcom/htc/graphic/BubbleDrawable;->mTriangleBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/htc/graphic/BubbleDrawable;->mGravity:I

    and-int/lit8 v1, v1, 0x30

    if-ne v4, v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/graphic/BubbleDrawable;->getOffset()I

    move-result v1

    neg-int v1, v1

    :goto_1
    add-int/2addr v1, v3

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 203
    iget-object v1, p0, Lcom/htc/graphic/BubbleDrawable;->mTriangleBounds:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 204
    iget-object v1, p0, Lcom/htc/graphic/BubbleDrawable;->mTriangleBounds:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/htc/graphic/BubbleDrawable;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 206
    iget-object v1, p0, Lcom/htc/graphic/BubbleDrawable;->mTriangle:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/htc/graphic/BubbleDrawable;->mTriangleBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 207
    return-void

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/htc/graphic/BubbleDrawable;->getOffset()I

    move-result v1

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/htc/graphic/BubbleDrawable;->getOffset()I

    move-result v1

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 60
    iget-object v0, p0, Lcom/htc/graphic/BubbleDrawable;->mBody:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 62
    const/16 v0, 0x50

    invoke-virtual {p0}, Lcom/htc/graphic/BubbleDrawable;->getGravity()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 63
    const/high16 v0, 0x4334

    invoke-virtual {p0}, Lcom/htc/graphic/BubbleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/htc/graphic/BubbleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 71
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/graphic/BubbleDrawable;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 75
    return-void

    .line 64
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/htc/graphic/BubbleDrawable;->getGravity()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 65
    const/high16 v0, -0x3d4c

    invoke-virtual {p0}, Lcom/htc/graphic/BubbleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/htc/graphic/BubbleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_0

    .line 66
    :cond_2
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/htc/graphic/BubbleDrawable;->getGravity()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 67
    const/high16 v0, 0x42b4

    invoke-virtual {p0}, Lcom/htc/graphic/BubbleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/htc/graphic/BubbleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/htc/graphic/BubbleDrawable;->mGravity:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/htc/graphic/BubbleDrawable;->mOffset:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 5
    .parameter "padding"

    .prologue
    const/4 v2, 0x0

    .line 145
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 147
    .local v0, r:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/htc/graphic/BubbleDrawable;->mBody:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 149
    iget v3, v0, Landroid/graphics/Rect;->top:I

    const/16 v1, 0x30

    iget v4, p0, Lcom/htc/graphic/BubbleDrawable;->mGravity:I

    and-int/lit8 v4, v4, 0x30

    if-ne v1, v4, :cond_1

    iget v1, p0, Lcom/htc/graphic/BubbleDrawable;->mTrianglePadding:I

    :goto_0
    add-int/2addr v1, v3

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 150
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    const/16 v1, 0x50

    iget v4, p0, Lcom/htc/graphic/BubbleDrawable;->mGravity:I

    and-int/lit8 v4, v4, 0x50

    if-ne v1, v4, :cond_2

    iget v1, p0, Lcom/htc/graphic/BubbleDrawable;->mTrianglePadding:I

    :goto_1
    add-int/2addr v1, v3

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 151
    iget v3, v0, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x3

    iget v4, p0, Lcom/htc/graphic/BubbleDrawable;->mGravity:I

    and-int/lit8 v4, v4, 0x3

    if-ne v1, v4, :cond_3

    iget v1, p0, Lcom/htc/graphic/BubbleDrawable;->mTrianglePadding:I

    :goto_2
    add-int/2addr v1, v3

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 152
    iget v1, v0, Landroid/graphics/Rect;->right:I

    const/4 v3, 0x5

    iget v4, p0, Lcom/htc/graphic/BubbleDrawable;->mGravity:I

    and-int/lit8 v4, v4, 0x5

    if-ne v3, v4, :cond_0

    iget v2, p0, Lcom/htc/graphic/BubbleDrawable;->mTrianglePadding:I

    :cond_0
    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 154
    const/4 v1, 0x1

    return v1

    :cond_1
    move v1, v2

    .line 149
    goto :goto_0

    :cond_2
    move v1, v2

    .line 150
    goto :goto_1

    :cond_3
    move v1, v2

    .line 151
    goto :goto_2
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "bounds"

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 130
    invoke-virtual {p0}, Lcom/htc/graphic/BubbleDrawable;->getGravity()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/graphic/BubbleDrawable;->setBodyDrawableGravity(I)V

    .line 131
    invoke-direct {p0}, Lcom/htc/graphic/BubbleDrawable;->setTriangleBounds()V

    .line 132
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/graphic/BubbleDrawable;->mBody:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 101
    iget-object v0, p0, Lcom/htc/graphic/BubbleDrawable;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 102
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/graphic/BubbleDrawable;->mBody:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 115
    iget-object v0, p0, Lcom/htc/graphic/BubbleDrawable;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 116
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "mGravity"

    .prologue
    .line 176
    iput p1, p0, Lcom/htc/graphic/BubbleDrawable;->mGravity:I

    .line 177
    invoke-virtual {p0}, Lcom/htc/graphic/BubbleDrawable;->getGravity()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/graphic/BubbleDrawable;->setBodyDrawableGravity(I)V

    .line 178
    invoke-virtual {p0}, Lcom/htc/graphic/BubbleDrawable;->invalidateSelf()V

    .line 179
    return-void
.end method

.method public setOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 231
    iput p1, p0, Lcom/htc/graphic/BubbleDrawable;->mOffset:I

    .line 233
    invoke-direct {p0}, Lcom/htc/graphic/BubbleDrawable;->setTriangleBounds()V

    .line 234
    invoke-virtual {p0}, Lcom/htc/graphic/BubbleDrawable;->invalidateSelf()V

    .line 235
    return-void
.end method
