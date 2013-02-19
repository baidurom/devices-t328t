.class public Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularPositionedDrawable.java"


# static fields
.field private static final STATE_DISABLED:I = 0x2

.field private static final STATE_PRESSED:I = 0x3

.field private static final STATE_REST:I = 0x0

.field private static final STATE_SELECTED:I = 0x1


# instance fields
.field protected mCircle:[Landroid/graphics/Bitmap;

.field private mColor:I

.field protected mDegree:I

.field private mDisabled:Z

.field protected mDist:I

.field protected mIconOutRect:Landroid/graphics/RectF;

.field private mPressed:Z

.field private mRadius:I

.field private mSelected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII[I)V
    .locals 2
    .parameter "ctx"
    .parameter "degree"
    .parameter "dist"
    .parameter "color"
    .parameter "colorRadius"
    .parameter "frames"

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mIconOutRect:Landroid/graphics/RectF;

    .line 52
    iput-boolean v1, p0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mDisabled:Z

    .line 53
    iput-boolean v1, p0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mSelected:Z

    .line 54
    iput-boolean v1, p0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mPressed:Z

    .line 62
    iput p2, p0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mDegree:I

    .line 63
    iput p3, p0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mDist:I

    .line 64
    iput p4, p0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mColor:I

    .line 65
    iput p5, p0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mRadius:I

    .line 66
    invoke-direct {p0, p1, p6}, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->setupCircle(Landroid/content/Context;[I)V

    .line 67
    return-void
.end method

.method private getDrawingState()I
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mDisabled:Z

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x2

    .line 132
    :goto_0
    return v0

    .line 127
    :cond_0
    iget-boolean v0, p0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mSelected:Z

    if-eqz v0, :cond_1

    .line 128
    const/4 v0, 0x1

    goto :goto_0

    .line 129
    :cond_1
    iget-boolean v0, p0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mPressed:Z

    if-eqz v0, :cond_2

    .line 130
    const/4 v0, 0x3

    goto :goto_0

    .line 132
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupCircle(Landroid/content/Context;[I)V
    .locals 9
    .parameter "ctx"
    .parameter "frames"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 70
    const/4 v4, 0x4

    new-array v4, v4, [Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mCircle:[Landroid/graphics/Bitmap;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 73
    .local v1, resources:Landroid/content/res/Resources;
    aget v4, p2, v6

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 74
    .local v2, rest:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    instance-of v4, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    .line 75
    iget-object v4, p0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mCircle:[Landroid/graphics/Bitmap;

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2           #rest:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v4, v6

    .line 78
    :cond_0
    aget v4, p2, v7

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 79
    .local v3, selected:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    instance-of v4, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_1

    .line 80
    iget-object v5, p0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mCircle:[Landroid/graphics/Bitmap;

    move-object v4, v3

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v5, v7

    .line 81
    iget-object v4, p0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mCircle:[Landroid/graphics/Bitmap;

    const/4 v5, 0x3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3           #selected:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v4, v5

    .line 84
    :cond_1
    aget v4, p2, v8

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 85
    .local v0, disabled:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    instance-of v4, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_2

    .line 86
    iget-object v4, p0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mCircle:[Landroid/graphics/Bitmap;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0           #disabled:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v4, v8

    .line 89
    :cond_2
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    .line 98
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 99
    .local v2, paint:Landroid/graphics/Paint;
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    const v3, -0xff01

    iget v4, p0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mDegree:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    const/16 v3, 0x32

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 103
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 106
    iget v3, p0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget-object v3, p0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mIconOutRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mIconOutRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget v5, p0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mRadius:I

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 111
    iget-object v3, p0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mCircle:[Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->getDrawingState()I

    move-result v4

    aget-object v0, v3, v4

    .line 112
    .local v0, circle:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 113
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v1, v6, v6, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 115
    .local v1, circleRect:Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mIconOutRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mIconOutRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 117
    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget v4, v1, Landroid/graphics/RectF;->top:F

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 120
    .end local v1           #circleRect:Landroid/graphics/RectF;
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 122
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 17
    .parameter "bounds"

    .prologue
    .line 170
    invoke-super/range {p0 .. p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 172
    new-instance v1, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v15

    invoke-direct {v1, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 173
    .local v1, DrawingBounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mCircle:[Landroid/graphics/Bitmap;

    if-eqz v12, :cond_0

    .line 174
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mCircle:[Landroid/graphics/Bitmap;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 175
    .local v11, width:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mCircle:[Landroid/graphics/Bitmap;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 177
    .local v8, height:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mIconOutRect:Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/4 v14, 0x0

    int-to-float v15, v11

    int-to-float v0, v8

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 179
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mDegree:I

    int-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 180
    .local v2, angle:D
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mDist:I

    int-to-double v12, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double v4, v12, v14

    .line 181
    .local v4, deltaX:D
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mDist:I

    int-to-double v12, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double v6, v12, v14

    .line 182
    .local v6, deltaY:D
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    int-to-double v12, v12

    add-double/2addr v12, v4

    double-to-int v12, v12

    div-int/lit8 v13, v11, 0x2

    sub-int v9, v12, v13

    .line 183
    .local v9, left:I
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v12

    int-to-double v12, v12

    sub-double/2addr v12, v6

    double-to-int v12, v12

    div-int/lit8 v13, v8, 0x2

    sub-int v10, v12, v13

    .line 184
    .local v10, top:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mIconOutRect:Landroid/graphics/RectF;

    int-to-float v13, v9

    int-to-float v14, v10

    invoke-virtual {v12, v13, v14}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 186
    .end local v2           #angle:D
    .end local v4           #deltaX:D
    .end local v6           #deltaY:D
    .end local v8           #height:I
    .end local v9           #left:I
    .end local v10           #top:I
    .end local v11           #width:I
    :cond_0
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2
    .parameter "state"

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mPressed:Z

    const v1, 0x10100a7

    invoke-static {p1, v1}, Lcom/htc/painting/penmenu15/util/Utilities;->contains([II)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 223
    const/4 v0, 0x1

    .line 227
    :goto_0
    return v0

    .line 224
    :cond_0
    iget-boolean v0, p0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mSelected:Z

    const v1, 0x10100a1

    invoke-static {p1, v1}, Lcom/htc/painting/penmenu15/util/Utilities;->contains([II)Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 227
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public rangeContains(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mIconOutRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 143
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 153
    return-void
.end method

.method public setPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mPressed:Z

    .line 203
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->invalidateSelf()V

    .line 204
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->mSelected:Z

    .line 194
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->invalidateSelf()V

    .line 195
    return-void
.end method
