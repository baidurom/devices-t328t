.class public Lcom/htc/painting/engine/stroke/EraserStroke;
.super Lcom/htc/painting/engine/stroke/Stroke;
.source "EraserStroke.java"


# static fields
.field private static final METAINFO_BYTESIZE:I = 0x10

.field private static final MOTION_POINT_BYTESIZE:I = 0x8

.field private static VERSION:B

.field private static sIntBuffer:[B

.field private static sLongBuffer:[B

.field private static sShortBuffer:[B


# instance fields
.field mDirtyRect:Landroid/graphics/RectF;

.field mPaint:Landroid/graphics/Paint;

.field mSpacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    sput-byte v0, Lcom/htc/painting/engine/stroke/EraserStroke;->VERSION:B

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [B

    sput-object v0, Lcom/htc/painting/engine/stroke/EraserStroke;->sShortBuffer:[B

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [B

    sput-object v0, Lcom/htc/painting/engine/stroke/EraserStroke;->sIntBuffer:[B

    .line 34
    const/16 v0, 0x8

    new-array v0, v0, [B

    sput-object v0, Lcom/htc/painting/engine/stroke/EraserStroke;->sLongBuffer:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/htc/painting/engine/stroke/Stroke;-><init>(I)V

    .line 26
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/painting/engine/stroke/EraserStroke;->mSpacing:I

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/EraserStroke;->mDirtyRect:Landroid/graphics/RectF;

    .line 39
    invoke-direct {p0}, Lcom/htc/painting/engine/stroke/EraserStroke;->init()V

    .line 40
    return-void
.end method

.method public constructor <init>(ILcom/htc/painting/engine/StrokeProperties;)V
    .locals 1
    .parameter "id"
    .parameter "sp"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/htc/painting/engine/stroke/Stroke;-><init>(ILcom/htc/painting/engine/StrokeProperties;)V

    .line 26
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/painting/engine/stroke/EraserStroke;->mSpacing:I

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/EraserStroke;->mDirtyRect:Landroid/graphics/RectF;

    .line 44
    invoke-direct {p0}, Lcom/htc/painting/engine/stroke/EraserStroke;->init()V

    .line 45
    return-void
.end method

.method public constructor <init>(ILjava/io/ByteArrayInputStream;)V
    .locals 1
    .parameter "id"
    .parameter "is"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/htc/painting/engine/stroke/Stroke;-><init>(ILjava/io/ByteArrayInputStream;)V

    .line 26
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/painting/engine/stroke/EraserStroke;->mSpacing:I

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/EraserStroke;->mDirtyRect:Landroid/graphics/RectF;

    .line 55
    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/htc/painting/engine/stroke/EraserStroke;->prepareEraserPaint()V

    .line 59
    return-void
.end method

.method private prepareEraserPaint()V
    .locals 3

    .prologue
    .line 175
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/EraserStroke;->mPaint:Landroid/graphics/Paint;

    .line 176
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/EraserStroke;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 177
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/EraserStroke;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 179
    return-void
.end method


# virtual methods
.method public create(Ljava/util/List;)Lcom/htc/painting/engine/stroke/Stroke;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/MotionPoint;",
            ">;)",
            "Lcom/htc/painting/engine/stroke/Stroke;"
        }
    .end annotation

    .prologue
    .line 338
    .local p1, points:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/MotionPoint;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public deserialize(Ljava/io/ByteArrayInputStream;)I
    .locals 31
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    if-nez p1, :cond_0

    .line 242
    const/high16 v2, -0x8000

    .line 322
    :goto_0
    return v2

    .line 245
    :cond_0
    const/4 v2, 0x1

    new-array v10, v2, [B

    .line 246
    .local v10, byteBuffer:[B
    const/4 v2, 0x2

    new-array v0, v2, [B

    move-object/from16 v24, v0

    .line 247
    .local v24, shortBuffer:[B
    const/4 v2, 0x4

    new-array v15, v2, [B

    .line 248
    .local v15, intBuffer:[B
    const/16 v2, 0x8

    new-array v0, v2, [B

    move-object/from16 v16, v0

    .line 253
    .local v16, longBuffer:[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 254
    const/4 v2, 0x0

    aget-byte v26, v10, v2

    .line 256
    .local v26, version:B
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 257
    const/4 v2, 0x0

    aget-byte v2, v10, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mIsEffective:Z

    .line 259
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 260
    invoke-static {v15}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToInt([B)I

    move-result v20

    .line 262
    .local v20, pointsCount:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    .line 263
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    .line 265
    const/16 v17, 0x0

    .line 266
    .local v17, mPreX:F
    const/16 v18, 0x0

    .line 267
    .local v18, mPreY:F
    const-wide/16 v21, 0x0

    .line 268
    .local v21, preT:J
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    move/from16 v0, v20

    if-ge v14, v0, :cond_4

    .line 269
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 270
    invoke-static/range {v24 .. v24}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToShort([B)S

    move-result v12

    .line 272
    .local v12, deltaX:S
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 273
    invoke-static/range {v24 .. v24}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToShort([B)S

    move-result v13

    .line 275
    .local v13, deltaY:S
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 276
    invoke-static {v15}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToInt([B)I

    move-result v11

    .line 280
    .local v11, deltaTimeOffset:I
    int-to-float v2, v12

    add-float v28, v17, v2

    .line 281
    .local v28, x:F
    int-to-float v2, v13

    add-float v29, v18, v2

    .line 282
    .local v29, y:F
    int-to-long v2, v11

    add-long v8, v21, v2

    .line 283
    .local v8, t:J
    if-nez v14, :cond_2

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 292
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v30, v0

    new-instance v2, Lcom/htc/painting/engine/MotionPoint;

    move/from16 v0, v28

    float-to-int v3, v0

    move/from16 v0, v29

    float-to-int v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/htc/painting/engine/MotionPoint;-><init>(IIFFFJ)V

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    move/from16 v17, v28

    .line 295
    move/from16 v18, v29

    .line 296
    move-wide/from16 v21, v8

    .line 268
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 257
    .end local v8           #t:J
    .end local v11           #deltaTimeOffset:I
    .end local v12           #deltaX:S
    .end local v13           #deltaY:S
    .end local v14           #i:I
    .end local v17           #mPreX:F
    .end local v18           #mPreY:F
    .end local v20           #pointsCount:I
    .end local v21           #preT:J
    .end local v28           #x:F
    .end local v29           #y:F
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 285
    .restart local v8       #t:J
    .restart local v11       #deltaTimeOffset:I
    .restart local v12       #deltaX:S
    .restart local v13       #deltaY:S
    .restart local v14       #i:I
    .restart local v17       #mPreX:F
    .restart local v18       #mPreY:F
    .restart local v20       #pointsCount:I
    .restart local v21       #preT:J
    .restart local v28       #x:F
    .restart local v29       #y:F
    :cond_2
    add-int/lit8 v2, v20, -0x1

    if-ne v14, v2, :cond_3

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    .line 288
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    add-float v3, v28, v17

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float v4, v29, v18

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_3

    .line 299
    .end local v8           #t:J
    .end local v11           #deltaTimeOffset:I
    .end local v12           #deltaX:S
    .end local v13           #deltaY:S
    .end local v28           #x:F
    .end local v29           #y:F
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 300
    invoke-static {v15}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToInt([B)I

    move-result v25

    .line 301
    .local v25, strokeID:I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/stroke/EraserStroke;->setStrokeId(I)V

    .line 303
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 304
    invoke-static/range {v16 .. v16}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArraytoLong([B)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mCreationTime:J

    .line 306
    new-instance v19, Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct/range {v19 .. v19}, Lcom/htc/painting/engine/StrokeProperties;-><init>()V

    .line 308
    .local v19, p:Lcom/htc/painting/engine/StrokeProperties;
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 309
    invoke-static/range {v24 .. v24}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToShort([B)S

    move-result v27

    .line 310
    .local v27, width:I
    move/from16 v0, v27

    int-to-float v2, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/htc/painting/engine/StrokeProperties;->setWidth(F)V

    .line 312
    new-instance v23, Landroid/graphics/RectF;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/RectF;-><init>()V

    .line 313
    .local v23, r:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 314
    new-instance v2, Landroid/graphics/RectF;

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/RectF;->left:F

    div-int/lit8 v4, v27, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/RectF;->top:F

    div-int/lit8 v5, v27, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/RectF;->right:F

    div-int/lit8 v6, v27, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    div-int/lit8 v7, v27, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    .line 317
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/painting/engine/StrokeProperties;->setEraser(Z)V

    .line 319
    invoke-direct/range {p0 .. p0}, Lcom/htc/painting/engine/stroke/EraserStroke;->prepareEraserPaint()V

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/stroke/EraserStroke;->getId()I

    move-result v2

    goto/16 :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 64
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/painting/engine/stroke/EraserStroke;->draw(Landroid/graphics/Canvas;II)V

    .line 66
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;II)V
    .locals 26
    .parameter "canvas"
    .parameter "startIndex"
    .parameter "endIndex"

    .prologue
    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/stroke/EraserStroke;->getProperties()Lcom/htc/painting/engine/StrokeProperties;

    move-result-object v22

    if-eqz v22, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/stroke/EraserStroke;->getProperties()Lcom/htc/painting/engine/StrokeProperties;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/painting/engine/StrokeProperties;->getWidth()F

    move-result v22

    const/16 v23, 0x0

    cmpg-float v22, v22, v23

    if-lez v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/EraserStroke;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/stroke/EraserStroke;->getProperties()Lcom/htc/painting/engine/StrokeProperties;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/painting/engine/StrokeProperties;->getWidth()F

    move-result v10

    .local v10, h:F
    move/from16 v19, v10

    .line 96
    .local v19, w:F
    const v15, 0x7f7fffff

    .local v15, minX:F
    const v16, 0x7f7fffff

    .line 97
    .local v16, minY:F
    const v13, -0x800001

    .local v13, maxX:F
    const v14, -0x800001

    .line 99
    .local v14, maxY:F
    move/from16 v11, p2

    .local v11, i:I
    :goto_1
    move/from16 v0, p3

    if-ge v11, v0, :cond_5

    .line 101
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    if-eq v11, v0, :cond_3

    if-ltz v11, :cond_3

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v22, v0

    add-int/lit8 v23, v11, 0x1

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual/range {v22 .. v22}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual/range {v22 .. v22}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v22

    sub-int v22, v23, v22

    move/from16 v0, v22

    int-to-float v5, v0

    .line 105
    .local v5, distanceX:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v22, v0

    add-int/lit8 v23, v11, 0x1

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual/range {v22 .. v22}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual/range {v22 .. v22}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v22

    sub-int v22, v23, v22

    move/from16 v0, v22

    int-to-float v6, v0

    .line 109
    .local v6, distanceY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual/range {v22 .. v22}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v20, v0

    .line 110
    .local v20, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual/range {v22 .. v22}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v21, v0

    .line 112
    .local v21, y:F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v22

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v23

    cmpl-float v22, v22, v23

    if-ltz v22, :cond_2

    .line 113
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/painting/engine/stroke/EraserStroke;->mSpacing:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v23

    div-float v7, v22, v23

    .line 114
    .local v7, dx:F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v22

    div-float v22, v6, v22

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v23

    mul-float v8, v22, v23

    .line 115
    .local v8, dy:F
    const/4 v12, 0x0

    .local v12, j:I
    :goto_2
    int-to-float v0, v12

    move/from16 v22, v0

    div-float v23, v5, v7

    cmpg-float v22, v22, v23

    if-gez v22, :cond_4

    .line 116
    int-to-float v0, v12

    move/from16 v22, v0

    mul-float v22, v22, v7

    add-float v17, v20, v22

    .line 117
    .local v17, posX:F
    int-to-float v0, v12

    move/from16 v22, v0

    mul-float v22, v22, v8

    add-float v18, v21, v22

    .line 118
    .local v18, posY:F
    const/high16 v22, 0x4000

    div-float v22, v19, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/EraserStroke;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 120
    const/high16 v22, 0x4000

    div-float v22, v19, v22

    sub-float v22, v17, v22

    move/from16 v0, v22

    invoke-static {v15, v0}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 121
    const/high16 v22, 0x4000

    div-float v22, v19, v22

    sub-float v22, v18, v22

    move/from16 v0, v16

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 122
    const/high16 v22, 0x4000

    div-float v22, v19, v22

    add-float v22, v22, v17

    move/from16 v0, v22

    invoke-static {v13, v0}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 123
    const/high16 v22, 0x4000

    div-float v22, v19, v22

    add-float v22, v22, v18

    move/from16 v0, v22

    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 115
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 126
    .end local v7           #dx:F
    .end local v8           #dy:F
    .end local v12           #j:I
    .end local v17           #posX:F
    .end local v18           #posY:F
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/painting/engine/stroke/EraserStroke;->mSpacing:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v23

    div-float v8, v22, v23

    .line 127
    .restart local v8       #dy:F
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v22

    div-float v22, v5, v22

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v23

    mul-float v7, v22, v23

    .line 128
    .restart local v7       #dx:F
    const/4 v12, 0x0

    .restart local v12       #j:I
    :goto_3
    int-to-float v0, v12

    move/from16 v22, v0

    div-float v23, v6, v8

    cmpg-float v22, v22, v23

    if-gez v22, :cond_4

    .line 129
    int-to-float v0, v12

    move/from16 v22, v0

    mul-float v22, v22, v7

    add-float v17, v20, v22

    .line 130
    .restart local v17       #posX:F
    int-to-float v0, v12

    move/from16 v22, v0

    mul-float v22, v22, v8

    add-float v18, v21, v22

    .line 133
    .restart local v18       #posY:F
    const/high16 v22, 0x4000

    div-float v22, v19, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/EraserStroke;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 134
    const/high16 v22, 0x4000

    div-float v22, v19, v22

    sub-float v22, v17, v22

    move/from16 v0, v22

    invoke-static {v15, v0}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 135
    const/high16 v22, 0x4000

    div-float v22, v19, v22

    sub-float v22, v18, v22

    move/from16 v0, v16

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 136
    const/high16 v22, 0x4000

    div-float v22, v19, v22

    add-float v22, v22, v17

    move/from16 v0, v22

    invoke-static {v13, v0}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 137
    const/high16 v22, 0x4000

    div-float v22, v19, v22

    add-float v22, v22, v18

    move/from16 v0, v22

    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 128
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 140
    .end local v5           #distanceX:F
    .end local v6           #distanceY:F
    .end local v7           #dx:F
    .end local v8           #dy:F
    .end local v12           #j:I
    .end local v17           #posX:F
    .end local v18           #posY:F
    .end local v20           #x:F
    .end local v21           #y:F
    :cond_3
    if-ltz v11, :cond_4

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual/range {v22 .. v22}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v17

    .line 145
    .local v17, posX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual/range {v22 .. v22}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v18

    .line 147
    .local v18, posY:I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x4000

    div-float v24, v19, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/EraserStroke;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 148
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x4000

    div-float v23, v19, v23

    sub-float v22, v22, v23

    move/from16 v0, v22

    invoke-static {v15, v0}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 149
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x4000

    div-float v23, v19, v23

    sub-float v22, v22, v23

    move/from16 v0, v16

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 150
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x4000

    div-float v23, v19, v23

    add-float v22, v22, v23

    move/from16 v0, v22

    invoke-static {v13, v0}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 151
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x4000

    div-float v23, v19, v23

    add-float v22, v22, v23

    move/from16 v0, v22

    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .line 99
    .end local v17           #posX:I
    .end local v18           #posY:I
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 154
    :catch_0
    move-exception v9

    .line 155
    .local v9, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v9}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 159
    .end local v9           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/EraserStroke;->mDirtyRect:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/EraserStroke;->mDirtyRect:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput v15, v0, Landroid/graphics/RectF;->left:F

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/EraserStroke;->mDirtyRect:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move/from16 v0, v16

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/EraserStroke;->mDirtyRect:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput v13, v0, Landroid/graphics/RectF;->right:F

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/EraserStroke;->mDirtyRect:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput v14, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0
.end method

.method public getTotalBytes()I
    .locals 2

    .prologue
    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, result:I
    add-int/lit8 v0, v0, 0x10

    .line 330
    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v1, 0x10

    .line 332
    :cond_0
    return v0
.end method

.method protected onEnd(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 2
    .parameter "canvas"
    .parameter "dirtyRect"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 80
    iput-object p2, p0, Lcom/htc/painting/engine/stroke/EraserStroke;->mDirtyRect:Landroid/graphics/RectF;

    .line 81
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/painting/engine/stroke/EraserStroke;->draw(Landroid/graphics/Canvas;II)V

    .line 84
    :cond_0
    return-void
.end method

.method protected onMove(Landroid/graphics/Canvas;FFFFLandroid/graphics/RectF;)V
    .locals 2
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "size"
    .parameter "dirtyRect"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 71
    iput-object p6, p0, Lcom/htc/painting/engine/stroke/EraserStroke;->mDirtyRect:Landroid/graphics/RectF;

    .line 72
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/painting/engine/stroke/EraserStroke;->draw(Landroid/graphics/Canvas;II)V

    .line 75
    :cond_0
    return-void
.end method

.method public serialize(Ljava/io/ByteArrayOutputStream;)Z
    .locals 17
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    sget-byte v13, Lcom/htc/painting/engine/stroke/EraserStroke;->VERSION:B

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/stroke/EraserStroke;->isEffective()Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x1

    :goto_0
    int-to-byte v13, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 190
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    sget-object v14, Lcom/htc/painting/engine/stroke/EraserStroke;->sIntBuffer:[B

    invoke-static {v13, v14}, Lcom/htc/painting/engine/HtcPaintingUtil;->intToByteArray(I[B)V

    .line 191
    sget-object v13, Lcom/htc/painting/engine/stroke/EraserStroke;->sIntBuffer:[B

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 192
    const/4 v7, 0x0

    .line 193
    .local v7, preX:I
    const/4 v8, 0x0

    .line 194
    .local v8, preY:I
    const-wide/16 v5, 0x0

    .line 195
    .local v5, preT:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    if-eqz v13, :cond_4

    .line 200
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v4, v13, :cond_4

    .line 201
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v13}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v11

    .line 202
    .local v11, x:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v13}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v12

    .line 203
    .local v12, y:I
    sub-int v13, v11, v7

    const/16 v14, 0x7fff

    if-le v13, v14, :cond_1

    const/16 v1, 0x7fff

    .line 204
    .local v1, delatX:S
    :goto_2
    sub-int v13, v12, v8

    const/16 v14, 0x7fff

    if-le v13, v14, :cond_2

    const/16 v3, 0x7fff

    .line 205
    .local v3, deltaY:S
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v13}, Lcom/htc/painting/engine/MotionPoint;->getTimeOffset()J

    move-result-wide v9

    .line 206
    .local v9, t:J
    sub-long v13, v9, v5

    const-wide/32 v15, 0x7fffffff

    cmp-long v13, v13, v15

    if-lez v13, :cond_3

    const v2, 0x7fffffff

    .line 207
    .local v2, deltaTimeOffset:I
    :goto_4
    sget-object v13, Lcom/htc/painting/engine/stroke/EraserStroke;->sLongBuffer:[B

    const/4 v14, 0x0

    shr-int/lit8 v15, v1, 0x8

    int-to-byte v15, v15

    aput-byte v15, v13, v14

    .line 208
    sget-object v13, Lcom/htc/painting/engine/stroke/EraserStroke;->sLongBuffer:[B

    const/4 v14, 0x1

    int-to-byte v15, v1

    aput-byte v15, v13, v14

    .line 209
    sget-object v13, Lcom/htc/painting/engine/stroke/EraserStroke;->sLongBuffer:[B

    const/4 v14, 0x2

    shr-int/lit8 v15, v3, 0x8

    int-to-byte v15, v15

    aput-byte v15, v13, v14

    .line 210
    sget-object v13, Lcom/htc/painting/engine/stroke/EraserStroke;->sLongBuffer:[B

    const/4 v14, 0x3

    int-to-byte v15, v3

    aput-byte v15, v13, v14

    .line 211
    sget-object v13, Lcom/htc/painting/engine/stroke/EraserStroke;->sLongBuffer:[B

    const/4 v14, 0x4

    shr-int/lit8 v15, v2, 0x18

    int-to-byte v15, v15

    aput-byte v15, v13, v14

    .line 212
    sget-object v13, Lcom/htc/painting/engine/stroke/EraserStroke;->sLongBuffer:[B

    const/4 v14, 0x5

    shr-int/lit8 v15, v2, 0x10

    int-to-byte v15, v15

    aput-byte v15, v13, v14

    .line 213
    sget-object v13, Lcom/htc/painting/engine/stroke/EraserStroke;->sLongBuffer:[B

    const/4 v14, 0x6

    shr-int/lit8 v15, v2, 0x8

    int-to-byte v15, v15

    aput-byte v15, v13, v14

    .line 214
    sget-object v13, Lcom/htc/painting/engine/stroke/EraserStroke;->sLongBuffer:[B

    const/4 v14, 0x7

    int-to-byte v15, v2

    aput-byte v15, v13, v14

    .line 215
    move v7, v11

    .line 216
    move v8, v12

    .line 217
    move-wide v5, v9

    .line 218
    sget-object v13, Lcom/htc/painting/engine/stroke/EraserStroke;->sLongBuffer:[B

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 200
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 186
    .end local v1           #delatX:S
    .end local v2           #deltaTimeOffset:I
    .end local v3           #deltaY:S
    .end local v4           #i:I
    .end local v5           #preT:J
    .end local v7           #preX:I
    .end local v8           #preY:I
    .end local v9           #t:J
    .end local v11           #x:I
    .end local v12           #y:I
    :cond_0
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 203
    .restart local v4       #i:I
    .restart local v5       #preT:J
    .restart local v7       #preX:I
    .restart local v8       #preY:I
    .restart local v11       #x:I
    .restart local v12       #y:I
    :cond_1
    sub-int v13, v11, v7

    int-to-short v1, v13

    goto :goto_2

    .line 204
    .restart local v1       #delatX:S
    :cond_2
    sub-int v13, v12, v8

    int-to-short v3, v13

    goto :goto_3

    .line 206
    .restart local v3       #deltaY:S
    .restart local v9       #t:J
    :cond_3
    sub-long v13, v9, v5

    long-to-int v2, v13

    goto :goto_4

    .line 225
    .end local v1           #delatX:S
    .end local v3           #deltaY:S
    .end local v4           #i:I
    .end local v9           #t:J
    .end local v11           #x:I
    .end local v12           #y:I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/stroke/EraserStroke;->getId()I

    move-result v13

    sget-object v14, Lcom/htc/painting/engine/stroke/EraserStroke;->sIntBuffer:[B

    invoke-static {v13, v14}, Lcom/htc/painting/engine/HtcPaintingUtil;->intToByteArray(I[B)V

    .line 226
    sget-object v13, Lcom/htc/painting/engine/stroke/EraserStroke;->sIntBuffer:[B

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/stroke/EraserStroke;->getCreationTime()J

    move-result-wide v13

    sget-object v15, Lcom/htc/painting/engine/stroke/EraserStroke;->sLongBuffer:[B

    invoke-static {v13, v14, v15}, Lcom/htc/painting/engine/HtcPaintingUtil;->longToByteArray(J[B)V

    .line 230
    sget-object v13, Lcom/htc/painting/engine/stroke/EraserStroke;->sLongBuffer:[B

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 235
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v13}, Lcom/htc/painting/engine/StrokeProperties;->getWidth()F

    move-result v13

    float-to-int v13, v13

    int-to-short v13, v13

    sget-object v14, Lcom/htc/painting/engine/stroke/EraserStroke;->sShortBuffer:[B

    invoke-static {v13, v14}, Lcom/htc/painting/engine/HtcPaintingUtil;->shortToByteArray(S[B)V

    .line 236
    sget-object v13, Lcom/htc/painting/engine/stroke/EraserStroke;->sShortBuffer:[B

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 238
    const/4 v13, 0x1

    return v13
.end method

.method protected updateBoundingRect(Landroid/graphics/RectF;)V
    .locals 1
    .parameter "dirtyRect"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 172
    :cond_0
    return-void
.end method
