.class public Lcom/htc/painting/engine/stroke/SimpleStroke;
.super Lcom/htc/painting/engine/stroke/Stroke;
.source "SimpleStroke.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;
    }
.end annotation


# static fields
.field private static final METAINFO_BYTESIZE:I = 0xe

.field private static final MOTION_POINT_BYTESIZE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SimpleStroke"

.field private static final VERSION:B = 0x1t


# instance fields
.field private mHalfWidth:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPointCount:I

.field private mPointCountNew:I

.field private mPreviousPoint:Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

.field private final mSegment:Landroid/graphics/Path;

.field private final mSimplePath:Landroid/graphics/Path;

.field private final mSimplePathNew:Landroid/graphics/Path;

.field private mThickness:F

.field private final mVOPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/htc/painting/engine/stroke/Stroke;-><init>(I)V

    .line 44
    invoke-direct {p0}, Lcom/htc/painting/engine/stroke/SimpleStroke;->init()V

    .line 45
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSimplePath:Landroid/graphics/Path;

    .line 46
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSimplePathNew:Landroid/graphics/Path;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mVOPoints:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    .line 49
    return-void
.end method

.method public constructor <init>(ILcom/htc/painting/engine/StrokeProperties;)V
    .locals 2
    .parameter "id"
    .parameter "sp"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/htc/painting/engine/stroke/Stroke;-><init>(ILcom/htc/painting/engine/StrokeProperties;)V

    .line 53
    invoke-direct {p0}, Lcom/htc/painting/engine/stroke/SimpleStroke;->init()V

    .line 54
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSimplePath:Landroid/graphics/Path;

    .line 55
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSimplePathNew:Landroid/graphics/Path;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mVOPoints:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    .line 58
    return-void
.end method

.method public constructor <init>(ILjava/io/ByteArrayInputStream;)V
    .locals 2
    .parameter "id"
    .parameter "is"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/htc/painting/engine/stroke/Stroke;-><init>(ILjava/io/ByteArrayInputStream;)V

    .line 68
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSimplePath:Landroid/graphics/Path;

    .line 69
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSimplePathNew:Landroid/graphics/Path;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mVOPoints:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    .line 72
    return-void
.end method

.method public static final ComputeControlsOfFirstPoint(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;F)V
    .locals 5
    .parameter "p1"
    .parameter "p2"
    .parameter "halfWidth"

    .prologue
    .line 211
    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->p:F

    mul-float v2, p2, v3

    .line 212
    .local v2, r:F
    neg-float v3, v2

    iget v4, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->uy:F

    mul-float v0, v3, v4

    .line 213
    .local v0, nx:F
    iget v3, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->ux:F

    mul-float v1, v2, v3

    .line 214
    .local v1, ny:F
    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x:F

    add-float/2addr v3, v0

    iput v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x1:F

    .line 215
    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y:F

    add-float/2addr v3, v1

    iput v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y1:F

    .line 216
    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x:F

    sub-float/2addr v3, v0

    iput v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x2:F

    .line 217
    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y:F

    sub-float/2addr v3, v1

    iput v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y2:F

    .line 218
    return-void
.end method

.method public static final ComputeControlsOfLastPoint(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;F)V
    .locals 5
    .parameter "point"
    .parameter "halfWidth"

    .prologue
    .line 256
    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->p:F

    mul-float v2, p1, v3

    .line 257
    .local v2, r:F
    neg-float v3, v2

    iget v4, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->uy:F

    mul-float v0, v3, v4

    .line 258
    .local v0, nx:F
    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->ux:F

    mul-float v1, v2, v3

    .line 259
    .local v1, ny:F
    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x:F

    add-float/2addr v3, v0

    iput v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x1:F

    .line 260
    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y:F

    add-float/2addr v3, v1

    iput v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y1:F

    .line 261
    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x:F

    sub-float/2addr v3, v0

    iput v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x2:F

    .line 262
    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y:F

    sub-float/2addr v3, v1

    iput v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y2:F

    .line 263
    return-void
