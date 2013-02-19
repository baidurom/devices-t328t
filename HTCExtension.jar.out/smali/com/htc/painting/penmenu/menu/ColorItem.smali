.class public Lcom/htc/painting/penmenu/menu/ColorItem;
.super Lcom/htc/painting/penmenu/menu/OptionItem;
.source "ColorItem.java"


# instance fields
.field private mFrameAnim:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(ILandroid/graphics/Bitmap;)V
    .locals 2
    .parameter "color"
    .parameter "platter"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/htc/painting/penmenu/menu/OptionItem;-><init>()V

    .line 26
    iput p1, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mId:I

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "color %d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/menu/ColorItem;->setName(Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p2}, Lcom/htc/painting/penmenu/menu/ColorItem;->makeColorPlatterIcon(Landroid/graphics/Bitmap;)V

    .line 29
    invoke-direct {p0}, Lcom/htc/painting/penmenu/menu/ColorItem;->makeFocusedColorIcon()V

    .line 30
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mRadius:I

    .line 31
    return-void
.end method

.method private makeColorPlatterIcon(Landroid/graphics/Bitmap;)V
    .locals 12
    .parameter "platter"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x3

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    .line 35
    iget v1, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mId:I

    .line 36
    .local v1, color:I
    const/4 v3, 0x6

    .line 38
    .local v3, extendSize:I
    if-eqz p1, :cond_0

    .line 39
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 40
    .local v2, colorMatrix:Landroid/graphics/ColorMatrix;
    const/16 v5, 0x14

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v9, v5, v6

    aput v8, v5, v11

    const/4 v6, 0x2

    aput v8, v5, v6

    aput v8, v5, v10

    const/4 v6, 0x4

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    const/4 v6, 0x5

    aput v8, v5, v6

    const/4 v6, 0x6

    aput v9, v5, v6

    const/4 v6, 0x7

    aput v8, v5, v6

    const/16 v6, 0x8

    aput v8, v5, v6

    const/16 v6, 0x9

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    const/16 v6, 0xa

    aput v8, v5, v6

    const/16 v6, 0xb

    aput v8, v5, v6

    const/16 v6, 0xc

    aput v9, v5, v6

    const/16 v6, 0xd

    aput v8, v5, v6

    const/16 v6, 0xe

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    const/16 v6, 0xf

    aput v8, v5, v6

    const/16 v6, 0x10

    aput v8, v5, v6

    const/16 v6, 0x11

    aput v8, v5, v6

    const/16 v6, 0x12

    aput v9, v5, v6

    const/16 v6, 0x13

    aput v8, v5, v6

    invoke-virtual {v2, v5}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/2addr v6, v3

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mIcon:Landroid/graphics/Bitmap;

    .line 48
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 49
    .local v0, canvas:Landroid/graphics/Canvas;
    iget-object v5, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 50
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 51
    .local v4, paint:Landroid/graphics/Paint;
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 53
    int-to-float v5, v10

    int-to-float v6, v10

    invoke-virtual {v0, p1, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 55
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v2           #colorMatrix:Landroid/graphics/ColorMatrix;
    .end local v4           #paint:Landroid/graphics/Paint;
    :cond_0
    return-void
.end method

.method private makeFocusedColorIcon()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/high16 v8, 0x4000

    .line 58
    iget-object v5, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 59
    .local v4, w:I
    iget-object v5, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 61
    .local v2, h:I
    add-int/lit8 v1, v4, -0x4

    .line 63
    .local v1, focusSize:I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mFocusedIcon:Landroid/graphics/Bitmap;

    .line 65
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 66
    .local v0, canvas:Landroid/graphics/Canvas;
    iget-object v5, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mFocusedIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 67
    iget-object v5, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mIcon:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 69
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 70
    .local v3, paint:Landroid/graphics/Paint;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    int-to-float v5, v4

    div-float/2addr v5, v8

    int-to-float v6, v2

    div-float/2addr v6, v8

    int-to-float v7, v1

    div-float/2addr v7, v8

    const/high16 v8, 0x3f80

    sub-float/2addr v7, v8

    invoke-virtual {v0, v5, v6, v7, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 75
    return-void
.end method


# virtual methods
.method public getAnimFrame(JI)Landroid/graphics/Bitmap;
    .locals 30
    .parameter "time"
    .parameter "colorToTint"

    .prologue
    .line 133
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/painting/penmenu/menu/OptionItem;->mFocus:Z

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/menu/ColorItem;->mFrameAnim:Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v26, v0

    if-nez v26, :cond_1

    .line 136
    const/16 v17, 0x0

    .line 242
    :cond_0
    :goto_0
    return-object v17

    .line 139
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/penmenu/menu/OptionItem;->mStartAnimTime:J

    move-wide/from16 v26, v0

    sub-long v19, p1, v26

    .line 141
    .local v19, interval:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/menu/ColorItem;->mFrameAnim:Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v21

    .line 142
    .local v21, no:I
    const/16 v18, 0x0

    .line 143
    .local v18, index:I
    const/4 v11, 0x0

    .line 144
    .local v11, duration:I
    const/4 v10, 0x0

    .line 146
    .local v10, drawable:Landroid/graphics/drawable/BitmapDrawable;
    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/menu/ColorItem;->mFrameAnim:Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v26

    add-int v11, v11, v26

    .line 148
    int-to-long v0, v11

    move-wide/from16 v26, v0

    cmp-long v26, v26, v19

    if-lez v26, :cond_3

    .line 153
    :cond_2
    const/16 v17, 0x0

    .line 154
    .local v17, icon:Landroid/graphics/Bitmap;
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/menu/ColorItem;->mFrameAnim:Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .end local v10           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    .line 158
    .restart local v10       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    new-instance v8, Landroid/graphics/ColorMatrix;

    invoke-direct {v8}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 159
    .local v8, colorMatrixL:Landroid/graphics/ColorMatrix;
    const/16 v26, 0x14

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/high16 v28, 0x3f80

    aput v28, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aput v28, v26, v27

    const/16 v27, 0x2

    const/16 v28, 0x0

    aput v28, v26, v27

    const/16 v27, 0x3

    const/16 v28, 0x0

    aput v28, v26, v27

    const/16 v27, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/painting/penmenu/menu/OptionItem;->mId:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/graphics/Color;->red(I)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    aput v28, v26, v27

    const/16 v27, 0x5

    const/16 v28, 0x0

    aput v28, v26, v27

    const/16 v27, 0x6

    const/high16 v28, 0x3f80

    aput v28, v26, v27

    const/16 v27, 0x7

    const/16 v28, 0x0

    aput v28, v26, v27

    const/16 v27, 0x8

    const/16 v28, 0x0

    aput v28, v26, v27

    const/16 v27, 0x9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/painting/penmenu/menu/OptionItem;->mId:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/graphics/Color;->green(I)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    aput v28, v26, v27

    const/16 v27, 0xa

    const/16 v28, 0x0

    aput v28, v26, v27

    const/16 v27, 0xb

    const/16 v28, 0x0

    aput v28, v26, v27

    const/16 v27, 0xc

    const/high16 v28, 0x3f80

    aput v28, v26, v27

    const/16 v27, 0xd

    const/16 v28, 0x0

    aput v28, v26, v27

    const/16 v27, 0xe

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/painting/penmenu/menu/OptionItem;->mId:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/graphics/Color;->blue(I)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    aput v28, v26, v27

    const/16 v27, 0xf

    const/16 v28, 0x0

    aput v28, v26, v27

    const/16 v27, 0x10

    const/16 v28, 0x0

    aput v28, v26, v27

    const/16 v27, 0x11

    const/16 v28, 0x0

    aput v28, v26, v27

    const/16 v27, 0x12

    const/high16 v28, 0x3f80

    aput v28, v26, v27

    const/16 v27, 0x13

    const/16 v28, 0x0

    aput v28, v26, v27

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 165
    new-instance v7, Landroid/graphics/ColorMatrix;

    invoke-direct {v7}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 166
    .local v7, colorMatrixD:Landroid/graphics/ColorMatrix;
    const/16 v26, 0x14

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    fill-array-data v26, :array_0

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 172
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/painting/penmenu/menu/OptionItem;->mId:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/menu/ColorItem;->getOptionIcon(I)Landroid/graphics/Bitmap;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    .line 173
    .local v25, w:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/painting/penmenu/menu/OptionItem;->mId:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/menu/ColorItem;->getOptionIcon(I)Landroid/graphics/Bitmap;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .line 174
    .local v16, h:I
    add-int/lit8 v13, v25, -0x4

    .line 176
    .local v13, focusSize:I
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5}, Landroid/graphics/Canvas;-><init>()V

    .line 177
    .local v5, canvas:Landroid/graphics/Canvas;
    sget-object v26, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v25

    move/from16 v1, v16

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 178
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 180
    new-instance v22, Landroid/graphics/Paint;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Paint;-><init>()V

    .line 181
    .local v22, paint:Landroid/graphics/Paint;
    const/16 v26, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 183
    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v23

    .line 184
    .local v23, temp:Landroid/graphics/Bitmap;
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 185
    .local v12, dw:I
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 188
    .local v9, dh:I
    new-instance v26, Landroid/graphics/ColorMatrixColorFilter;

    move-object/from16 v0, v26

    invoke-direct {v0, v8}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 189
    sub-int v26, v25, v12

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sub-int v27, v16, v9

    div-int/lit8 v27, v27, 0x2

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v22

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 192
    sget-object v26, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v26

    invoke-static {v12, v9, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 193
    .local v24, tempD:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6}, Landroid/graphics/Canvas;-><init>()V

    .line 194
    .local v6, canvas2:Landroid/graphics/Canvas;
    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 196
    new-instance v26, Landroid/graphics/ColorMatrixColorFilter;

    move-object/from16 v0, v26

    invoke-direct {v0, v7}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 197
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v22

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 199
    const/16 v26, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 200
    new-instance v26, Landroid/graphics/PorterDuffXfermode;

    sget-object v27, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v26 .. v27}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 201
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v22

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 203
    new-instance v26, Landroid/graphics/PorterDuffXfermode;

    sget-object v27, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v26 .. v27}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 204
    sub-int v26, v25, v12

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sub-int v27, v16, v9

    div-int/lit8 v27, v27, 0x2

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v22

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 206
    const/high16 v26, 0x4000

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 207
    const/16 v26, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 208
    sget-object v26, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 209
    const/16 v26, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 210
    const/16 v26, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 212
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x4000

    div-float v26, v26, v27

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x4000

    div-float v27, v27, v28

    int-to-float v0, v13

    move/from16 v28, v0

    const/high16 v29, 0x4000

    div-float v28, v28, v29

    const/high16 v29, 0x3f80

    sub-float v28, v28, v29

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v22

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 146
    .end local v5           #canvas:Landroid/graphics/Canvas;
    .end local v6           #canvas2:Landroid/graphics/Canvas;
    .end local v7           #colorMatrixD:Landroid/graphics/ColorMatrix;
    .end local v8           #colorMatrixL:Landroid/graphics/ColorMatrix;
    .end local v9           #dh:I
    .end local v12           #dw:I
    .end local v13           #focusSize:I
    .end local v16           #h:I
    .end local v17           #icon:Landroid/graphics/Bitmap;
    .end local v22           #paint:Landroid/graphics/Paint;
    .end local v23           #temp:Landroid/graphics/Bitmap;
    .end local v24           #tempD:Landroid/graphics/Bitmap;
    .end local v25           #w:I
    :cond_3
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 217
    .end local v10           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v11           #duration:I
    .end local v18           #index:I
    .end local v19           #interval:J
    .end local v21           #no:I
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/penmenu/menu/OptionItem;->mStartAnimTime:J

    move-wide/from16 v26, v0

    sub-long v19, p1, v26

    .line 218
    .restart local v19       #interval:J
    const/16 v11, 0x1e

    .line 219
    .restart local v11       #duration:I
    const/16 v15, 0x14

    .line 220
    .local v15, frameCount:I
    const/16 v26, 0x258

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    cmp-long v26, v19, v26

    if-ltz v26, :cond_5

    .line 221
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 223
    :cond_5
    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v26, v0

    div-int v18, v26, v11

    .line 225
    .restart local v18       #index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/menu/OptionItem;->mIcon:Landroid/graphics/Bitmap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    .line 226
    .restart local v25       #w:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/menu/OptionItem;->mIcon:Landroid/graphics/Bitmap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .line 227
    .restart local v16       #h:I
    add-int/lit8 v13, v25, -0x4

    .line 229
    .restart local v13       #focusSize:I
    sget-object v26, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v25

    move/from16 v1, v16

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 230
    .local v14, focusedCircle:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5}, Landroid/graphics/Canvas;-><init>()V

    .line 231
    .restart local v5       #canvas:Landroid/graphics/Canvas;
    invoke-virtual {v5, v14}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 233
    new-instance v22, Landroid/graphics/Paint;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Paint;-><init>()V

    .line 234
    .restart local v22       #paint:Landroid/graphics/Paint;
    const/16 v26, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 235
    const/high16 v26, 0x4000

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 236
    const/16 v26, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    sget-object v26, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 238
    sub-int v26, v15, v18

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    mul-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    div-int v4, v26, v15

    .line 239
    .local v4, alpha:I
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 240
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x4000

    div-float v26, v26, v27

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x4000

    div-float v27, v27, v28

    int-to-float v0, v13

    move/from16 v28, v0

    const/high16 v29, 0x4000

    div-float v28, v28, v29

    const/high16 v29, 0x3f80

    sub-float v28, v28, v29

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v22

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move-object/from16 v17, v14

    .line 242
    goto/16 :goto_0

    .line 166
    :array_0
    .array-data 0x4
        0xat 0xd7t 0x23t 0x3ct
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xat 0xd7t 0x23t 0x3ct
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xat 0xd7t 0x23t 0x3ct
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc3t 0xf5t 0xa8t 0xbet
        0xc3t 0xf5t 0xa8t 0xbet
        0xc3t 0xf5t 0xa8t 0xbet
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x4ct 0x42t
    .end array-data
