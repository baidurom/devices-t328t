.class public Lcom/htc/painting/engine/StrokeGroup;
.super Ljava/lang/Object;
.source "StrokeGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/engine/StrokeGroup$SelectMode;
    }
.end annotation


# static fields
.field private static final ERASER_STROKE_ID:I = 0x2

.field private static final HTC_PEN_STROKE_ID:I = 0x4

.field private static final SIMPLE_STROKE_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "StrokeGroup"


# instance fields
.field private mIsEffective:Z

.field private mLockObject:Ljava/lang/Object;

.field private volatile mModifiedIndex:J

.field mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

.field mPen:Lcom/htc/painting/tool/pen/Pen;

.field private volatile mSerializedIndex:J

.field private mStrokeGroupId:I

.field private mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

.field private mStrokeSerialNumber:I

.field private mStrokes:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/htc/painting/engine/stroke/Stroke;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpMatrix:Landroid/graphics/Matrix;

.field private mViewPort:Lcom/htc/painting/engine/ViewPort;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mIsEffective:Z

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    .line 44
    iput-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mLockObject:Ljava/lang/Object;

    .line 50
    const v0, -0x7fffffff

    iput v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    .line 55
    iput-wide v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mModifiedIndex:J

    .line 56
    iput-wide v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mSerializedIndex:J

    .line 57
    new-instance v0, Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v0}, Lcom/htc/painting/engine/StrokeProperties;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    .line 64
    iput-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mPen:Lcom/htc/painting/tool/pen/Pen;

    .line 66
    iput-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    .line 75
    return-void
.end method

.method constructor <init>(ILcom/htc/painting/engine/ViewPort;)V
    .locals 4
    .parameter "id"
    .parameter "viewport"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mIsEffective:Z

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    .line 44
    iput-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mLockObject:Ljava/lang/Object;

    .line 50
    const v0, -0x7fffffff

    iput v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    .line 55
    iput-wide v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mModifiedIndex:J

    .line 56
    iput-wide v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mSerializedIndex:J

    .line 57
    new-instance v0, Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v0}, Lcom/htc/painting/engine/StrokeProperties;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    .line 64
    iput-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mPen:Lcom/htc/painting/tool/pen/Pen;

    .line 66
    iput-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    .line 69
    iput p1, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeGroupId:I

    .line 70
    iput-object p2, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    .line 71
    return-void
.end method

.method private checkIntersect(Landroid/graphics/RectF;Lcom/htc/painting/engine/stroke/Stroke;Landroid/graphics/Matrix;)Z
    .locals 8
    .parameter "canvasBound"
    .parameter "s"
    .parameter "matrix"

    .prologue
    const/high16 v7, 0x3f00

    .line 463
    invoke-virtual {p2}, Lcom/htc/painting/engine/stroke/Stroke;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    .line 464
    .local v2, strokeRect:Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v7

    float-to-int v3, v3

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v7

    float-to-int v4, v4

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-float v5, v5

    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 468
    .local v1, strokeBound:Landroid/graphics/RectF;
    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 469
    invoke-static {p1, v1}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    .line 470
    .local v0, result:Z
    if-nez v0, :cond_0

    .line 478
    :cond_0
    return v0
.end method

.method private static computeMatrix(Lcom/htc/painting/engine/ViewPort;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 5
    .parameter "viewport"
    .parameter "convertMatrix"

    .prologue
    .line 996
    invoke-virtual {p0}, Lcom/htc/painting/engine/ViewPort;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 997
    .local v0, result:Landroid/graphics/Matrix;
    if-nez v0, :cond_0

    .line 999
    if-nez p1, :cond_1

    new-instance v0, Landroid/graphics/Matrix;

    .end local v0           #result:Landroid/graphics/Matrix;
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1000
    .restart local v0       #result:Landroid/graphics/Matrix;
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1003
    invoke-virtual {p0}, Lcom/htc/painting/engine/ViewPort;->getScaleX()F

    move-result v1

    invoke-virtual {p0}, Lcom/htc/painting/engine/ViewPort;->getScaleY()F

    move-result v2

    invoke-virtual {p0}, Lcom/htc/painting/engine/ViewPort;->getScalingPivotX()F

    move-result v3

    invoke-virtual {p0}, Lcom/htc/painting/engine/ViewPort;->getScalingPivotY()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 1006
    invoke-virtual {p0}, Lcom/htc/painting/engine/ViewPort;->getOffsetX()F

    move-result v1

    invoke-virtual {p0}, Lcom/htc/painting/engine/ViewPort;->getOffsetY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1009
    :cond_0
    return-object v0

    :cond_1
    move-object v0, p1

    .line 999
    goto :goto_0
.end method

.method private createStroke()Lcom/htc/painting/engine/stroke/Stroke;
    .locals 4

    .prologue
    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, s:Lcom/htc/painting/engine/stroke/Stroke;
    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v1}, Lcom/htc/painting/engine/StrokeProperties;->isEraser()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    new-instance v0, Lcom/htc/painting/engine/stroke/EraserStroke;

    .end local v0           #s:Lcom/htc/painting/engine/stroke/Stroke;
    iget v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    iget-object v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v0, v1, v2}, Lcom/htc/painting/engine/stroke/EraserStroke;-><init>(ILcom/htc/painting/engine/StrokeProperties;)V

    .line 266
    .restart local v0       #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/htc/painting/engine/StrokeGroup;->createStrokeCore(Lcom/htc/painting/engine/stroke/Stroke;)V

    .line 267
    return-object v0

    .line 258
    :cond_1
    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mPen:Lcom/htc/painting/tool/pen/Pen;

    if-eqz v1, :cond_2

    .line 259
    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mPen:Lcom/htc/painting/tool/pen/Pen;

    instance-of v1, v1, Lcom/htc/painting/engine/HtcPen;

    if-eqz v1, :cond_0

    .line 260
    new-instance v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;

    .end local v0           #s:Lcom/htc/painting/engine/stroke/Stroke;
    iget v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mPen:Lcom/htc/painting/tool/pen/Pen;

    check-cast v1, Lcom/htc/painting/engine/HtcPen;

    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v0, v2, v1, v3}, Lcom/htc/painting/engine/stroke/HtcPenStroke;-><init>(ILcom/htc/painting/tool/pen/Pen;Lcom/htc/painting/engine/StrokeProperties;)V

    .restart local v0       #s:Lcom/htc/painting/engine/stroke/Stroke;
    goto :goto_0

    .line 264
    :cond_2
    new-instance v0, Lcom/htc/painting/engine/stroke/SimpleStroke;

    .end local v0           #s:Lcom/htc/painting/engine/stroke/Stroke;
    iget v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    iget-object v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v0, v1, v2}, Lcom/htc/painting/engine/stroke/SimpleStroke;-><init>(ILcom/htc/painting/engine/StrokeProperties;)V

    .restart local v0       #s:Lcom/htc/painting/engine/stroke/Stroke;
    goto :goto_0