.end method

.method public static final ComputeControlsOfPoint(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;F)V
    .locals 10
    .parameter "p1"
    .parameter "p2"
    .parameter "halfWidth"

    .prologue
    .line 227
    iget v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->ux:F

    iget v9, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->ux:F

    add-float v6, v8, v9

    .line 228
    .local v6, ux:F
    iget v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->uy:F

    iget v9, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->uy:F

    add-float v7, v8, v9

    .line 229
    .local v7, uy:F
    mul-float v8, v6, v6

    mul-float v9, v7, v7

    add-float v5, v8, v9

    .line 230
    .local v5, u2:F
    const/4 v8, 0x0

    cmpl-float v8, v5, v8

    if-eqz v8, :cond_0

    .line 231
    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 233
    .local v3, u:D
    iget v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->p:F

    mul-float v2, p2, v8

    .line 234
    .local v2, r:F
    mul-float v8, v2, v7

    float-to-double v8, v8

    div-double/2addr v8, v3

    double-to-float v8, v8

    neg-float v0, v8

    .line 235
    .local v0, nx:F
    mul-float v8, v2, v6

    float-to-double v8, v8

    div-double/2addr v8, v3

    double-to-float v1, v8

    .line 236
    .local v1, ny:F
    iget v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x:F

    add-float/2addr v8, v0

    iput v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x1:F

    .line 237
    iget v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y:F

    add-float/2addr v8, v1

    iput v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y1:F

    .line 238
    iget v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x:F

    sub-float/2addr v8, v0

    iput v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x2:F

    .line 239
    iget v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y:F

    sub-float/2addr v8, v1

    iput v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y2:F

    .line 247
    .end local v0           #nx:F
    .end local v1           #ny:F
    .end local v2           #r:F
    .end local v3           #u:D
    :goto_0
    return-void

    .line 242
    :cond_0
    iget v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x:F

    iput v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x1:F

    .line 243
    iget v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y:F

    iput v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y1:F

    .line 244
    iget v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x:F

    iput v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x2:F

    .line 245
    iget v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y:F

    iput v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y2:F

    goto :goto_0
.end method

.method private final addFirstSegment(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)V
    .locals 11
    .parameter "p1"
    .parameter "p2"

    .prologue
    const/high16 v10, 0x3f00

    .line 268
    iget v0, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x1:F

    .line 269
    .local v0, x11:F
    iget v4, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y1:F

    .line 270
    .local v4, y11:F
    iget v1, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x2:F

    .line 271
    .local v1, x12:F
    iget v5, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y2:F

    .line 273
    .local v5, y12:F
    iget v8, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x1:F

    iget v9, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x1:F

    add-float/2addr v8, v9

    mul-float v2, v10, v8

    .line 274
    .local v2, x21:F
    iget v8, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y1:F

    iget v9, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y1:F

    add-float/2addr v8, v9

    mul-float v6, v10, v8

    .line 275
    .local v6, y21:F
    iget v8, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x2:F

    iget v9, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x2:F

    add-float/2addr v8, v9

    mul-float v3, v10, v8

    .line 276
    .local v3, x22:F
    iget v8, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y2:F

    iget v9, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y2:F

    add-float/2addr v8, v9

    mul-float v7, v10, v8

    .line 278
    .local v7, y22:F
    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 279
    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v0, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 280
    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 281
    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v3, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 282
    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 283
    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 285
    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSimplePath:Landroid/graphics/Path;

    iget-object v9, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v9}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 286
    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSimplePathNew:Landroid/graphics/Path;

    iget-object v9, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v9}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 287
    return-void
.end method