.end method

.method public getOptionIcon(I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "colorForFilter"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 91
    iget-boolean v4, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mEnabled:Z

    if-nez v4, :cond_0

    .line 92
    iget-object v4, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 93
    .local v3, size:I
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 94
    .local v0, canvas:Landroid/graphics/Canvas;
    const/4 v1, 0x0

    .line 95
    .local v1, optionIcon:Landroid/graphics/Bitmap;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 97
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 98
    .local v2, paint:Landroid/graphics/Paint;
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 99
    const/16 v4, 0x33

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 101
    iget-object v4, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 112
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #optionIcon:Landroid/graphics/Bitmap;
    .end local v2           #paint:Landroid/graphics/Paint;
    .end local v3           #size:I
    :goto_0
    return-object v1

    .line 108
    :cond_0
    iget-boolean v4, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mFocus:Z

    if-ne v4, v6, :cond_1

    iget-boolean v4, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mStartAnim:Z

    if-nez v4, :cond_1

    .line 109
    iget-object v4, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mFocusedIcon:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mFocusedIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 112
    :cond_1
    iget-object v4, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mIcon:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public isPlayAnim(Z)Z
    .locals 1
    .parameter "focused"

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 253
    invoke-super {p0}, Lcom/htc/painting/penmenu/menu/OptionItem;->release()V

    .line 254
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/ColorItem;->mFrameAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/ColorItem;->mFrameAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 256
    iput-object v1, p0, Lcom/htc/painting/penmenu/menu/ColorItem;->mFrameAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 258
    :cond_0
    return-void
.end method

.method public setAnimationDrawable(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0
    .parameter "frameAnim"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/htc/painting/penmenu/menu/ColorItem;->mFrameAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 83
    return-void
.end method
