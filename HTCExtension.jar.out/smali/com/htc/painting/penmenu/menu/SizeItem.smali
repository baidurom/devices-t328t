.class public Lcom/htc/painting/penmenu/menu/SizeItem;
.super Lcom/htc/painting/penmenu/menu/OptionItem;
.source "SizeItem.java"


# static fields
.field private static final ICON_SIZE:I = 0x31


# direct methods
.method public constructor <init>(I)V
    .locals 5
    .parameter "sizeId"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/htc/painting/penmenu/menu/OptionItem;-><init>()V

    .line 17
    iput p1, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mId:I

    .line 18
    invoke-direct {p0}, Lcom/htc/painting/penmenu/menu/SizeItem;->makeSizePlatterIcon()V

    .line 19
    invoke-direct {p0}, Lcom/htc/painting/penmenu/menu/SizeItem;->makeFocusedSizeIcon()V

    .line 21
    const-string v1, "size: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, formatString:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/menu/SizeItem;->setName(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method private makeFocusedSizeIcon()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/high16 v8, 0x4000

    .line 158
    iget v5, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mId:I

    add-int/lit8 v1, v5, 0x6

    .line 160
    .local v1, focusSize:I
    iget-object v5, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 161
    .local v4, w:I
    iget-object v5, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 162
    .local v2, h:I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mFocusedIcon:Landroid/graphics/Bitmap;

    .line 164
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 165
    .local v0, canvas:Landroid/graphics/Canvas;
    iget-object v5, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mFocusedIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 166
    iget-object v5, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mIcon:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 168
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 169
    .local v3, paint:Landroid/graphics/Paint;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 170
    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 171
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 173
    int-to-float v5, v4

    div-float/2addr v5, v8

    int-to-float v6, v2

    div-float/2addr v6, v8

    int-to-float v7, v1

    div-float/2addr v7, v8

    const/high16 v8, 0x3f80

    sub-float/2addr v7, v8

    invoke-virtual {v0, v5, v6, v7, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 174
    return-void
.end method

.method private makeSizePlatterIcon()V
    .locals 10

    .prologue
    const/high16 v9, 0x41f0

    const/high16 v8, 0x4000

    const/4 v4, 0x0

    .line 131
    const/16 v6, 0x31

    .line 132
    .local v6, iconSize:I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v6, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mIcon:Landroid/graphics/Bitmap;

    .line 133
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 134
    .local v0, canvas:Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 137
    .local v5, paint:Landroid/graphics/Paint;
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 138
    const/4 v2, -0x1

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 140
    int-to-float v2, v6

    div-float/2addr v2, v8

    int-to-float v3, v6

    div-float/2addr v3, v8

    iget v7, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mId:I

    int-to-float v7, v7

    div-float/2addr v7, v8

    invoke-virtual {v0, v2, v3, v7, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 142
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 143
    const/high16 v2, -0x100

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 146
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mId:I

    sub-int v2, v6, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mId:I

    sub-int v3, v6, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v7, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mId:I

    add-int/2addr v7, v6

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mId:I

    add-int/2addr v8, v6

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-direct {v1, v2, v3, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 148
    .local v1, oval:Landroid/graphics/RectF;
    const/high16 v2, 0x4334

    const/high16 v3, 0x42b4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 149
    const v2, -0xbbbbbc

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    const/high16 v2, 0x4387

    const/high16 v3, 0x4234

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 151
    const/high16 v2, 0x4316

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 152
    const v2, -0x333334

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    const/high16 v2, 0x42f0

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 154
    const v2, 0x439d8000

    const/high16 v3, 0x4170

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 155
    return-void
.end method


# virtual methods
.method public getAnimFrame(JI)Landroid/graphics/Bitmap;
    .locals 21
    .parameter "time"
    .parameter "colorToTint"

    .prologue
    .line 77
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/penmenu/menu/OptionItem;->mStartAnimTime:J

    move-wide/from16 v18, v0

    sub-long v15, p1, v18

    .line 78
    .local v15, interval:J
    const/16 v9, 0x1e

    .line 79
    .local v9, duration:I
    const/16 v12, 0x14

    .line 80
    .local v12, frameCount:I
    const/16 v4, 0x258

    int-to-long v0, v4

    move-wide/from16 v18, v0

    cmp-long v4, v15, v18

    if-ltz v4, :cond_0

    .line 81
    const/4 v11, 0x0

    .line 125
    :goto_0
    return-object v11

    .line 83
    :cond_0
    long-to-int v4, v15

    div-int v14, v4, v9

    .line 85
    .local v14, index:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/painting/penmenu/menu/OptionItem;->mId:I

    add-int/lit8 v10, v4, 0x6

    .line 87
    .local v10, focusSize:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/painting/penmenu/menu/OptionItem;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 88
    .local v17, w:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/painting/penmenu/menu/OptionItem;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 90
    .local v13, h:I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/painting/penmenu/menu/OptionItem;->mFocus:Z

    if-nez v4, :cond_1

    .line 91
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    invoke-static {v0, v13, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 92
    .local v11, focusedCircle:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 93
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v2, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 95
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 96
    .local v7, paint:Landroid/graphics/Paint;
    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    const/high16 v4, 0x4000

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 98
    const/4 v4, -0x1

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    sub-int v4, v12, v14

    add-int/lit8 v4, v4, -0x1

    mul-int/lit16 v4, v4, 0xff

    div-int v8, v4, v12

    .line 101
    .local v8, alpha:I
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 102
    move/from16 v0, v17

    int-to-float v4, v0

    const/high16 v6, 0x4000

    div-float/2addr v4, v6

    int-to-float v6, v13

    const/high16 v18, 0x4000

    div-float v6, v6, v18

    int-to-float v0, v10

    move/from16 v18, v0

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    const/high16 v19, 0x3f80

    sub-float v18, v18, v19

    move/from16 v0, v18

    invoke-virtual {v2, v4, v6, v0, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 106
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v7           #paint:Landroid/graphics/Paint;
    .end local v8           #alpha:I
    .end local v11           #focusedCircle:Landroid/graphics/Bitmap;
    :cond_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    invoke-static {v0, v13, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 107
    .restart local v11       #focusedCircle:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 108
    .restart local v2       #canvas:Landroid/graphics/Canvas;
    invoke-virtual {v2, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 110
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 111
    .restart local v7       #paint:Landroid/graphics/Paint;
    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 112
    const/high16 v4, 0x4000

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 113
    const/4 v4, -0x1

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 115
    mul-int/lit16 v4, v14, 0x2d0

    div-int/2addr v4, v12

    int-to-float v5, v4

    .line 116
    .local v5, angle:F
    mul-int/lit16 v4, v14, 0xff

    div-int/2addr v4, v12

    add-int/lit8 v8, v4, 0x20

    .line 117
    .restart local v8       #alpha:I
    const/16 v4, 0xff

    if-le v8, v4, :cond_2

    .line 118
    const/16 v8, 0xff

    .line 120
    :cond_2
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 121
    new-instance v3, Landroid/graphics/RectF;

    sub-int v4, v17, v10

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    const/high16 v6, 0x4000

    div-float/2addr v4, v6

    sub-int v6, v13, v10

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    const/high16 v18, 0x4000

    div-float v6, v6, v18

    add-int v18, v17, v10

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    add-int v19, v13, v10

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x4000

    div-float v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v3, v4, v6, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 123
    .local v3, oval:Landroid/graphics/RectF;
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public getOptionIcon(I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "colorForFilter"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 39
    iget-boolean v4, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mEnabled:Z

    if-nez v4, :cond_0

    .line 40
    iget-object v4, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 41
    .local v3, size:I
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 42
    .local v0, canvas:Landroid/graphics/Canvas;
    const/4 v1, 0x0

    .line 43
    .local v1, optionIcon:Landroid/graphics/Bitmap;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 45
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 46
    .local v2, paint:Landroid/graphics/Paint;
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    const/16 v4, 0x5a

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 48
    iget-object v4, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 59
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #optionIcon:Landroid/graphics/Bitmap;
    .end local v2           #paint:Landroid/graphics/Paint;
    .end local v3           #size:I
    :goto_0
    return-object v1

    .line 55
    :cond_0
    iget-boolean v4, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mFocus:Z

    if-ne v4, v6, :cond_1

    iget-boolean v4, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mStartAnim:Z

    if-nez v4, :cond_1

    .line 56
    iget-object v4, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mFocusedIcon:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mFocusedIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 59
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
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public setValidRadius(I)V
    .locals 0
    .parameter "radius"

    .prologue
    .line 30
    iput p1, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mRadius:I

    .line 31
    return-void
.end method