.method private final addLastSegment(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)V
    .locals 11
    .parameter "p1"
    .parameter "p2"

    .prologue
    const/high16 v10, 0x3f00

    .line 316
    iget v8, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x1:F

    iget v9, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x1:F

    add-float/2addr v8, v9

    mul-float v0, v10, v8

    .line 317
    .local v0, x11:F
    iget v8, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y1:F

    iget v9, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y1:F

    add-float/2addr v8, v9

    mul-float v4, v10, v8

    .line 318
    .local v4, y11:F
    iget v8, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x2:F

    iget v9, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x2:F

    add-float/2addr v8, v9

    mul-float v1, v10, v8

    .line 319
    .local v1, x12:F
    iget v8, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y2:F

    iget v9, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y2:F

    add-float/2addr v8, v9

    mul-float v5, v10, v8

    .line 321
    .local v5, y12:F
    iget v2, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x1:F

    .line 322
    .local v2, x21:F
    iget v6, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y1:F

    .line 323
    .local v6, y21:F
    iget v3, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x2:F

    .line 324
    .local v3, x22:F
    iget v7, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y2:F

    .line 326
    .local v7, y22:F
    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 327
    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v0, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 328
    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 329
    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v3, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 330
    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 331
    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 333
    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSimplePath:Landroid/graphics/Path;

    iget-object v9, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v9}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 334
    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSimplePathNew:Landroid/graphics/Path;

    iget-object v9, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v9}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 335
    return-void
.end method

.method private final addSegment(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)V
    .locals 11
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"

    .prologue
    const/high16 v10, 0x3f00

    .line 292
    iget v8, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x1:F

    iget v9, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x1:F

    add-float/2addr v8, v9

    mul-float v0, v10, v8

    .line 293
    .local v0, x11:F
    iget v8, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y1:F

    iget v9, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y1:F

    add-float/2addr v8, v9

    mul-float v4, v10, v8

    .line 294
    .local v4, y11:F
    iget v8, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x2:F

    iget v9, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x2:F

    add-float/2addr v8, v9

    mul-float v1, v10, v8

    .line 295
    .local v1, x12:F
    iget v8, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y2:F

    iget v9, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y2:F

    add-float/2addr v8, v9

    mul-float v5, v10, v8

    .line 297
    .local v5, y12:F
    iget v8, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x1:F

    iget v9, p3, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x1:F

    add-float/2addr v8, v9

    mul-float v2, v10, v8

    .line 298
    .local v2, x21:F
    iget v8, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y1:F

    iget v9, p3, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y1:F

    add-float/2addr v8, v9

    mul-float v6, v10, v8

    .line 299
    .local v6, y21:F
    iget v8, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x2:F

    iget v9, p3, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x2:F

    add-float/2addr v8, v9

    mul-float v3, v10, v8

    .line 300
    .local v3, x22:F
    iget v8, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y2:F

    iget v9, p3, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y2:F

    add-float/2addr v8, v9

    mul-float v7, v10, v8

    .line 302
    .local v7, y22:F
    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 303
    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v0, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 304
    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    iget v9, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x1:F

    iget v10, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y1:F

    invoke-virtual {v8, v9, v10, v2, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 305
    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v3, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 306
    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    iget v9, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x2:F

    iget v10, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y2:F

    invoke-virtual {v8, v9, v10, v1, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 307
    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 309
    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSimplePath:Landroid/graphics/Path;

    iget-object v9, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v9}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 310
    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSimplePathNew:Landroid/graphics/Path;

    iget-object v9, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v9}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 311
    return-void
.end method