.end method

.method private createStroke(ILjava/io/ByteArrayInputStream;)Lcom/htc/painting/engine/stroke/Stroke;
    .locals 3
    .parameter "type"
    .parameter "is"

    .prologue
    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, s:Lcom/htc/painting/engine/stroke/Stroke;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 273
    new-instance v0, Lcom/htc/painting/engine/stroke/EraserStroke;

    .end local v0           #s:Lcom/htc/painting/engine/stroke/Stroke;
    iget v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    invoke-direct {v0, v1, p2}, Lcom/htc/painting/engine/stroke/EraserStroke;-><init>(ILjava/io/ByteArrayInputStream;)V

    .line 279
    .restart local v0       #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/htc/painting/engine/StrokeGroup;->createStrokeCore(Lcom/htc/painting/engine/stroke/Stroke;)V

    .line 280
    return-object v0

    .line 274
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 275
    new-instance v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;

    .end local v0           #s:Lcom/htc/painting/engine/stroke/Stroke;
    iget v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    invoke-direct {v0, v1, p2}, Lcom/htc/painting/engine/stroke/HtcPenStroke;-><init>(ILjava/io/ByteArrayInputStream;)V

    .restart local v0       #s:Lcom/htc/painting/engine/stroke/Stroke;
    goto :goto_0

    .line 276
    :cond_2
    if-nez p1, :cond_0

    .line 277
    new-instance v0, Lcom/htc/painting/engine/stroke/SimpleStroke;

    .end local v0           #s:Lcom/htc/painting/engine/stroke/Stroke;
    iget v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    invoke-direct {v0, v1, p2}, Lcom/htc/painting/engine/stroke/SimpleStroke;-><init>(ILjava/io/ByteArrayInputStream;)V

    .restart local v0       #s:Lcom/htc/painting/engine/stroke/Stroke;
    goto :goto_0
.end method

