.class public Lcom/htc/painting/engine/stroke/HtcPenStroke;
.super Lcom/htc/painting/engine/stroke/Stroke;
.source "HtcPenStroke.java"


# static fields
.field private static final METAINFO_BYTESIZE:I = 0x2a

.field private static final MOTION_POINT_BYTESIZE:I = 0xc

.field private static final TAG:Ljava/lang/String; = "PenStroke"

.field private static VERSION:B

.field private static sIntBuffer:[B

.field private static sLongBuffer:[B

.field private static sPointBuffer:[B

.field private static sShortBuffer:[B


# instance fields
.field mEngine:Lcom/htc/painting/engine/render/IRenderEngine;

.field mPen:Lcom/htc/painting/tool/pen/Pen;

.field private mPenName:Ljava/lang/String;

.field private mPenPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    sput-byte v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->VERSION:B

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [B

    sput-object v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sShortBuffer:[B

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [B

    sput-object v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sIntBuffer:[B

    .line 40
    const/16 v0, 0x8

    new-array v0, v0, [B

    sput-object v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sLongBuffer:[B

    .line 41
    const/16 v0, 0xc

    new-array v0, v0, [B

    sput-object v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sPointBuffer:[B

    return-void
.end method

.method public constructor <init>(ILcom/htc/painting/tool/pen/Pen;Lcom/htc/painting/engine/StrokeProperties;)V
    .locals 2
    .parameter "id"
    .parameter "pen"
    .parameter "properties"

    .prologue
    .line 48
    invoke-direct {p0, p1, p3}, Lcom/htc/painting/engine/stroke/Stroke;-><init>(ILcom/htc/painting/engine/StrokeProperties;)V

    .line 50
    iput-object p2, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mPen:Lcom/htc/painting/tool/pen/Pen;

    .line 51
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mPen:Lcom/htc/painting/tool/pen/Pen;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p2}, Lcom/htc/painting/tool/pen/Pen;->getRenderEngine()Lcom/htc/painting/engine/render/IRenderEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mEngine:Lcom/htc/painting/engine/render/IRenderEngine;

    .line 53
    invoke-virtual {p2}, Lcom/htc/painting/tool/pen/Pen;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mPenPackageName:Ljava/lang/String;

    .line 54
    invoke-virtual {p2}, Lcom/htc/painting/tool/pen/Pen;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mPenName:Ljava/lang/String;

    .line 59
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string v0, "PenStroke"

    const-string v1, "mPen is null, please check PenProvider"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private constructor <init>(ILcom/htc/painting/tool/pen/Pen;Lcom/htc/painting/engine/StrokeProperties;Ljava/util/List;)V
    .locals 14
    .parameter "id"
    .parameter "pen"
    .parameter "properties"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/htc/painting/tool/pen/Pen;",
            "Lcom/htc/painting/engine/StrokeProperties;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/MotionPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 399
    .local p4, points:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/MotionPoint;>;"
    invoke-direct/range {p0 .. p3}, Lcom/htc/painting/engine/stroke/HtcPenStroke;-><init>(ILcom/htc/painting/tool/pen/Pen;Lcom/htc/painting/engine/StrokeProperties;)V

    .line 400
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v0, p4

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v9, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    .line 401
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    iput-object v9, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    .line 403
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 405
    .local v5, rect:Landroid/graphics/RectF;
    const/4 v2, 0x0

    .line 406
    .local v2, mPreX:F
    const/4 v3, 0x0

    .line 407
    .local v3, mPreY:F
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v6

    .line 408
    .local v6, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_3

    .line 409
    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v9}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v9

    int-to-float v7, v9

    .line 410
    .local v7, x:F
    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v9}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v9

    int-to-float v8, v9

    .line 411
    .local v8, y:F
    if-nez v1, :cond_1

    .line 412
    iget-object v9, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 419
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/htc/painting/engine/StrokeProperties;->getWidth()F

    move-result v9

    const/high16 v10, 0x4000

    div-float v4, v9, v10

    .line 420
    .local v4, radius:F
    new-instance v9, Landroid/graphics/RectF;

    sub-float v10, v7, v4

    sub-float v11, v8, v4

    add-float v12, v7, v4

    add-float v13, v8, v4

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v9}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 423
    iget-object v9, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPathMeasure:Landroid/graphics/PathMeasure;

    if-eqz v9, :cond_0

    .line 425
    iget-object v9, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPathMeasure:Landroid/graphics/PathMeasure;

    iget-object v10, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 426
    iget-object v9, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v9}, Landroid/graphics/PathMeasure;->getLength()F

    .line 427
    iget-object v9, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/painting/engine/MotionPoint;

    iget-object v10, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v10}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v10

    invoke-virtual {v9, v10}, Lcom/htc/painting/engine/MotionPoint;->setDistance(F)V

    .line 430
    :cond_0
    move v2, v7

    .line 431
    move v3, v8

    .line 408
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 413
    .end local v4           #radius:F
    :cond_1
    add-int/lit8 v9, v6, -0x1

    if-ne v1, v9, :cond_2

    .line 414
    iget-object v9, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 416
    :cond_2
    iget-object v9, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    add-float v10, v7, v2

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    add-float v11, v8, v3

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    invoke-virtual {v9, v2, v3, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_1

    .line 433
    .end local v7           #x:F
    .end local v8           #y:F
    :cond_3
    iput-object v5, p0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    .line 434
    return-void
.end method

.method public constructor <init>(ILjava/io/ByteArrayInputStream;)V
    .locals 0
    .parameter "id"
    .parameter "is"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/htc/painting/engine/stroke/Stroke;-><init>(ILjava/io/ByteArrayInputStream;)V

    .line 45
    return-void
.end method


# virtual methods
.method public create(Ljava/util/List;)Lcom/htc/painting/engine/stroke/Stroke;
    .locals 4
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
    .line 438
    .local p1, points:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/MotionPoint;>;"
    new-instance v1, Lcom/htc/painting/engine/StrokeProperties;

    iget-object v2, p0, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v1, v2}, Lcom/htc/painting/engine/StrokeProperties;-><init>(Lcom/htc/painting/engine/StrokeProperties;)V

    .line 439
    .local v1, sp:Lcom/htc/painting/engine/StrokeProperties;
    new-instance v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;

    iget v2, p0, Lcom/htc/painting/engine/stroke/Stroke;->mId:I

    iget-object v3, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mPen:Lcom/htc/painting/tool/pen/Pen;

    invoke-direct {v0, v2, v3, v1, p1}, Lcom/htc/painting/engine/stroke/HtcPenStroke;-><init>(ILcom/htc/painting/tool/pen/Pen;Lcom/htc/painting/engine/StrokeProperties;Ljava/util/List;)V

    .line 440
    .local v0, s:Lcom/htc/painting/engine/stroke/HtcPenStroke;
    return-object v0
.end method

.method public deserialize(Ljava/io/ByteArrayInputStream;)I
    .locals 44
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    if-nez p1, :cond_0

    .line 257
    const/high16 v2, -0x8000

    .line 395
    :goto_0
    return v2

    .line 260
    :cond_0
    const/4 v2, 0x1

    new-array v11, v2, [B

    .line 261
    .local v11, byteBuffer:[B
    const/4 v2, 0x2

    new-array v0, v2, [B

    move-object/from16 v35, v0

    .line 262
    .local v35, shortBuffer:[B
    const/4 v2, 0x4

    new-array v0, v2, [B

    move-object/from16 v18, v0

    .line 263
    .local v18, intBuffer:[B
    const/16 v2, 0x8

    new-array v0, v2, [B

    move-object/from16 v20, v0

    .line 268
    .local v20, longBuffer:[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 269
    const/4 v2, 0x0

    aget-byte v39, v11, v2

    .line 271
    .local v39, version:B
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 272
    const/4 v2, 0x0

    aget-byte v2, v11, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mIsEffective:Z

    .line 274
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 275
    invoke-static/range {v18 .. v18}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToInt([B)I

    move-result v28

    .line 277
    .local v28, pointsCount:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    .line 278
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    .line 281
    const/16 v21, 0x0

    .line 282
    .local v21, mPreX:F
    const/16 v22, 0x0

    .line 284
    .local v22, mPreY:F
    const/16 v29, 0x0

    .line 285
    .local v29, preD:F
    const-wide/16 v30, 0x0

    .line 287
    .local v30, preT:J
    const/16 v17, 0x0

    .local v17, i:I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v28

    if-ge v0, v1, :cond_4

    .line 288
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 289
    invoke-static/range {v35 .. v35}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToShort([B)S

    move-result v15

    .line 291
    .local v15, deltaX:S
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 292
    invoke-static/range {v35 .. v35}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToShort([B)S

    move-result v16

    .line 294
    .local v16, deltaY:S
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 295
    invoke-static/range {v35 .. v35}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToShort([B)S

    move-result v32

    .line 297
    .local v32, pressure:S
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 298
    invoke-static/range {v35 .. v35}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToShort([B)S

    move-result v13

    .line 300
    .local v13, deltaDistance:S
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 301
    invoke-static/range {v18 .. v18}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToInt([B)I

    move-result v14

    .line 306
    .local v14, deltaTimeOffset:I
    int-to-float v2, v15

    add-float v41, v21, v2

    .line 307
    .local v41, x:F
    move/from16 v0, v16

    int-to-float v2, v0

    add-float v42, v22, v2

    .line 308
    .local v42, y:F
    int-to-float v2, v13

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    add-float v7, v29, v2

    .line 309
    .local v7, d:F
    int-to-long v2, v14

    add-long v8, v30, v2

    .line 310
    .local v8, t:J
    if-nez v17, :cond_2

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    move/from16 v0, v41

    move/from16 v1, v42

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 322
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v43, v0

    new-instance v2, Lcom/htc/painting/engine/MotionPoint;

    move/from16 v0, v41

    float-to-int v3, v0

    move/from16 v0, v42

    float-to-int v4, v0

    move/from16 v0, v32

    int-to-float v5, v0

    const/high16 v6, 0x437f

    div-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/htc/painting/engine/MotionPoint;-><init>(IIFFFJ)V

    move-object/from16 v0, v43

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    move/from16 v21, v41

    .line 326
    move/from16 v22, v42

    .line 327
    move/from16 v29, v7

    .line 328
    move-wide/from16 v30, v8

    .line 287
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 272
    .end local v7           #d:F
    .end local v8           #t:J
    .end local v13           #deltaDistance:S
    .end local v14           #deltaTimeOffset:I
    .end local v15           #deltaX:S
    .end local v16           #deltaY:S
    .end local v17           #i:I
    .end local v21           #mPreX:F
    .end local v22           #mPreY:F
    .end local v28           #pointsCount:I
    .end local v29           #preD:F
    .end local v30           #preT:J
    .end local v32           #pressure:S
    .end local v41           #x:F
    .end local v42           #y:F
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 312
    .restart local v7       #d:F
    .restart local v8       #t:J
    .restart local v13       #deltaDistance:S
    .restart local v14       #deltaTimeOffset:I
    .restart local v15       #deltaX:S
    .restart local v16       #deltaY:S
    .restart local v17       #i:I
    .restart local v21       #mPreX:F
    .restart local v22       #mPreY:F
    .restart local v28       #pointsCount:I
    .restart local v29       #preD:F
    .restart local v30       #preT:J
    .restart local v32       #pressure:S
    .restart local v41       #x:F
    .restart local v42       #y:F
    :cond_2
    add-int/lit8 v2, v28, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_3

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    move/from16 v0, v41

    move/from16 v1, v42

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    .line 315
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    add-float v3, v41, v21

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float v4, v42, v22

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_3

    .line 335
    .end local v7           #d:F
    .end local v8           #t:J
    .end local v13           #deltaDistance:S
    .end local v14           #deltaTimeOffset:I
    .end local v15           #deltaX:S
    .end local v16           #deltaY:S
    .end local v32           #pressure:S
    .end local v41           #x:F
    .end local v42           #y:F
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 336
    invoke-static/range {v35 .. v35}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToShort([B)S

    move-result v25

    .line 338
    .local v25, packageNameLength:S
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 339
    invoke-static/range {v35 .. v35}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToShort([B)S

    move-result v27

    .line 341
    .local v27, penNameLength:S
    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v24, v0

    .line 342
    .local v24, packageNameBytes:[B
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 343
    new-instance v2, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mPenPackageName:Ljava/lang/String;

    .line 344
    const/16 v24, 0x0

    .line 346
    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v26, v0

    .line 347
    .local v26, penNameBytes:[B
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 348
    new-instance v2, Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mPenName:Ljava/lang/String;

    .line 349
    const/16 v26, 0x0

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mPenPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mPenName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/htc/painting/util/PenHelper;->queryPen(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/painting/tool/pen/Pen;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mPen:Lcom/htc/painting/tool/pen/Pen;

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mPen:Lcom/htc/painting/tool/pen/Pen;

    if-eqz v2, :cond_5

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mPen:Lcom/htc/painting/tool/pen/Pen;

    invoke-virtual {v2}, Lcom/htc/painting/tool/pen/Pen;->getRenderEngine()Lcom/htc/painting/engine/render/IRenderEngine;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mEngine:Lcom/htc/painting/engine/render/IRenderEngine;

    .line 355
    :cond_5
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 356
    invoke-static/range {v18 .. v18}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToInt([B)I

    move-result v36

    .line 357
    .local v36, strokeID:I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/stroke/HtcPenStroke;->setStrokeId(I)V

    .line 359
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 360
    invoke-static/range {v20 .. v20}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArraytoLong([B)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mCreationTime:J

    .line 363
    new-instance v23, Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct/range {v23 .. v23}, Lcom/htc/painting/engine/StrokeProperties;-><init>()V

    .line 365
    .local v23, p:Lcom/htc/painting/engine/StrokeProperties;
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 366
    invoke-static/range {v35 .. v35}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToShort([B)S

    move-result v40

    .line 367
    .local v40, width:I
    move/from16 v0, v40

    int-to-float v2, v0

    const/high16 v3, 0x42c8

    div-float v37, v2, v3

    .line 368
    .local v37, strokeWidth:F
    move-object/from16 v0, v23

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/StrokeProperties;->setWidth(F)V

    .line 370
    new-instance v33, Landroid/graphics/RectF;

    invoke-direct/range {v33 .. v33}, Landroid/graphics/RectF;-><init>()V

    .line 372
    .local v33, r:Landroid/graphics/RectF;
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 373
    invoke-static/range {v18 .. v18}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToInt([B)I

    move-result v19

    .line 374
    .local v19, left:I
    move/from16 v0, v19

    int-to-float v2, v0

    move-object/from16 v0, v33

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 376
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 377
    invoke-static/range {v18 .. v18}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToInt([B)I

    move-result v38

    .line 378
    .local v38, top:I
    move/from16 v0, v38

    int-to-float v2, v0

    move-object/from16 v0, v33

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 380
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 381
    invoke-static/range {v18 .. v18}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToInt([B)I

    move-result v34

    .line 382
    .local v34, right:I
    move/from16 v0, v34

    int-to-float v2, v0

    move-object/from16 v0, v33

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 384
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 385
    invoke-static/range {v18 .. v18}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToInt([B)I

    move-result v10

    .line 386
    .local v10, bottom:I
    int-to-float v2, v10

    move-object/from16 v0, v33

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 388
    new-instance v2, Landroid/graphics/RectF;

    move-object/from16 v0, v33

    invoke-direct {v2, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    .line 390
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 391
    invoke-static/range {v18 .. v18}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToInt([B)I

    move-result v12

    .line 392
    .local v12, color:I
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/htc/painting/engine/StrokeProperties;->setColor(I)V

    .line 394
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/stroke/HtcPenStroke;->getId()I

    move-result v2

    goto/16 :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mEngine:Lcom/htc/painting/engine/render/IRenderEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 64
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 65
    .local v5, dirtyRect:Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mEngine:Lcom/htc/painting/engine/render/IRenderEngine;

    invoke-interface {v0, p0}, Lcom/htc/painting/engine/render/IRenderEngine;->startRender(Lcom/htc/painting/engine/stroke/Stroke;)V

    .line 66
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mEngine:Lcom/htc/painting/engine/render/IRenderEngine;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    move-object v1, p1

    move-object v2, p0

    invoke-interface/range {v0 .. v5}, Lcom/htc/painting/engine/render/IRenderEngine;->render(Landroid/graphics/Canvas;Lcom/htc/painting/engine/stroke/Stroke;IILandroid/graphics/RectF;)V

    .line 67
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mEngine:Lcom/htc/painting/engine/render/IRenderEngine;

    invoke-interface {v0, p0}, Lcom/htc/painting/engine/render/IRenderEngine;->endRender(Lcom/htc/painting/engine/stroke/Stroke;)V

    .line 71
    .end local v5           #dirtyRect:Landroid/graphics/RectF;
    :goto_0
    return-void

    .line 69
    :cond_0
    const-string v0, "PenStroke"

    const-string v1, "mEngine is null or data is empty"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;II)V
    .locals 6
    .parameter "canvas"
    .parameter "startIndex"
    .parameter "endIndex"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mEngine:Lcom/htc/painting/engine/render/IRenderEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 77
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 78
    .local v5, dirtyRect:Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mEngine:Lcom/htc/painting/engine/render/IRenderEngine;

    invoke-interface {v0, p0}, Lcom/htc/painting/engine/render/IRenderEngine;->startRender(Lcom/htc/painting/engine/stroke/Stroke;)V

    .line 79
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mEngine:Lcom/htc/painting/engine/render/IRenderEngine;

    move-object v1, p1

    move-object v2, p0

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/painting/engine/render/IRenderEngine;->render(Landroid/graphics/Canvas;Lcom/htc/painting/engine/stroke/Stroke;IILandroid/graphics/RectF;)V

    .line 80
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mEngine:Lcom/htc/painting/engine/render/IRenderEngine;

    invoke-interface {v0, p0}, Lcom/htc/painting/engine/render/IRenderEngine;->endRender(Lcom/htc/painting/engine/stroke/Stroke;)V

    .line 84
    .end local v5           #dirtyRect:Landroid/graphics/RectF;
    :goto_0
    return-void

    .line 82
    :cond_0
    const-string v0, "PenStroke"

    const-string v1, "mEngine is null or data is empty"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getTotalBytes()I
    .locals 2

    .prologue
    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, result:I
    add-int/lit8 v0, v0, 0x2a

    .line 250
    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0xc

    add-int/lit8 v0, v1, 0x2a

    .line 252
    :cond_0
    return v0
.end method

.method protected onEnd(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 6
    .parameter "canvas"
    .parameter "dirtyRect"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mEngine:Lcom/htc/painting/engine/render/IRenderEngine;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mEngine:Lcom/htc/painting/engine/render/IRenderEngine;

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v3, v1, -0x2

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    move-object v1, p1

    move-object v2, p0

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/htc/painting/engine/render/IRenderEngine;->render(Landroid/graphics/Canvas;Lcom/htc/painting/engine/stroke/Stroke;IILandroid/graphics/RectF;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mEngine:Lcom/htc/painting/engine/render/IRenderEngine;

    invoke-interface {v0, p0}, Lcom/htc/painting/engine/render/IRenderEngine;->endRender(Lcom/htc/painting/engine/stroke/Stroke;)V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_1
    const-string v0, "PenStroke"

    const-string v1, "mEngine is null"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onMove(Landroid/graphics/Canvas;FFFFLandroid/graphics/RectF;)V
    .locals 6
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "size"
    .parameter "dirtyRect"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mEngine:Lcom/htc/painting/engine/render/IRenderEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mEngine:Lcom/htc/painting/engine/render/IRenderEngine;

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v3, v1, -0x2

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    move-object v1, p1

    move-object v2, p0

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/htc/painting/engine/render/IRenderEngine;->render(Landroid/graphics/Canvas;Lcom/htc/painting/engine/stroke/Stroke;IILandroid/graphics/RectF;)V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    const-string v0, "PenStroke"

    const-string v1, "mEngine is null or data is empty"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStart(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 2
    .parameter "canvas"
    .parameter "dirtyRect"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mEngine:Lcom/htc/painting/engine/render/IRenderEngine;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mEngine:Lcom/htc/painting/engine/render/IRenderEngine;

    invoke-interface {v0, p0}, Lcom/htc/painting/engine/render/IRenderEngine;->startRender(Lcom/htc/painting/engine/stroke/Stroke;)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string v0, "PenStroke"

    const-string v1, "mEngine is null"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public serialize(Ljava/io/ByteArrayOutputStream;)Z
    .locals 27
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 132
    const/16 v23, 0x0

    .line 242
    :goto_0
    return v23

    .line 143
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v23, v0

    if-nez v23, :cond_1

    .line 144
    const/16 v23, 0x0

    goto :goto_0

    .line 147
    :cond_1
    sget-byte v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->VERSION:B

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/stroke/HtcPenStroke;->isEffective()Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v23, 0x1

    :goto_1
    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    sget-object v24, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sIntBuffer:[B

    invoke-static/range {v23 .. v24}, Lcom/htc/painting/engine/HtcPaintingUtil;->intToByteArray(I[B)V

    .line 154
    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sIntBuffer:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 156
    const/16 v17, 0x0

    .line 157
    .local v17, preX:I
    const/16 v18, 0x0

    .line 158
    .local v18, preY:I
    const/4 v14, 0x0

    .line 159
    .local v14, preD:F
    const-wide/16 v15, 0x0

    .line 160
    .local v15, preT:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    .line 165
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v8, v0, :cond_7

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual/range {v23 .. v23}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v21

    .line 167
    .local v21, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual/range {v23 .. v23}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v22

    .line 168
    .local v22, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual/range {v23 .. v23}, Lcom/htc/painting/engine/MotionPoint;->getActionPressure()F

    move-result v9

    .line 169
    .local v9, p:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual/range {v23 .. v23}, Lcom/htc/painting/engine/MotionPoint;->getDistance()F

    move-result v3

    .line 170
    .local v3, d:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual/range {v23 .. v23}, Lcom/htc/painting/engine/MotionPoint;->getTimeOffset()J

    move-result-wide v19

    .line 171
    .local v19, t:J
    sub-int v23, v21, v17

    const/16 v24, 0x7fff

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_3

    const/16 v4, 0x7fff

    .line 172
    .local v4, delatX:S
    :goto_3
    sub-int v23, v22, v18

    const/16 v24, 0x7fff

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_4

    const/16 v7, 0x7fff

    .line 173
    .local v7, deltaY:S
    :goto_4
    sub-float v23, v3, v14

    const/high16 v24, 0x42c8

    mul-float v23, v23, v24

    const v24, 0x46fffe00

    cmpl-float v23, v23, v24

    if-lez v23, :cond_5

    const/16 v5, 0x7fff

    .line 174
    .local v5, deltaDistance:S
    :goto_5
    sub-long v23, v19, v15

    const-wide/32 v25, 0x7fffffff

    cmp-long v23, v23, v25

    if-lez v23, :cond_6

    const v6, 0x7fffffff

    .line 176
    .local v6, deltaTimeOffset:I
    :goto_6
    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sPointBuffer:[B

    const/16 v24, 0x0

    shr-int/lit8 v25, v4, 0x8

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 177
    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sPointBuffer:[B

    const/16 v24, 0x1

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 178
    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sPointBuffer:[B

    const/16 v24, 0x2

    shr-int/lit8 v25, v7, 0x8

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 179
    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sPointBuffer:[B

    const/16 v24, 0x3

    int-to-byte v0, v7

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 180
    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sPointBuffer:[B

    const/16 v24, 0x4

    const/high16 v25, 0x437f

    mul-float v25, v25, v9

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    shr-int/lit8 v25, v25, 0x8

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 181
    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sPointBuffer:[B

    const/16 v24, 0x5

    const/high16 v25, 0x437f

    mul-float v25, v25, v9

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 182
    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sPointBuffer:[B

    const/16 v24, 0x6

    shr-int/lit8 v25, v5, 0x8

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 183
    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sPointBuffer:[B

    const/16 v24, 0x7

    int-to-byte v0, v5

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 184
    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sPointBuffer:[B

    const/16 v24, 0x8

    shr-int/lit8 v25, v6, 0x18

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 185
    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sPointBuffer:[B

    const/16 v24, 0x9

    shr-int/lit8 v25, v6, 0x10

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 186
    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sPointBuffer:[B

    const/16 v24, 0xa

    shr-int/lit8 v25, v6, 0x8

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 187
    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sPointBuffer:[B

    const/16 v24, 0xb

    int-to-byte v0, v6

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 188
    move/from16 v17, v21

    .line 189
    move/from16 v18, v22

    .line 190
    int-to-float v0, v5

    move/from16 v23, v0

    const/high16 v24, 0x42c8

    div-float v23, v23, v24

    add-float v14, v14, v23

    .line 191
    move-wide/from16 v15, v19

    .line 193
    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sPointBuffer:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 165
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 149
    .end local v3           #d:F
    .end local v4           #delatX:S
    .end local v5           #deltaDistance:S
    .end local v6           #deltaTimeOffset:I
    .end local v7           #deltaY:S
    .end local v8           #i:I
    .end local v9           #p:F
    .end local v14           #preD:F
    .end local v15           #preT:J
    .end local v17           #preX:I
    .end local v18           #preY:I
    .end local v19           #t:J
    .end local v21           #x:I
    .end local v22           #y:I
    :cond_2
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 171
    .restart local v3       #d:F
    .restart local v8       #i:I
    .restart local v9       #p:F
    .restart local v14       #preD:F
    .restart local v15       #preT:J
    .restart local v17       #preX:I
    .restart local v18       #preY:I
    .restart local v19       #t:J
    .restart local v21       #x:I
    .restart local v22       #y:I
    :cond_3
    sub-int v23, v21, v17

    move/from16 v0, v23

    int-to-short v4, v0

    goto/16 :goto_3

    .line 172
    .restart local v4       #delatX:S
    :cond_4
    sub-int v23, v22, v18

    move/from16 v0, v23

    int-to-short v7, v0

    goto/16 :goto_4

    .line 173
    .restart local v7       #deltaY:S
    :cond_5
    sub-float v23, v3, v14

    const/high16 v24, 0x42c8

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-short v5, v0

    goto/16 :goto_5

    .line 174
    .restart local v5       #deltaDistance:S
    :cond_6
    sub-long v23, v19, v15

    move-wide/from16 v0, v23

    long-to-int v6, v0

    goto/16 :goto_6

    .line 200
    .end local v3           #d:F
    .end local v4           #delatX:S
    .end local v5           #deltaDistance:S
    .end local v7           #deltaY:S
    .end local v8           #i:I
    .end local v9           #p:F
    .end local v19           #t:J
    .end local v21           #x:I
    .end local v22           #y:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mPenPackageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 201
    .local v10, packageNameBytes:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mPenName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    .line 202
    .local v12, penNameBytes:[B
    array-length v0, v10

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-short v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/htc/painting/engine/HtcPaintingUtil;->shortToByteArray(S)[B

    move-result-object v11

    .line 204
    .local v11, packageNameLengthBytes:[B
    array-length v0, v12

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-short v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/htc/painting/engine/HtcPaintingUtil;->shortToByteArray(S)[B

    move-result-object v13

    .line 207
    .local v13, penNameLengthBytes:[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 208
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 209
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 210
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/stroke/HtcPenStroke;->getId()I

    move-result v23

    sget-object v24, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sIntBuffer:[B

    invoke-static/range {v23 .. v24}, Lcom/htc/painting/engine/HtcPaintingUtil;->intToByteArray(I[B)V

    .line 214
    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sIntBuffer:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/stroke/HtcPenStroke;->getCreationTime()J

    move-result-wide v23

    sget-object v25, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sLongBuffer:[B

    invoke-static/range {v23 .. v25}, Lcom/htc/painting/engine/HtcPaintingUtil;->longToByteArray(J[B)V

    .line 218
    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sLongBuffer:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/painting/engine/StrokeProperties;->getWidth()F

    move-result v23

    const/high16 v24, 0x42c8

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-short v0, v0

    move/from16 v23, v0

    sget-object v24, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sShortBuffer:[B

    invoke-static/range {v23 .. v24}, Lcom/htc/painting/engine/HtcPaintingUtil;->shortToByteArray(S[B)V

    .line 223
    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sShortBuffer:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    const/high16 v24, 0x3f00

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    sget-object v24, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sIntBuffer:[B

    invoke-static/range {v23 .. v24}, Lcom/htc/painting/engine/HtcPaintingUtil;->intToByteArray(I[B)V

    .line 227
    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sIntBuffer:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    const/high16 v24, 0x3f00

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    sget-object v24, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sIntBuffer:[B

    invoke-static/range {v23 .. v24}, Lcom/htc/painting/engine/HtcPaintingUtil;->intToByteArray(I[B)V

    .line 230
    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sIntBuffer:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    const/high16 v24, 0x3f00

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    sget-object v24, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sIntBuffer:[B

    invoke-static/range {v23 .. v24}, Lcom/htc/painting/engine/HtcPaintingUtil;->intToByteArray(I[B)V

    .line 233
    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sIntBuffer:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    const/high16 v24, 0x3f00

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    sget-object v24, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sIntBuffer:[B

    invoke-static/range {v23 .. v24}, Lcom/htc/painting/engine/HtcPaintingUtil;->intToByteArray(I[B)V

    .line 236
    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sIntBuffer:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/painting/engine/StrokeProperties;->getColor()I

    move-result v2

    .line 239
    .local v2, color:I
    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sIntBuffer:[B

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Lcom/htc/painting/engine/HtcPaintingUtil;->intToByteArray(I[B)V

    .line 240
    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sIntBuffer:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 242
    const/16 v23, 0x1

    goto/16 :goto_0
.end method

.method protected updateBoundingRect(Landroid/graphics/RectF;)V
    .locals 1
    .parameter "dirtyRect"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 124
    :cond_0
    return-void
.end method