.method private final endPath()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 148
    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPointCount:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 149
    iget-object v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mVOPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

    invoke-virtual {p0, v3}, Lcom/htc/painting/engine/stroke/SimpleStroke;->addPoint(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPointCount:I

    if-ne v3, v6, :cond_2

    .line 151
    iget-object v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mVOPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

    .line 152
    .local v0, p1:Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;
    iget-object v1, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPreviousPoint:Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

    .line 153
    .local v1, p2:Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;
    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mHalfWidth:F

    invoke-static {v1, v3}, Lcom/htc/painting/engine/stroke/SimpleStroke;->ComputeControlsOfLastPoint(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;F)V

    .line 154
    invoke-direct {p0, v0, v1}, Lcom/htc/painting/engine/stroke/SimpleStroke;->addFirstSegment(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)V

    .line 155
    invoke-direct {p0, v0, v1}, Lcom/htc/painting/engine/stroke/SimpleStroke;->addLastSegment(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)V

    goto :goto_0

    .line 156
    .end local v0           #p1:Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;
    .end local v1           #p2:Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;
    :cond_2
    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPointCount:I

    if-le v3, v6, :cond_0

    .line 157
    iget-object v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mVOPoints:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPointCount:I

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

    .line 158
    .restart local v0       #p1:Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;
    iget-object v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mVOPoints:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPointCount:I

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

    .line 159
    .restart local v1       #p2:Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;
    iget-object v2, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPreviousPoint:Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

    .line 160
    .local v2, p3:Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;
    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mHalfWidth:F

    invoke-static {v2, v3}, Lcom/htc/painting/engine/stroke/SimpleStroke;->ComputeControlsOfLastPoint(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;F)V

    .line 161
    invoke-direct {p0, v0, v1, v2}, Lcom/htc/painting/engine/stroke/SimpleStroke;->addSegment(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)V

    .line 162
    invoke-direct {p0, v1, v2}, Lcom/htc/painting/engine/stroke/SimpleStroke;->addLastSegment(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)V

    goto :goto_0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/painting/engine/stroke/SimpleStroke;->prepareDefaultPaint()V

    .line 76
    return-void
.end method

.method private prepareDefaultPaint()V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPaint:Landroid/graphics/Paint;

    .line 83
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 86
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 87
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v1}, Lcom/htc/painting/engine/StrokeProperties;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 88
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v1}, Lcom/htc/painting/engine/StrokeProperties;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    return-void
.end method

.method private final updatePathWithPoint(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)V
    .locals 5
    .parameter "point"

    .prologue
    const/4 v4, 0x2

    .line 190
    iget v2, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPointCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 191
    iget-object v2, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPreviousPoint:Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mHalfWidth:F

    invoke-static {v2, p1, v3}, Lcom/htc/painting/engine/stroke/SimpleStroke;->ComputeControlsOfFirstPoint(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;F)V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget v2, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPointCount:I

    if-ne v2, v4, :cond_2

    .line 193
    iget-object v2, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mVOPoints:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

    .line 194
    .local v0, p1:Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;
    iget-object v2, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPreviousPoint:Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mHalfWidth:F

    invoke-static {v2, p1, v3}, Lcom/htc/painting/engine/stroke/SimpleStroke;->ComputeControlsOfPoint(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;F)V

    .line 195
    iget-object v2, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPreviousPoint:Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

    invoke-direct {p0, v0, v2}, Lcom/htc/painting/engine/stroke/SimpleStroke;->addFirstSegment(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)V

    goto :goto_0

    .line 196
    .end local v0           #p1:Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;
    :cond_2
    iget v2, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPointCount:I

    if-le v2, v4, :cond_0

    .line 197
    iget-object v2, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mVOPoints:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPointCount:I

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

    .line 198
    .restart local v0       #p1:Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;
    iget-object v2, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mVOPoints:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPointCount:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

    .line 199
    .local v1, p2:Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;
    iget-object v2, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPreviousPoint:Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mHalfWidth:F

    invoke-static {v2, p1, v3}, Lcom/htc/painting/engine/stroke/SimpleStroke;->ComputeControlsOfPoint(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;F)V

    .line 200
    iget-object v2, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPreviousPoint:Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/painting/engine/stroke/SimpleStroke;->addSegment(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)V

    goto :goto_0
.end method