.method private createStrokeCore(Lcom/htc/painting/engine/stroke/Stroke;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 284
    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 286
    monitor-exit v1

    .line 302
    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private deserializeStrokeType(Ljava/io/ByteArrayInputStream;)I
    .locals 6
    .parameter "is"

    .prologue
    .line 959
    const/4 v3, 0x4

    new-array v2, v3, [B

    .line 961
    .local v2, type:[B
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 965
    const/4 v3, 0x0

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x1

    aget-byte v4, v2, v4

    const/high16 v5, 0xff

    and-int/2addr v4, v5

    add-int/2addr v3, v4

    const/4 v4, 0x2

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    const/4 v4, 0x3

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    add-int v1, v3, v4

    .line 967
    :goto_0
    return v1

    .line 962
    :catch_0
    move-exception v0

    .line 963
    .local v0, e:Ljava/io/IOException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private markModification()V
    .locals 2

    .prologue
    .line 1013
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mModifiedIndex:J

    .line 1014
    return-void
.end method

.method private markSerialization()V
    .locals 2

    .prologue
    .line 1017
    iget-wide v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mModifiedIndex:J

    iput-wide v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mSerializedIndex:J

    .line 1018
    return-void
.end method

.method static serialize(Ljava/util/List;)[B
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/stroke/Stroke;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 1091
    .local p0, strokes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;"
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1092
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x4

    new-array v2, v4, [B

    .line 1094
    .local v2, intBuffer:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-gt v1, v4, :cond_1

    .line 1095
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/engine/stroke/Stroke;

    .line 1097
    .local v3, s:Lcom/htc/painting/engine/stroke/Stroke;
    :try_start_0
    invoke-virtual {v3}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1098
    invoke-static {v0, v3, v2}, Lcom/htc/painting/engine/StrokeGroup;->serializeStrokeType(Ljava/io/ByteArrayOutputStream;Lcom/htc/painting/engine/stroke/Stroke;[B)V

    .line 1099
    invoke-virtual {v3, v0}, Lcom/htc/painting/engine/stroke/Stroke;->serialize(Ljava/io/ByteArrayOutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1104
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1094
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1101
    :catch_0
    move-exception v4

    .line 1104
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1105
    :catch_1
    move-exception v4

    goto :goto_1

    .line 1103
    :catchall_0
    move-exception v4

    .line 1104
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1106
    :goto_2
    throw v4

    .line 1111
    .end local v3           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 1105
    .restart local v3       #s:Lcom/htc/painting/engine/stroke/Stroke;
    :catch_2
    move-exception v4

    goto :goto_1

    :catch_3
    move-exception v5

    goto :goto_2
.end method

.method private static serializeStrokeType(Ljava/io/ByteArrayOutputStream;Lcom/htc/painting/engine/stroke/Stroke;[B)V
    .locals 5
    .parameter "os"
    .parameter "d"
    .parameter "type"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 931
    instance-of v0, p1, Lcom/htc/painting/engine/stroke/SimpleStroke;

    if-eqz v0, :cond_1

    .line 932
    aput-byte v1, p2, v1

    .line 933
    aput-byte v1, p2, v3

    .line 934
    aput-byte v1, p2, v2

    .line 935
    aput-byte v1, p2, v4

    .line 948
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    :try_start_1
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 956
    :goto_1
    return-void

    .line 936
    :cond_1
    instance-of v0, p1, Lcom/htc/painting/engine/stroke/EraserStroke;

    if-eqz v0, :cond_2

    .line 937
    aput-byte v1, p2, v1

    .line 938
    aput-byte v1, p2, v3

    .line 939
    aput-byte v1, p2, v2

    .line 940
    aput-byte v2, p2, v4

    goto :goto_0

    .line 941
    :cond_2
    instance-of v0, p1, Lcom/htc/painting/engine/stroke/HtcPenStroke;

    if-eqz v0, :cond_0

    .line 942
    aput-byte v1, p2, v1

    .line 943
    aput-byte v1, p2, v3

    .line 944
    aput-byte v1, p2, v2

    .line 945
    const/4 v0, 0x4

    aput-byte v0, p2, v4

    goto :goto_0

    .line 949
    :catch_0
    move-exception v0

    .line 952
    :try_start_2
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 953
    :catch_1
    move-exception v0

    goto :goto_1

    .line 951
    :catchall_0
    move-exception v0

    .line 952
    :try_start_3
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 954
    :goto_2
    throw v0

    .line 953
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method clearStrokes()V
    .locals 3

    .prologue
    .line 331
    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 333
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    invoke-direct {p0}, Lcom/htc/painting/engine/StrokeGroup;->markModification()V

    .line 335
    const-string v0, "StrokeGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearStrokes(), mIsModified = truegroupd id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeGroupId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return-void

    .line 333
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method deserialize([B)Lcom/htc/painting/engine/StrokeGroup;
    .locals 7
    .parameter "serializedByteArray"

    .prologue
    .line 812
    if-nez p1, :cond_1

    .line 813
    const-string v4, "StrokeGroup"

    const-string v5, "deserialize(null)"

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    :cond_0
    return-object p0

    .line 816
    :cond_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 818
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    invoke-virtual {p0}, Lcom/htc/painting/engine/StrokeGroup;->resetStrokes()V

    .line 819
    invoke-direct {p0}, Lcom/htc/painting/engine/StrokeGroup;->markSerialization()V

    .line 820
    const-string v4, "StrokeGroup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deserialize(), mIsModified = falsegroupd id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeGroupId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    if-eqz v4, :cond_0

    .line 836
    invoke-direct {p0, v0}, Lcom/htc/painting/engine/StrokeGroup;->deserializeStrokeType(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .line 837
    .local v3, type:I
    invoke-direct {p0, v3, v0}, Lcom/htc/painting/engine/StrokeGroup;->createStroke(ILjava/io/ByteArrayInputStream;)Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v2

    .line 840
    .local v2, s:Lcom/htc/painting/engine/stroke/Stroke;
    if-eqz v2, :cond_2

    .line 841
    invoke-virtual {v2}, Lcom/htc/painting/engine/stroke/Stroke;->getId()I

    move-result v1

    .line 842
    .local v1, i:I
    iget v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    if-le v1, v4, :cond_2

    .line 843
    iput v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    goto :goto_0
.end method

.method draw(Landroid/graphics/Canvas;I)V
    .locals 3
    .parameter "canvas"
    .parameter "strokeId"

    .prologue
    .line 564
    invoke-virtual {p0, p2}, Lcom/htc/painting/engine/StrokeGroup;->getStroke(I)Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v0

    .line 565
    .local v0, s:Lcom/htc/painting/engine/stroke/Stroke;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 566
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/htc/painting/engine/StrokeGroup;->draw(Landroid/graphics/Canvas;III)V

    .line 568
    :cond_0
    return-void
.end method

.method draw(Landroid/graphics/Canvas;III)V
    .locals 6
    .parameter "canvas"
    .parameter "strokeId"
    .parameter "startPoint"
    .parameter "endPoint"

    .prologue
    .line 489
    iget-object v5, p0, Lcom/htc/painting/engine/StrokeGroup;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/painting/engine/StrokeGroup;->draw(Landroid/graphics/Canvas;IIILandroid/graphics/Matrix;)V

    .line 490
    return-void
.end method

.method draw(Landroid/graphics/Canvas;IIILandroid/graphics/Matrix;)V
    .locals 4
    .parameter "canvas"
    .parameter "strokeId"
    .parameter "startPoint"
    .parameter "endPoint"
    .parameter "matrix"

    .prologue
    .line 514
    if-nez p5, :cond_0

    .line 516
    const-string v2, "StrokeGroup"

    const-string v3, "Matrix shouldn\'t be null!"

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v2, v3}, Lcom/htc/painting/engine/StrokeGroup;->computeMatrix(Lcom/htc/painting/engine/ViewPort;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p5

    .line 520
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 522
    .local v0, drawingRect:Landroid/graphics/RectF;
    invoke-virtual {p1, p5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 523
    const/4 v2, 0x1

    invoke-virtual {p0, p2, v2}, Lcom/htc/painting/engine/StrokeGroup;->getStrokeInternal(IZ)Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v1

    .line 524
    .local v1, s:Lcom/htc/painting/engine/stroke/Stroke;
    if-eqz v1, :cond_1

    invoke-direct {p0, v0, v1, p5}, Lcom/htc/painting/engine/StrokeGroup;->checkIntersect(Landroid/graphics/RectF;Lcom/htc/painting/engine/stroke/Stroke;Landroid/graphics/Matrix;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 527
    invoke-virtual {v1, p1, p3, p4}, Lcom/htc/painting/engine/stroke/Stroke;->draw(Landroid/graphics/Canvas;II)V

    .line 529
    :cond_1
    return-void
.end method

.method draw(Landroid/graphics/Canvas;Lcom/htc/painting/engine/stroke/Stroke;IILandroid/graphics/Matrix;)V
    .locals 3
    .parameter "canvas"
    .parameter "s"
    .parameter "startPoint"
    .parameter "endPoint"
    .parameter "matrix"

    .prologue
    .line 540
    if-nez p5, :cond_0

    .line 541
    const-string v1, "StrokeGroup"

    const-string v2, "Matrix shouldn\'t be null!"

    invoke-static {v1, v2}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    iget-object v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v1, v2}, Lcom/htc/painting/engine/StrokeGroup;->computeMatrix(Lcom/htc/painting/engine/ViewPort;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p5

    .line 545
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 547
    .local v0, drawingRect:Landroid/graphics/RectF;
    invoke-virtual {p1, p5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 548
    if-eqz p2, :cond_1

    invoke-direct {p0, v0, p2, p5}, Lcom/htc/painting/engine/StrokeGroup;->checkIntersect(Landroid/graphics/RectF;Lcom/htc/painting/engine/stroke/Stroke;Landroid/graphics/Matrix;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 549
    invoke-virtual {p2, p1, p3, p4}, Lcom/htc/painting/engine/stroke/Stroke;->draw(Landroid/graphics/Canvas;II)V

    .line 551
    :cond_1
    return-void
.end method

.method draw(Landroid/graphics/Canvas;Z)V
    .locals 1
    .parameter "canvas"
    .parameter "containPaintingStroke"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    invoke-virtual {v0}, Lcom/htc/painting/engine/ViewPort;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/painting/engine/StrokeGroup;->draw(Landroid/graphics/Canvas;ZLandroid/graphics/Matrix;)V

    .line 409
    return-void
.end method

.method draw(Landroid/graphics/Canvas;ZLandroid/graphics/Matrix;)V
    .locals 5
    .parameter "canvas"
    .parameter "containPaintingStroke"
    .parameter "matrix"

    .prologue
    .line 426
    if-nez p3, :cond_0

    .line 428
    const-string v3, "StrokeGroup"

    const-string v4, "Matrix shouldn\'t be null!"

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    invoke-virtual {v3}, Lcom/htc/painting/engine/ViewPort;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p3

    .line 432
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 434
    .local v0, drawingRect:Landroid/graphics/RectF;
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 437
    if-eqz p2, :cond_3

    .line 438
    const-string v3, "StrokeGroup"

    const-string v4, "annotation"

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    if-eqz v3, :cond_2

    .line 440
    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    invoke-virtual {v3, p1}, Lcom/htc/painting/engine/stroke/Stroke;->draw(Landroid/graphics/Canvas;)V

    .line 460
    :cond_1
    :goto_0
    return-void

    .line 442
    :cond_2
    const-string v3, "StrokeGroup"

    const-string v4, "draw() cannot getCurrentStroke"

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :cond_3
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v1, v3, :cond_1

    .line 452
    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/stroke/Stroke;

    .line 453
    .local v2, s:Lcom/htc/painting/engine/stroke/Stroke;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v0, v2, p3}, Lcom/htc/painting/engine/StrokeGroup;->checkIntersect(Landroid/graphics/RectF;Lcom/htc/painting/engine/stroke/Stroke;Landroid/graphics/Matrix;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 456
    invoke-virtual {v2, p1}, Lcom/htc/painting/engine/stroke/Stroke;->draw(Landroid/graphics/Canvas;)V

    .line 451
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public enableEraseMode(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 888
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/StrokeProperties;->setEraser(Z)V

    .line 889
    return-void
.end method

.method getBoundingRectF()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 346
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 347
    .local v1, recf:Landroid/graphics/RectF;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-gt v0, v4, :cond_1

    .line 348
    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/stroke/Stroke;

    .line 349
    .local v2, s:Lcom/htc/painting/engine/stroke/Stroke;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 350
    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/engine/stroke/Stroke;

    invoke-virtual {v4}, Lcom/htc/painting/engine/stroke/Stroke;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    .line 351
    .local v3, strokeBounds:Landroid/graphics/RectF;
    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 347
    .end local v3           #strokeBounds:Landroid/graphics/RectF;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    .end local v2           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_1
    return-object v1
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeGroupId:I

    return v0
.end method

.method public getModificationIndex()J
    .locals 2

    .prologue
    .line 1025
    iget-wide v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mModifiedIndex:J

    return-wide v0
.end method

.method getNonEraserStrokeCount()I
    .locals 5

    .prologue
    .line 186
    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    .line 187
    :cond_0
    const/4 v0, 0x0

    .line 198
    :cond_1
    return v0

    .line 190
    :cond_2
    const/4 v0, 0x0

    .line 191
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v1, v3, :cond_1

    .line 192
    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/stroke/Stroke;

    .line 193
    .local v2, s:Lcom/htc/painting/engine/stroke/Stroke;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/htc/painting/engine/stroke/Stroke;->getProperties()Lcom/htc/painting/engine/StrokeProperties;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/htc/painting/engine/stroke/Stroke;->getProperties()Lcom/htc/painting/engine/StrokeProperties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/painting/engine/StrokeProperties;->isEraser()Z

    move-result v3

    if-nez v3, :cond_3

    .line 195
    add-int/lit8 v0, v0, 0x1

    .line 191
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getPaintingStroke()Lcom/htc/painting/engine/stroke/Stroke;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    return-object v0
.end method

.method public getStroke(I)Lcom/htc/painting/engine/stroke/Stroke;
    .locals 1
    .parameter "id"

    .prologue
    .line 581
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/engine/StrokeGroup;->getStrokeInternal(IZ)Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v0

    return-object v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeProperties;->getColor()I

    move-result v0

    return v0
.end method

.method getStrokeCount()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method getStrokeInternal(IZ)Lcom/htc/painting/engine/stroke/Stroke;
    .locals 8
    .parameter "id"
    .parameter "containIneffective"

    .prologue
    const/4 v5, 0x0

    .line 585
    iget-object v6, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_1

    move-object v4, v5

    .line 607
    :cond_0
    :goto_0
    return-object v4

    .line 587
    :cond_1
    const/4 v0, 0x0

    .line 588
    .local v0, begin:I
    iget-object v6, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 593
    .local v2, end:I
    move v3, v0

    .local v3, i:I
    :goto_1
    if-gt v3, v2, :cond_3

    .line 595
    :try_start_0
    iget-object v6, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/engine/stroke/Stroke;

    .line 596
    .local v4, s:Lcom/htc/painting/engine/stroke/Stroke;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/htc/painting/engine/stroke/Stroke;->getId()I

    move-result v6

    if-ne v6, p1, :cond_2

    .line 597
    invoke-virtual {v4}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_2

    if-nez p2, :cond_0

    .line 593
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 602
    .end local v4           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    move-object v4, v5

    .line 603
    goto :goto_0

    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    move-object v4, v5

    .line 607
    goto :goto_0
.end method

.method public getStrokeProperties()Lcom/htc/painting/engine/StrokeProperties;
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    return-object v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeProperties;->getWidth()F

    move-result v0

    return v0
.end method

.method public getStrokes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/stroke/Stroke;",
            ">;"
        }
    .end annotation

    .prologue
    .line 638
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/painting/engine/StrokeGroup;->getStrokes(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStrokes(Z)Ljava/util/List;
    .locals 5
    .parameter "containIneffectives"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/stroke/Stroke;",
            ">;"
        }
    .end annotation

    .prologue
    .line 617
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 618
    .local v1, l:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/htc/painting/engine/stroke/Stroke;>;"
    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mLockObject:Ljava/lang/Object;

    monitor-enter v4

    .line 619
    :try_start_0
    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/stroke/Stroke;

    .line 620
    .local v2, s:Lcom/htc/painting/engine/stroke/Stroke;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    .line 622
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 624
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 625
    return-object v1
.end method

.method public getStrokesMemorySize()J
    .locals 7

    .prologue
    .line 979
    const-wide/16 v1, 0x0

    .line 980
    .local v1, result:J
    const/4 v4, 0x4

    .line 981
    .local v4, strokeType:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-gt v0, v5, :cond_0

    .line 982
    int-to-long v5, v4

    add-long/2addr v1, v5

    .line 983
    iget-object v5, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/painting/engine/stroke/Stroke;

    invoke-virtual {v5}, Lcom/htc/painting/engine/stroke/Stroke;->getTotalBytes()I

    move-result v3

    .line 984
    .local v3, size:I
    int-to-long v5, v3

    add-long/2addr v1, v5

    .line 981
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 986
    .end local v3           #size:I
    :cond_0
    return-wide v1
.end method

.method getViewPort()Lcom/htc/painting/engine/ViewPort;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    return-object v0
.end method

.method isClean()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 164
    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v3, v1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v1

    .line 167
    :cond_1
    const/4 v1, 0x1

    .line 169
    .local v1, result:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v0, v3, :cond_0

    .line 170
    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/stroke/Stroke;

    .line 171
    .local v2, s:Lcom/htc/painting/engine/stroke/Stroke;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/htc/painting/engine/stroke/Stroke;->getProperties()Lcom/htc/painting/engine/StrokeProperties;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/htc/painting/engine/stroke/Stroke;->getProperties()Lcom/htc/painting/engine/StrokeProperties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/painting/engine/StrokeProperties;->isEraser()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 173
    const/4 v1, 0x0

    .line 174
    goto :goto_0

    .line 169
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method isEffective()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mIsEffective:Z

    return v0
.end method

.method public isEraseModeOn()Z
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeProperties;->isEraser()Z

    move-result v0

    return v0
.end method

.method isModified()Z
    .locals 4

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mModifiedIndex:J

    iget-wide v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mSerializedIndex:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method purgeStrokes(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/htc/painting/engine/StrokeGroup;->truncateStrokes()V

    .line 360
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v2, removeIndices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 367
    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    iget-object v5, p0, Lcom/htc/painting/engine/StrokeGroup;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v4, v5}, Lcom/htc/painting/engine/StrokeGroup;->computeMatrix(Lcom/htc/painting/engine/ViewPort;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 368
    .local v1, matrix:Landroid/graphics/Matrix;
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 369
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v0, v4, :cond_1

    .line 370
    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/engine/stroke/Stroke;

    .line 371
    .local v3, s:Lcom/htc/painting/engine/stroke/Stroke;
    invoke-virtual {v3}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z

    move-result v4

    if-nez v4, :cond_0

    .line 372
    const-string v4, "StrokeGroup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StrokeGroup "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeGroupId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Stroke "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/htc/painting/engine/stroke/Stroke;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " will be removed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 379
    .end local v3           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_1
    iget-object v5, p0, Lcom/htc/painting/engine/StrokeGroup;->mLockObject:Ljava/lang/Object;

    monitor-enter v5

    .line 380
    const/4 v0, 0x0

    :goto_1
    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 381
    iget-object v6, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 383
    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 386
    invoke-virtual {p0}, Lcom/htc/painting/engine/StrokeGroup;->getNonEraserStrokeCount()I

    move-result v4

    if-nez v4, :cond_3

    .line 387
    invoke-virtual {p0}, Lcom/htc/painting/engine/StrokeGroup;->resetStrokes()V

    .line 389
    :cond_3
    invoke-direct {p0}, Lcom/htc/painting/engine/StrokeGroup;->markModification()V

    .line 390
    const-string v4, "StrokeGroup"

    const-string v5, "purgeStrokes(), mIsModified = true"

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    return-void

    .line 383
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method resetStrokes()V
    .locals 3

    .prologue
    .line 308
    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 310
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    invoke-direct {p0}, Lcom/htc/painting/engine/StrokeGroup;->markModification()V

    .line 312
    const-string v0, "StrokeGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetStrokes(), mIsModified = truegroupd id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeGroupId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    return-void

    .line 310
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method serialize(ZZ)[B
    .locals 6
    .parameter "destroyStrokes"
    .parameter "saveIneffetiveStrokes"

    .prologue
    .line 763
    invoke-direct {p0}, Lcom/htc/painting/engine/StrokeGroup;->markSerialization()V

    .line 764
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 769
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x4

    new-array v2, v4, [B

    .line 782
    .local v2, intBuffer:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-gt v1, v4, :cond_0

    .line 783
    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/engine/stroke/Stroke;

    .line 787
    .local v3, s:Lcom/htc/painting/engine/stroke/Stroke;
    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    if-ne v3, v4, :cond_1

    .line 808
    .end local v3           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 790
    .restart local v3       #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_1
    :try_start_0
    invoke-virtual {v3}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p2, :cond_3

    .line 792
    :cond_2
    invoke-static {v0, v3, v2}, Lcom/htc/painting/engine/StrokeGroup;->serializeStrokeType(Ljava/io/ByteArrayOutputStream;Lcom/htc/painting/engine/stroke/Stroke;[B)V

    .line 793
    invoke-virtual {v3, v0}, Lcom/htc/painting/engine/stroke/Stroke;->serialize(Ljava/io/ByteArrayOutputStream;)Z

    .line 795
    if-eqz p1, :cond_3

    .line 796
    invoke-virtual {v3}, Lcom/htc/painting/engine/stroke/Stroke;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 782
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 798
    :catch_0
    move-exception v4

    .line 801
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 802
    :catch_1
    move-exception v4

    goto :goto_1

    .line 800
    :catchall_0
    move-exception v4

    .line 801
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 803
    :goto_2
    throw v4

    .line 802
    :catch_2
    move-exception v4

    goto :goto_1

    :catch_3
    move-exception v5

    goto :goto_2
.end method

.method setEffective(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/htc/painting/engine/StrokeGroup;->mIsEffective:Z

    .line 87
    return-void
.end method

.method public setPen(Lcom/htc/painting/tool/pen/Pen;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 922
    iput-object p1, p0, Lcom/htc/painting/engine/StrokeGroup;->mPen:Lcom/htc/painting/tool/pen/Pen;

    .line 923
    return-void
.end method

.method setRotation(I)V
    .locals 7
    .parameter "degree"

    .prologue
    .line 742
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 743
    .local v1, m:Landroid/graphics/Matrix;
    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mLockObject:Ljava/lang/Object;

    monitor-enter v4

    .line 744
    :try_start_0
    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/stroke/Stroke;

    .line 745
    .local v2, s:Lcom/htc/painting/engine/stroke/Stroke;
    int-to-float v3, p1

    iget-object v5, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    invoke-virtual {v5}, Lcom/htc/painting/engine/ViewPort;->getRotatePivotX()F

    move-result v5

    iget-object v6, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    invoke-virtual {v6}, Lcom/htc/painting/engine/ViewPort;->getRotatePivotY()F

    move-result v6

    invoke-virtual {v1, v3, v5, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 747
    invoke-virtual {v2, v1}, Lcom/htc/painting/engine/stroke/Stroke;->transform(Landroid/graphics/Matrix;)V

    .line 748
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0

    .line 750
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 751
    invoke-direct {p0}, Lcom/htc/painting/engine/StrokeGroup;->markModification()V

    .line 752
    const-string v3, "StrokeGroup"

    const-string v4, "setRotation(), mIsModified = true"

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 864
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/StrokeProperties;->setColor(I)V

    .line 865
    return-void
.end method

.method setStrokeEnable(Lcom/htc/painting/engine/stroke/Stroke;Z)V
    .locals 1
    .parameter "s"
    .parameter "enable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p1, p2}, Lcom/htc/painting/engine/stroke/Stroke;->setEffective(Z)V

    .line 343
    :cond_0
    return-void
.end method

.method public setStrokeProperties(Lcom/htc/painting/engine/StrokeProperties;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 896
    new-instance v0, Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v0, p1}, Lcom/htc/painting/engine/StrokeProperties;-><init>(Lcom/htc/painting/engine/StrokeProperties;)V

    .line 897
    .local v0, newP:Lcom/htc/painting/engine/StrokeProperties;
    iput-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    .line 898
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .parameter "width"

    .prologue
    .line 880
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/StrokeProperties;->setWidth(F)V

    .line 881
    return-void
.end method

.method setViewPort(Lcom/htc/painting/engine/ViewPort;)V
    .locals 0
    .parameter "viewPort"

    .prologue
    .line 643
    iput-object p1, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    .line 644
    return-void
.end method

.method strokeEnd(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 3
    .parameter "canvas"
    .parameter "dirtyRect"

    .prologue
    .line 725
    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    iget-object v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v1, v2}, Lcom/htc/painting/engine/StrokeGroup;->computeMatrix(Lcom/htc/painting/engine/ViewPort;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 729
    .local v0, matrix:Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 730
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 731
    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    invoke-virtual {v1, p1, p2}, Lcom/htc/painting/engine/stroke/Stroke;->end(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 732
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    .line 733
    invoke-direct {p0}, Lcom/htc/painting/engine/StrokeGroup;->markModification()V

    .line 735
    :cond_0
    return-void
.end method

.method strokeMove(Landroid/graphics/Canvas;FFFFLandroid/graphics/RectF;)Lcom/htc/painting/engine/stroke/Stroke;
    .locals 8
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "size"
    .parameter "dirtyRect"

    .prologue
    .line 698
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1}, Lcom/htc/painting/engine/StrokeGroup;->computeMatrix(Lcom/htc/painting/engine/ViewPort;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v7

    .line 705
    .local v7, matrix:Landroid/graphics/Matrix;
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 706
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 707
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/htc/painting/engine/stroke/Stroke;->move(Landroid/graphics/Canvas;FFFFLandroid/graphics/RectF;)V

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    return-object v0
.end method

.method strokeStart(Landroid/graphics/Canvas;FFFFLandroid/graphics/RectF;)Lcom/htc/painting/engine/stroke/Stroke;
    .locals 8
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "size"
    .parameter "dirtyRect"

    .prologue
    .line 668
    invoke-direct {p0}, Lcom/htc/painting/engine/StrokeGroup;->createStroke()Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    .line 671
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1}, Lcom/htc/painting/engine/StrokeGroup;->computeMatrix(Lcom/htc/painting/engine/ViewPort;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v7

    .line 674
    .local v7, matrix:Landroid/graphics/Matrix;
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 675
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 676
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    invoke-virtual {v0, p1, p6}, Lcom/htc/painting/engine/stroke/Stroke;->start(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 679
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/htc/painting/engine/stroke/Stroke;->move(Landroid/graphics/Canvas;FFFFLandroid/graphics/RectF;)V

    .line 681
    invoke-direct {p0}, Lcom/htc/painting/engine/StrokeGroup;->markModification()V

    .line 683
    :cond_0
    const-string v0, "StrokeGroup"

    const-string v1, "strokeStart(), mIsModified = true"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    return-object v0
.end method

.method public transformStroke(Landroid/graphics/RectF;Landroid/graphics/Matrix;Lcom/htc/painting/engine/StrokeGroup$SelectMode;)Z
    .locals 6
    .parameter "region"
    .parameter "transformMatrix"
    .parameter "mode"

    .prologue
    const/4 v3, 0x1

    .line 1038
    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v4, v3, :cond_1

    .line 1039
    :cond_0
    const/4 v3, 0x0

    .line 1054
    :goto_0
    return v3

    .line 1041
    :cond_1
    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mLockObject:Ljava/lang/Object;

    monitor-enter v4

    .line 1042
    :try_start_0
    iget-object v5, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/stroke/Stroke;

    .line 1043
    .local v2, s:Lcom/htc/painting/engine/stroke/Stroke;
    const/4 v0, 0x0

    .line 1044
    .local v0, doTransform:Z
    sget-object v5, Lcom/htc/painting/engine/StrokeGroup$SelectMode;->Contain:Lcom/htc/painting/engine/StrokeGroup$SelectMode;

    if-ne p3, v5, :cond_4

    .line 1045
    invoke-virtual {v2}, Lcom/htc/painting/engine/stroke/Stroke;->getRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v0

    .line 1049
    :cond_3
    :goto_2
    if-eqz v0, :cond_2

    .line 1050
    invoke-virtual {v2, p2}, Lcom/htc/painting/engine/stroke/Stroke;->transform(Landroid/graphics/Matrix;)V

    goto :goto_1

    .line 1053
    .end local v0           #doTransform:Z
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1046
    .restart local v0       #doTransform:Z
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_4
    :try_start_1
    sget-object v5, Lcom/htc/painting/engine/StrokeGroup$SelectMode;->Intersect:Lcom/htc/painting/engine/StrokeGroup$SelectMode;

    if-ne p3, v5, :cond_3

    .line 1047
    invoke-virtual {v2}, Lcom/htc/painting/engine/stroke/Stroke;->getRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    goto :goto_2

    .line 1053
    .end local v0           #doTransform:Z
    .end local v2           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_5
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method truncateStrokes()V
    .locals 5

    .prologue
    .line 395
    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mLockObject:Ljava/lang/Object;

    monitor-enter v4

    .line 396
    :try_start_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 397
    .local v1, l:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/htc/painting/engine/stroke/Stroke;>;"
    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/stroke/Stroke;

    .line 398
    .local v2, s:Lcom/htc/painting/engine/stroke/Stroke;
    invoke-virtual {v2}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 399
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 404
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/htc/painting/engine/stroke/Stroke;>;"
    .end local v2           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 402
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #l:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/htc/painting/engine/stroke/Stroke;>;"
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/htc/painting/engine/StrokeGroup;->markModification()V

    .line 403
    iput-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    .line 404
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    return-void
.end method

.method public updateStrokes(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/stroke/Stroke;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/stroke/Stroke;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, toBeAdd:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;"
    .local p2, toBeRemove:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;"
    const/4 v7, 0x0

    .line 1063
    const-string v3, "EraserSercie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " add stroke: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " remove stroke: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/engine/stroke/Stroke;

    .line 1066
    .local v1, s:Lcom/htc/painting/engine/stroke/Stroke;
    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1068
    invoke-virtual {v1}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1069
    .local v2, size:I
    const-string v4, "EraserSercie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add stroke,  points : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " start point x: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v3}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " y: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v3}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " end x: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v6, v2, -0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v3}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " y: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v6, v2, -0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v3}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1075
    .end local v1           #s:Lcom/htc/painting/engine/stroke/Stroke;
    .end local v2           #size:I
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/engine/stroke/Stroke;

    .line 1076
    .restart local v1       #s:Lcom/htc/painting/engine/stroke/Stroke;
    invoke-virtual {v1}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1077
    .restart local v2       #size:I
    const-string v4, "EraserSercie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove stroke,  points : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " start point x: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v3}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " y: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v3}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " end x: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v6, v2, -0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v3}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " y: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v6, v2, -0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v3}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1083
    .end local v1           #s:Lcom/htc/painting/engine/stroke/Stroke;
    .end local v2           #size:I
    :cond_2
    return-void
.end method