# virtual methods
.method public final addPoint(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)V
    .locals 1
    .parameter "point"

    .prologue
    .line 172
    iget v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPointCount:I

    if-lez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPreviousPoint:Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

    invoke-static {p1, v0}, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->computeDistance(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)V

    .line 179
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/painting/engine/stroke/SimpleStroke;->updatePathWithPoint(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)V

    .line 181
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mVOPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    iput-object p1, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPreviousPoint:Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

    .line 183
    iget v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPointCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPointCount:I

    .line 184
    iget v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPointCountNew:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPointCountNew:I

    .line 185
    return-void
.end method

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
    .line 494
    .local p1, points:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/MotionPoint;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public deserialize(Ljava/io/ByteArrayInputStream;)I
    .locals 28
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    if-nez p1, :cond_0

    .line 413
    const/high16 v2, -0x8000

    .line 484
    :goto_0
    return v2

    .line 415
    :cond_0
    const/4 v2, 0x1

    new-array v10, v2, [B

    .line 416
    .local v10, byteBuffer:[B
    const/4 v2, 0x2

    new-array v0, v2, [B

    move-object/from16 v21, v0

    .line 417
    .local v21, shortBuffer:[B
    const/4 v2, 0x4

    new-array v15, v2, [B

    .line 421
    .local v15, intBuffer:[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 422
    const/4 v2, 0x0

    aget-byte v23, v10, v2

    .line 424
    .local v23, version:B
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 425
    const/4 v2, 0x0

    aget-byte v2, v10, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mIsEffective:Z

    .line 427
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 428
    invoke-static {v15}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToInt([B)I

    move-result v19

    .line 430
    .local v19, pointsCount:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    .line 431
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    .line 433
    const/16 v16, 0x0

    .line 434
    .local v16, mPreX:F
    const/16 v17, 0x0

    .line 436
    .local v17, mPreY:F
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    move/from16 v0, v19

    if-ge v14, v0, :cond_4

    .line 437
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 438
    invoke-static/range {v21 .. v21}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToShort([B)S

    move-result v12

    .line 440
    .local v12, deltaX:S
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 441
    invoke-static/range {v21 .. v21}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToShort([B)S

    move-result v13

    .line 444
    .local v13, deltaY:S
    int-to-float v2, v12

    add-float v25, v16, v2

    .line 445
    .local v25, x:F
    int-to-float v2, v13

    add-float v26, v17, v2

    .line 447
    .local v26, y:F
    if-nez v14, :cond_2

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 456
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v27, v0

    new-instance v2, Lcom/htc/painting/engine/MotionPoint;

    move/from16 v0, v25

    float-to-int v3, v0

    move/from16 v0, v26

    float-to-int v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/htc/painting/engine/MotionPoint;-><init>(IIFFFJ)V

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    move/from16 v16, v25

    .line 458
    move/from16 v17, v26

    .line 436
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 425
    .end local v12           #deltaX:S
    .end local v13           #deltaY:S
    .end local v14           #i:I
    .end local v16           #mPreX:F
    .end local v17           #mPreY:F
    .end local v19           #pointsCount:I
    .end local v25           #x:F
    .end local v26           #y:F
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 449
    .restart local v12       #deltaX:S
    .restart local v13       #deltaY:S
    .restart local v14       #i:I
    .restart local v16       #mPreX:F
    .restart local v17       #mPreY:F
    .restart local v19       #pointsCount:I
    .restart local v25       #x:F
    .restart local v26       #y:F
    :cond_2
    add-int/lit8 v2, v19, -0x1

    if-ne v14, v2, :cond_3

    .line 450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    .line 452
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    add-float v3, v25, v16

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float v4, v26, v17

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_3

    .line 461
    .end local v12           #deltaX:S
    .end local v13           #deltaY:S
    .end local v25           #x:F
    .end local v26           #y:F
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 462
    invoke-static {v15}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToInt([B)I

    move-result v22

    .line 463
    .local v22, strokeID:I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/stroke/SimpleStroke;->setStrokeId(I)V

    .line 465
    new-instance v18, Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct/range {v18 .. v18}, Lcom/htc/painting/engine/StrokeProperties;-><init>()V

    .line 467
    .local v18, p:Lcom/htc/painting/engine/StrokeProperties;
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 468
    invoke-static/range {v21 .. v21}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToShort([B)S

    move-result v24

    .line 469
    .local v24, width:I
    move/from16 v0, v24

    int-to-float v2, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/htc/painting/engine/StrokeProperties;->setWidth(F)V

    .line 471
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 472
    invoke-static {v15}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToInt([B)I

    move-result v11

    .line 473
    .local v11, color:I
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/htc/painting/engine/StrokeProperties;->setColor(I)V

    .line 475
    new-instance v20, Landroid/graphics/RectF;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/RectF;-><init>()V

    .line 476
    .local v20, r:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 477
    new-instance v2, Landroid/graphics/RectF;

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move/from16 v0, v24

    int-to-float v4, v0

    sub-float/2addr v3, v4

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move/from16 v0, v24

    int-to-float v5, v0

    sub-float/2addr v4, v5

    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/RectF;->right:F

    move/from16 v0, v24

    int-to-float v6, v0

    add-float/2addr v5, v6

    move-object/from16 v0, v20

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v0, v24

    int-to-float v7, v0

    add-float/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    .line 480
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    .line 482
    invoke-direct/range {p0 .. p0}, Lcom/htc/painting/engine/stroke/SimpleStroke;->prepareDefaultPaint()V

    .line 484
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/stroke/SimpleStroke;->getId()I

    move-result v2

    goto/16 :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSimplePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 98
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .locals 1
    .parameter "canvas"
    .parameter "path"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 106
    return-void
.end method

.method public getTotalBytes()I
    .locals 2

    .prologue
    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, result:I
    add-int/lit8 v0, v0, 0xe

    .line 345
    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v1, 0xe

    .line 347
    :cond_0
    return v0
.end method

.method protected onEnd()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/htc/painting/engine/stroke/SimpleStroke;->endPath()V

    .line 144
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
    .line 132
    new-instance v0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

    invoke-direct {v0, p2, p3, p4}, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;-><init>(FFF)V

    invoke-virtual {p0, v0}, Lcom/htc/painting/engine/stroke/SimpleStroke;->addPoint(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)V

    .line 133
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/engine/stroke/SimpleStroke;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    .line 134
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {v0, p6, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 135
    iget v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mHalfWidth:F

    neg-float v0, v0

    iget v1, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mHalfWidth:F

    neg-float v1, v1

    invoke-virtual {p6, v0, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 136
    return-void
.end method

.method protected onStart(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 2
    .parameter "canvas"
    .parameter "dirtyRect"

    .prologue
    const/4 v0, 0x0

    .line 117
    iput v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPointCount:I

    .line 118
    iput v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPointCountNew:I

    .line 119
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeProperties;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mThickness:F

    .line 120
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeProperties;->getWidth()F

    move-result v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mHalfWidth:F

    .line 121
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSimplePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 122
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSimplePathNew:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 123
    return-void
.end method

.method public serialize(Ljava/io/ByteArrayOutputStream;)Z
    .locals 14
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    const/4 v5, 0x0

    .line 360
    .local v5, pointsByteArray:[B
    const/4 v12, 0x1

    invoke-virtual {p1, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 362
    invoke-virtual {p0}, Lcom/htc/painting/engine/stroke/SimpleStroke;->isEffective()Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x1

    :goto_0
    int-to-byte v12, v12

    invoke-virtual {p1, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 364
    iget-object v12, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-static {v12}, Lcom/htc/painting/engine/HtcPaintingUtil;->intToByteArray(I)[B

    move-result-object v4

    .line 365
    .local v4, pointCount:[B
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 366
    const/4 v6, 0x0

    .line 367
    .local v6, preX:I
    const/4 v7, 0x0

    .line 369
    .local v7, preY:I
    iget-object v12, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    if-eqz v12, :cond_3

    .line 370
    iget-object v12, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    mul-int/lit8 v12, v12, 0x4

    new-array v5, v12, [B

    .line 371
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v12, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v3, v12, :cond_3

    .line 372
    iget-object v12, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v12}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v10

    .line 373
    .local v10, x:I
    iget-object v12, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v12}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v11

    .line 374
    .local v11, y:I
    sub-int v12, v10, v6

    const/16 v13, 0x7fff

    if-le v12, v13, :cond_1

    const/16 v1, 0x7fff

    .line 376
    .local v1, delatX:S
    :goto_2
    sub-int v12, v11, v7

    const/16 v13, 0x7fff

    if-le v12, v13, :cond_2

    const/16 v2, 0x7fff

    .line 378
    .local v2, deltaY:S
    :goto_3
    mul-int/lit8 v12, v3, 0x4

    add-int/lit8 v12, v12, 0x0

    shr-int/lit8 v13, v1, 0x8

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    .line 379
    mul-int/lit8 v12, v3, 0x4

    add-int/lit8 v12, v12, 0x1

    int-to-byte v13, v1

    aput-byte v13, v5, v12

    .line 380
    mul-int/lit8 v12, v3, 0x4

    add-int/lit8 v12, v12, 0x2

    shr-int/lit8 v13, v2, 0x8

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    .line 381
    mul-int/lit8 v12, v3, 0x4

    add-int/lit8 v12, v12, 0x3

    int-to-byte v13, v2

    aput-byte v13, v5, v12

    .line 382
    move v6, v10

    .line 383
    move v7, v11

    .line 371
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 362
    .end local v1           #delatX:S
    .end local v2           #deltaY:S
    .end local v3           #i:I
    .end local v4           #pointCount:[B
    .end local v6           #preX:I
    .end local v7           #preY:I
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    .line 374
    .restart local v3       #i:I
    .restart local v4       #pointCount:[B
    .restart local v6       #preX:I
    .restart local v7       #preY:I
    .restart local v10       #x:I
    .restart local v11       #y:I
    :cond_1
    sub-int v12, v10, v6

    int-to-short v1, v12

    goto :goto_2

    .line 376
    .restart local v1       #delatX:S
    :cond_2
    sub-int v12, v11, v7

    int-to-short v2, v12

    goto :goto_3

    .line 386
    .end local v1           #delatX:S
    .end local v3           #i:I
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_3
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 387
    const/4 v5, 0x0

    .line 390
    invoke-virtual {p0}, Lcom/htc/painting/engine/stroke/SimpleStroke;->getId()I

    move-result v12

    invoke-static {v12}, Lcom/htc/painting/engine/HtcPaintingUtil;->intToByteArray(I)[B

    move-result-object v8

    .line 391
    .local v8, strokeID:[B
    invoke-virtual {p1, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 394
    iget-object v12, p0, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v12}, Lcom/htc/painting/engine/StrokeProperties;->getWidth()F

    move-result v12

    float-to-int v12, v12

    int-to-short v12, v12

    invoke-static {v12}, Lcom/htc/painting/engine/HtcPaintingUtil;->shortToByteArray(S)[B

    move-result-object v9

    .line 396
    .local v9, widthBytes:[B
    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 399
    iget-object v12, p0, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v12}, Lcom/htc/painting/engine/StrokeProperties;->getColor()I

    move-result v12

    invoke-static {v12}, Lcom/htc/painting/engine/HtcPaintingUtil;->intToByteArray(I)[B

    move-result-object v0

    .line 401
    .local v0, colorBytes:[B
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 403
    const/4 v12, 0x1

    return v12
.end method

.method protected updateBoundingRect(Landroid/graphics/RectF;)V
    .locals 3
    .parameter "dirtyRect"

    .prologue
    .line 643
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 644
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mHalfWidth:F

    neg-float v1, v1

    iget v2, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mHalfWidth:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 645
    return-void
.end method
