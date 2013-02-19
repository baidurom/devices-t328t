.class public Lcom/htc/painting/engine/eraser/EraserService;
.super Ljava/lang/Object;
.source "EraserService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EraserService"


# instance fields
.field private eraserEnd:Lcom/htc/painting/engine/MotionPoint;

.field private eraserEndRadius:F

.field private eraserLength:F

.field private eraserOrigin:Lcom/htc/painting/engine/MotionPoint;

.field private eraserOriginRadius:F

.field private final eraserPolygon:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/MotionPoint;",
            ">;"
        }
    .end annotation
.end field

.field private strokeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/stroke/Stroke;",
            ">;"
        }
    .end annotation
.end field

.field private final strokesToRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/painting/engine/stroke/Stroke;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserPolygon:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/eraser/EraserService;->strokesToRemove:Ljava/util/ArrayList;

    .line 57
    return-void
.end method

.method private static circleBoundingRectForCenter(Lcom/htc/painting/engine/MotionPoint;F)Landroid/graphics/RectF;
    .locals 5
    .parameter "aCenter"
    .parameter "aRadius"

    .prologue
    .line 519
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p1

    invoke-virtual {p0}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method private computeEraserPolygon()V
    .locals 11

    .prologue
    .line 190
    iget v4, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserLength:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 191
    iget-object v4, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserPolygon:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 192
    new-instance v0, Lcom/htc/painting/engine/MotionPoint;

    iget v4, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserOriginRadius:F

    iget v5, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserLength:F

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserEnd:Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v5}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v5

    iget-object v6, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserOrigin:Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v6}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserOrigin:Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v5}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/high16 v5, 0x3f00

    add-float/2addr v4, v5

    float-to-int v1, v4

    iget v4, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserOriginRadius:F

    iget v5, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserLength:F

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserOrigin:Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v5}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v5

    iget-object v6, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserEnd:Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v6}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserOrigin:Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v5}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/high16 v5, 0x3f00

    add-float/2addr v4, v5

    float-to-int v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/htc/painting/engine/MotionPoint;-><init>(IIFFFJ)V

    .line 197
    .local v0, A:Lcom/htc/painting/engine/MotionPoint;
    new-instance v1, Lcom/htc/painting/engine/MotionPoint;

    iget v4, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserOriginRadius:F

    iget v5, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserLength:F

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserOrigin:Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v5}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v5

    iget-object v6, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserEnd:Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v6}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserOrigin:Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v5}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/high16 v5, 0x3f00

    add-float/2addr v4, v5

    float-to-int v2, v4

    iget v4, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserOriginRadius:F

    iget v5, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserLength:F

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserEnd:Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v5}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v5

    iget-object v6, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserOrigin:Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v6}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserOrigin:Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v5}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/high16 v5, 0x3f00

    add-float/2addr v4, v5

    float-to-int v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/htc/painting/engine/MotionPoint;-><init>(IIFFFJ)V

    .line 202
    .local v1, B:Lcom/htc/painting/engine/MotionPoint;
    new-instance v2, Lcom/htc/painting/engine/MotionPoint;

    iget v4, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserEndRadius:F

    iget v5, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserLength:F

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserOrigin:Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v5}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v5

    iget-object v6, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserEnd:Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v6}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserEnd:Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v5}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/high16 v5, 0x3f00

    add-float/2addr v4, v5

    float-to-int v3, v4

    iget v4, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserEndRadius:F

    iget v5, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserLength:F

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserEnd:Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v5}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v5

    iget-object v6, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserOrigin:Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v6}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserEnd:Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v5}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/high16 v5, 0x3f00

    add-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/htc/painting/engine/MotionPoint;-><init>(IIFFFJ)V

    .line 207
    .local v2, C:Lcom/htc/painting/engine/MotionPoint;
    new-instance v3, Lcom/htc/painting/engine/MotionPoint;

    iget v4, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserEndRadius:F

    iget v5, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserLength:F

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserEnd:Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v5}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v5

    iget-object v6, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserOrigin:Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v6}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserEnd:Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v5}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/high16 v5, 0x3f00

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserEndRadius:F

    iget v6, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserLength:F

    div-float/2addr v5, v6

    iget-object v6, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserOrigin:Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v6}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v6

    iget-object v7, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserEnd:Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v7}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserEnd:Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v6}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/htc/painting/engine/MotionPoint;-><init>(IIFFFJ)V

    .line 212
    .local v3, D:Lcom/htc/painting/engine/MotionPoint;
    iget-object v4, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserPolygon:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v4, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserPolygon:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v4, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserPolygon:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v4, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserPolygon:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    .end local v0           #A:Lcom/htc/painting/engine/MotionPoint;
    .end local v1           #B:Lcom/htc/painting/engine/MotionPoint;
    .end local v2           #C:Lcom/htc/painting/engine/MotionPoint;
    .end local v3           #D:Lcom/htc/painting/engine/MotionPoint;
    :cond_0
    return-void
.end method

.method private eraseForStrokesIn(Ljava/util/List;)V
    .locals 36
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/stroke/Stroke;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, aStrokeArray:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/eraser/EraserService;->computeEraserBoundingBox()Landroid/graphics/RectF;

    move-result-object v7

    .line 230
    .local v7, eraserBoundingBox:Landroid/graphics/RectF;
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/eraser/EraserService;->strokeList:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 232
    .local v3, allStrokes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v28

    .line 233
    .local v28, size:I
    const/16 v19, 0x0

    .local v19, j:I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v28

    if-ge v0, v1, :cond_11

    .line 234
    move/from16 v0, v19

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/htc/painting/engine/stroke/Stroke;

    .line 235
    .local v29, stroke:Lcom/htc/painting/engine/stroke/Stroke;
    invoke-virtual/range {v29 .. v29}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v24

    .line 239
    .local v24, points:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/MotionPoint;>;"
    invoke-virtual/range {v29 .. v29}, Lcom/htc/painting/engine/stroke/Stroke;->getRect()Landroid/graphics/RectF;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v0, v7}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v33

    if-eqz v33, :cond_1

    .line 240
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v23

    .line 244
    .local v23, pointCount:I
    const/16 v33, 0x1

    move/from16 v0, v23

    move/from16 v1, v33

    if-ne v0, v1, :cond_2

    .line 245
    const/16 v33, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/painting/engine/MotionPoint;

    .line 246
    .local v14, inkPoint:Lcom/htc/painting/engine/MotionPoint;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/painting/engine/eraser/EraserService;->pointInEraserSegment(Lcom/htc/painting/engine/MotionPoint;)Z

    move-result v33

    if-eqz v33, :cond_1

    .line 247
    if-eqz v29, :cond_0

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/eraser/EraserService;->strokesToRemove:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/eraser/EraserService;->strokeList:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 233
    .end local v14           #inkPoint:Lcom/htc/painting/engine/MotionPoint;
    .end local v23           #pointCount:I
    :cond_1
    :goto_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 256
    .restart local v23       #pointCount:I
    :cond_2
    invoke-virtual/range {v29 .. v29}, Lcom/htc/painting/engine/stroke/Stroke;->getProperties()Lcom/htc/painting/engine/StrokeProperties;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/htc/painting/engine/StrokeProperties;->getWidth()F

    move-result v31

    .line 258
    .local v31, strokeWidth:F
    const/16 v30, 0x0

    .line 259
    .local v30, strokeToRemove:Z
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v20, newStrokePoints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/painting/engine/MotionPoint;>;"
    const/4 v12, 0x0

    .line 261
    .local v12, inkP1:Lcom/htc/painting/engine/MotionPoint;
    const/16 v33, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/painting/engine/MotionPoint;

    .line 263
    .local v13, inkP2:Lcom/htc/painting/engine/MotionPoint;
    const/4 v10, 0x1

    .local v10, i:I
    :goto_2
    move/from16 v0, v23

    if-ge v10, v0, :cond_e

    .line 265
    move-object v12, v13

    .line 266
    move-object/from16 v0, v24

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #inkP2:Lcom/htc/painting/engine/MotionPoint;
    check-cast v13, Lcom/htc/painting/engine/MotionPoint;

    .line 270
    .restart local v13       #inkP2:Lcom/htc/painting/engine/MotionPoint;
    move/from16 v0, v31

    invoke-static {v12, v13, v0}, Lcom/htc/painting/engine/eraser/EraserService;->strokeSegmentBoundingBoxFrom(Lcom/htc/painting/engine/MotionPoint;Lcom/htc/painting/engine/MotionPoint;F)Landroid/graphics/RectF;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v7, v0}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v33

    if-eqz v33, :cond_b

    .line 277
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v15, intersection:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/painting/engine/MotionPoint;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v15}, Lcom/htc/painting/engine/eraser/EraserService;->storeIntersectionWithEraserSegmentOfSegmentFrom(Lcom/htc/painting/engine/MotionPoint;Lcom/htc/painting/engine/MotionPoint;Ljava/util/ArrayList;)Z

    move-result v18

    .line 280
    .local v18, intersects:Z
    if-eqz v18, :cond_9

    .line 282
    const-string v33, "EraserSercie"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, " intersection index :"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    add-int/lit8 v35, v10, -0x1

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " to "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " point1 x: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v12}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " y: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v12}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " point2 x: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v13}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " y: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v13}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const/16 v30, 0x1

    .line 291
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 293
    .local v17, intersectionPointCount:I
    if-nez v17, :cond_4

    .line 263
    .end local v15           #intersection:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/painting/engine/MotionPoint;>;"
    .end local v17           #intersectionPointCount:I
    .end local v18           #intersects:Z
    :cond_3
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 297
    .restart local v15       #intersection:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/painting/engine/MotionPoint;>;"
    .restart local v17       #intersectionPointCount:I
    .restart local v18       #intersects:Z
    :cond_4
    const/16 v33, 0x1

    move/from16 v0, v17

    move/from16 v1, v33

    if-ne v0, v1, :cond_6

    .line 300
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/painting/engine/MotionPoint;

    .line 302
    .local v16, intersectionPoint:Lcom/htc/painting/engine/MotionPoint;
    move-object/from16 v0, v16

    invoke-static {v12, v0}, Lcom/htc/painting/engine/MotionPoint;->distanceBetweenPoint(Lcom/htc/painting/engine/MotionPoint;Lcom/htc/painting/engine/MotionPoint;)F

    move-result v33

    invoke-static {v12, v13}, Lcom/htc/painting/engine/MotionPoint;->distanceBetweenPoint(Lcom/htc/painting/engine/MotionPoint;Lcom/htc/painting/engine/MotionPoint;)F

    move-result v34

    div-float v25, v33, v34

    .line 308
    .local v25, ratio:F
    const-string v33, "EraserSercie"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, " intersection 1 point x: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v16 .. v16}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " Y: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v16 .. v16}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const/high16 v33, 0x3f80

    sub-float v33, v33, v25

    invoke-virtual {v12}, Lcom/htc/painting/engine/MotionPoint;->getActionPressure()F

    move-result v34

    mul-float v33, v33, v34

    invoke-virtual {v13}, Lcom/htc/painting/engine/MotionPoint;->getActionPressure()F

    move-result v34

    mul-float v34, v34, v25

    add-float v33, v33, v34

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/MotionPoint;->setActionPressure(F)V

    .line 319
    const/high16 v33, 0x3f80

    sub-float v33, v33, v25

    invoke-virtual {v12}, Lcom/htc/painting/engine/MotionPoint;->getTimeOffset()J

    move-result-wide v34

    move-wide/from16 v0, v34

    long-to-float v0, v0

    move/from16 v34, v0

    mul-float v33, v33, v34

    invoke-virtual {v13}, Lcom/htc/painting/engine/MotionPoint;->getTimeOffset()J

    move-result-wide v34

    move-wide/from16 v0, v34

    long-to-float v0, v0

    move/from16 v34, v0

    mul-float v34, v34, v25

    add-float v33, v33, v34

    move/from16 v0, v33

    float-to-long v0, v0

    move-wide/from16 v33, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/engine/MotionPoint;->setTimeOffset(J)V

    .line 323
    const/high16 v33, 0x3f80

    sub-float v33, v33, v25

    invoke-virtual {v12}, Lcom/htc/painting/engine/MotionPoint;->getDistance()F

    move-result v34

    mul-float v33, v33, v34

    invoke-virtual {v13}, Lcom/htc/painting/engine/MotionPoint;->getDistance()F

    move-result v34

    mul-float v34, v34, v25

    add-float v33, v33, v34

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/MotionPoint;->setDistance(F)V

    .line 328
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/painting/engine/eraser/EraserService;->pointInEraserSegment(Lcom/htc/painting/engine/MotionPoint;)Z

    move-result v22

    .line 329
    .local v22, p2InEraserStroke:Z
    if-eqz v22, :cond_5

    .line 333
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/stroke/Stroke;->create(Ljava/util/List;)Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v26

    .line 352
    .local v26, s:Lcom/htc/painting/engine/stroke/Stroke;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/eraser/EraserService;->strokeList:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3

    .line 359
    .end local v26           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_5
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 362
    .end local v16           #intersectionPoint:Lcom/htc/painting/engine/MotionPoint;
    .end local v22           #p2InEraserStroke:Z
    .end local v25           #ratio:F
    :cond_6
    const/16 v33, 0x2

    move/from16 v0, v17

    move/from16 v1, v33

    if-ne v0, v1, :cond_3

    .line 367
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/painting/engine/MotionPoint;

    .line 369
    .local v8, firstPoint:Lcom/htc/painting/engine/MotionPoint;
    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/htc/painting/engine/MotionPoint;

    .line 373
    .local v27, secondPoint:Lcom/htc/painting/engine/MotionPoint;
    const-string v33, "EraserSercie"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, " intersection 2 points first x: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v8}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " Y: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v8}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " second x: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v27 .. v27}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " y: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v27 .. v27}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-static {v12, v8}, Lcom/htc/painting/engine/MotionPoint;->distanceBetweenPoint(Lcom/htc/painting/engine/MotionPoint;Lcom/htc/painting/engine/MotionPoint;)F

    move-result v4

    .line 387
    .local v4, distFirstPointToP1:F
    move-object/from16 v0, v27

    invoke-static {v12, v0}, Lcom/htc/painting/engine/MotionPoint;->distanceBetweenPoint(Lcom/htc/painting/engine/MotionPoint;Lcom/htc/painting/engine/MotionPoint;)F

    move-result v5

    .line 390
    .local v5, distSecondPointToP1:F
    cmpg-float v33, v4, v5

    if-gez v33, :cond_8

    const/4 v9, 0x1

    .line 391
    .local v9, firstPointClosestToP1:Z
    :goto_4
    if-nez v9, :cond_7

    .line 392
    move-object/from16 v32, v8

    .line 393
    .local v32, tempPoint:Lcom/htc/painting/engine/MotionPoint;
    move-object/from16 v8, v27

    .line 394
    move-object/from16 v27, v32

    .line 399
    .end local v32           #tempPoint:Lcom/htc/painting/engine/MotionPoint;
    :cond_7
    invoke-static {v12, v13}, Lcom/htc/painting/engine/MotionPoint;->distanceBetweenPoint(Lcom/htc/painting/engine/MotionPoint;Lcom/htc/painting/engine/MotionPoint;)F

    move-result v6

    .line 401
    .local v6, distanceBetweenPoint:F
    div-float v25, v4, v6

    .line 405
    .restart local v25       #ratio:F
    const/high16 v33, 0x3f80

    sub-float v33, v33, v25

    invoke-virtual {v12}, Lcom/htc/painting/engine/MotionPoint;->getActionPressure()F

    move-result v34

    mul-float v33, v33, v34

    invoke-virtual {v13}, Lcom/htc/painting/engine/MotionPoint;->getActionPressure()F

    move-result v34

    mul-float v34, v34, v25

    add-float v33, v33, v34

    move/from16 v0, v33

    invoke-virtual {v8, v0}, Lcom/htc/painting/engine/MotionPoint;->setActionPressure(F)V

    .line 408
    const/high16 v33, 0x3f80

    sub-float v33, v33, v25

    invoke-virtual {v12}, Lcom/htc/painting/engine/MotionPoint;->getTimeOffset()J

    move-result-wide v34

    move-wide/from16 v0, v34

    long-to-float v0, v0

    move/from16 v34, v0

    mul-float v33, v33, v34

    invoke-virtual {v13}, Lcom/htc/painting/engine/MotionPoint;->getTimeOffset()J

    move-result-wide v34

    move-wide/from16 v0, v34

    long-to-float v0, v0

    move/from16 v34, v0

    mul-float v34, v34, v25

    add-float v33, v33, v34

    move/from16 v0, v33

    float-to-long v0, v0

    move-wide/from16 v33, v0

    move-wide/from16 v0, v33

    invoke-virtual {v8, v0, v1}, Lcom/htc/painting/engine/MotionPoint;->setTimeOffset(J)V

    .line 412
    const/high16 v33, 0x3f80

    sub-float v33, v33, v25

    invoke-virtual {v12}, Lcom/htc/painting/engine/MotionPoint;->getDistance()F

    move-result v34

    mul-float v33, v33, v34

    invoke-virtual {v13}, Lcom/htc/painting/engine/MotionPoint;->getDistance()F

    move-result v34

    mul-float v34, v34, v25

    add-float v33, v33, v34

    move/from16 v0, v33

    invoke-virtual {v8, v0}, Lcom/htc/painting/engine/MotionPoint;->setDistance(F)V

    .line 415
    div-float v25, v5, v6

    .line 417
    const/high16 v33, 0x3f80

    sub-float v33, v33, v25

    invoke-virtual {v12}, Lcom/htc/painting/engine/MotionPoint;->getActionPressure()F

    move-result v34

    mul-float v33, v33, v34

    invoke-virtual {v13}, Lcom/htc/painting/engine/MotionPoint;->getActionPressure()F

    move-result v34

    mul-float v34, v34, v25

    add-float v33, v33, v34

    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/MotionPoint;->setActionPressure(F)V

    .line 420
    const/high16 v33, 0x3f80

    sub-float v33, v33, v25

    invoke-virtual {v12}, Lcom/htc/painting/engine/MotionPoint;->getTimeOffset()J

    move-result-wide v34

    move-wide/from16 v0, v34

    long-to-float v0, v0

    move/from16 v34, v0

    mul-float v33, v33, v34

    invoke-virtual {v13}, Lcom/htc/painting/engine/MotionPoint;->getTimeOffset()J

    move-result-wide v34

    move-wide/from16 v0, v34

    long-to-float v0, v0

    move/from16 v34, v0

    mul-float v34, v34, v25

    add-float v33, v33, v34

    move/from16 v0, v33

    float-to-long v0, v0

    move-wide/from16 v33, v0

    move-object/from16 v0, v27

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/engine/MotionPoint;->setTimeOffset(J)V

    .line 423
    const/high16 v33, 0x3f80

    sub-float v33, v33, v25

    invoke-virtual {v12}, Lcom/htc/painting/engine/MotionPoint;->getDistance()F

    move-result v34

    mul-float v33, v33, v34

    invoke-virtual {v13}, Lcom/htc/painting/engine/MotionPoint;->getDistance()F

    move-result v34

    mul-float v34, v34, v25

    add-float v33, v33, v34

    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/MotionPoint;->setDistance(F)V

    .line 428
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/stroke/Stroke;->create(Ljava/util/List;)Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v26

    .line 442
    .restart local v26       #s:Lcom/htc/painting/engine/stroke/Stroke;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/eraser/EraserService;->strokeList:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 446
    .local v11, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/eraser/EraserService;->strokeList:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-interface {v0, v11, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 449
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 450
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 390
    .end local v6           #distanceBetweenPoint:F
    .end local v9           #firstPointClosestToP1:Z
    .end local v11           #index:I
    .end local v25           #ratio:F
    .end local v26           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 454
    .end local v4           #distFirstPointToP1:F
    .end local v5           #distSecondPointToP1:F
    .end local v8           #firstPoint:Lcom/htc/painting/engine/MotionPoint;
    .end local v17           #intersectionPointCount:I
    .end local v27           #secondPoint:Lcom/htc/painting/engine/MotionPoint;
    :cond_9
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_a

    .line 455
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    :cond_a
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 460
    .end local v15           #intersection:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/painting/engine/MotionPoint;>;"
    .end local v18           #intersects:Z
    :cond_b
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 461
    .local v21, newStrokePointsSize:I
    if-lez v21, :cond_d

    .line 462
    add-int/lit8 v33, v21, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v0, v33

    if-eq v0, v12, :cond_c

    .line 464
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    :cond_c
    :goto_5
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 466
    :cond_d
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 472
    .end local v21           #newStrokePointsSize:I
    :cond_e
    if-eqz v30, :cond_f

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v33

    if-lez v33, :cond_f

    .line 481
    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/stroke/Stroke;->create(Ljava/util/List;)Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v26

    .line 484
    .restart local v26       #s:Lcom/htc/painting/engine/stroke/Stroke;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/eraser/EraserService;->strokeList:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 485
    .restart local v11       #index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/eraser/EraserService;->strokeList:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-interface {v0, v11, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 488
    .end local v11           #index:I
    .end local v26           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_f
    if-eqz v30, :cond_10

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/eraser/EraserService;->strokesToRemove:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/eraser/EraserService;->strokeList:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 492
    :cond_10
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    .line 496
    .end local v10           #i:I
    .end local v12           #inkP1:Lcom/htc/painting/engine/MotionPoint;
    .end local v13           #inkP2:Lcom/htc/painting/engine/MotionPoint;
    .end local v20           #newStrokePoints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/painting/engine/MotionPoint;>;"
    .end local v23           #pointCount:I
    .end local v24           #points:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/MotionPoint;>;"
    .end local v29           #stroke:Lcom/htc/painting/engine/stroke/Stroke;
    .end local v30           #strokeToRemove:Z
    .end local v31           #strokeWidth:F
    :cond_11
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 497
    return-void
.end method

.method private intersectionOfSegmentFrom(Lcom/htc/painting/engine/MotionPoint;Lcom/htc/painting/engine/MotionPoint;Lcom/htc/painting/engine/MotionPoint;F)Lcom/htc/painting/engine/eraser/CircleIntersection;
    .locals 12
    .parameter "a1"
    .parameter "a2"
    .parameter "aCenter"
    .parameter "aRadius"

    .prologue
    .line 678
    new-instance v5, Lcom/htc/painting/engine/eraser/CircleIntersection;

    invoke-direct {v5}, Lcom/htc/painting/engine/eraser/CircleIntersection;-><init>()V

    .line 679
    .local v5, result:Lcom/htc/painting/engine/eraser/CircleIntersection;
    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/htc/painting/engine/eraser/CircleIntersection;->inside:Z

    .line 680
    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/htc/painting/engine/eraser/CircleIntersection;->tangent:Z

    .line 681
    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/htc/painting/engine/eraser/CircleIntersection;->intersect:Z

    .line 682
    invoke-virtual {p2}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v8

    invoke-virtual {p1}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p2}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v9

    invoke-virtual {p1}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v10

    sub-int/2addr v9, v10

    mul-int/2addr v8, v9

    invoke-virtual {p2}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v9

    invoke-virtual {p1}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p2}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v10

    invoke-virtual {p1}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v11

    sub-int/2addr v10, v11

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    int-to-float v0, v8

    .line 684
    .local v0, a:F
    invoke-virtual {p2}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v8

    invoke-virtual {p1}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p1}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v9

    invoke-virtual {p3}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v10

    sub-int/2addr v9, v10

    mul-int/2addr v8, v9

    invoke-virtual {p2}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v9

    invoke-virtual {p1}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p1}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v10

    invoke-virtual {p3}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v11

    sub-int/2addr v10, v11

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0x2

    int-to-float v1, v8

    .line 686
    .local v1, b:F
    invoke-virtual {p3}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v8

    invoke-virtual {p3}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v9

    mul-int/2addr v8, v9

    invoke-virtual {p3}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v9

    invoke-virtual {p3}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v10

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    invoke-virtual {p1}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v9

    invoke-virtual {p1}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v10

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    invoke-virtual {p1}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v9

    invoke-virtual {p1}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v10

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    invoke-virtual {p3}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v9

    invoke-virtual {p1}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v10

    mul-int/2addr v9, v10

    invoke-virtual {p3}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v10

    invoke-virtual {p1}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v11

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float v9, p4, p4

    sub-float v2, v8, v9

    .line 691
    .local v2, cc:F
    mul-float v8, v1, v1

    const/high16 v9, 0x4080

    mul-float/2addr v9, v0

    mul-float/2addr v9, v2

    sub-float v3, v8, v9

    .line 692
    .local v3, deter:F
    const/4 v8, 0x0

    cmpg-float v8, v3, v8

    if-gtz v8, :cond_1

    .line 693
    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/htc/painting/engine/eraser/CircleIntersection;->inside:Z

    .line 717
    :cond_0
    :goto_0
    return-object v5

    .line 695
    :cond_1
    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v4, v8

    .line 696
    .local v4, e:F
    neg-float v8, v1

    add-float/2addr v8, v4

    const/high16 v9, 0x4000

    mul-float/2addr v9, v0

    div-float v6, v8, v9

    .line 697
    .local v6, u1:F
    neg-float v8, v1

    sub-float/2addr v8, v4

    const/high16 v9, 0x4000

    mul-float/2addr v9, v0

    div-float v7, v8, v9

    .line 698
    .local v7, u2:F
    const/4 v8, 0x0

    cmpg-float v8, v6, v8

    if-ltz v8, :cond_2

    const/high16 v8, 0x3f80

    cmpl-float v8, v6, v8

    if-lez v8, :cond_7

    :cond_2
    const/4 v8, 0x0

    cmpg-float v8, v7, v8

    if-ltz v8, :cond_3

    const/high16 v8, 0x3f80

    cmpl-float v8, v7, v8

    if-lez v8, :cond_7

    .line 699
    :cond_3
    const/4 v8, 0x0

    cmpg-float v8, v6, v8

    if-gez v8, :cond_4

    const/4 v8, 0x0

    cmpg-float v8, v7, v8

    if-ltz v8, :cond_5

    :cond_4
    const/high16 v8, 0x3f80

    cmpl-float v8, v6, v8

    if-lez v8, :cond_6

    const/high16 v8, 0x3f80

    cmpl-float v8, v7, v8

    if-lez v8, :cond_6

    .line 700
    :cond_5
    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/htc/painting/engine/eraser/CircleIntersection;->inside:Z

    goto :goto_0

    .line 702
    :cond_6
    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/htc/painting/engine/eraser/CircleIntersection;->inside:Z

    goto :goto_0

    .line 704
    :cond_7
    const/4 v8, 0x0

    cmpg-float v8, v8, v7

    if-gtz v8, :cond_8

    const/high16 v8, 0x3f80

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_8

    .line 705
    invoke-virtual {p0, p1, p2, v7}, Lcom/htc/painting/engine/eraser/EraserService;->interpolateWithPoint(Lcom/htc/painting/engine/MotionPoint;Lcom/htc/painting/engine/MotionPoint;F)Lcom/htc/painting/engine/MotionPoint;

    move-result-object v8

    iput-object v8, v5, Lcom/htc/painting/engine/eraser/CircleIntersection;->enter:Lcom/htc/painting/engine/MotionPoint;

    .line 708
    :cond_8
    const/4 v8, 0x0

    cmpg-float v8, v8, v6

    if-gtz v8, :cond_9

    const/high16 v8, 0x3f80

    cmpg-float v8, v6, v8

    if-gtz v8, :cond_9

    .line 709
    invoke-virtual {p0, p1, p2, v6}, Lcom/htc/painting/engine/eraser/EraserService;->interpolateWithPoint(Lcom/htc/painting/engine/MotionPoint;Lcom/htc/painting/engine/MotionPoint;F)Lcom/htc/painting/engine/MotionPoint;

    move-result-object v8

    iput-object v8, v5, Lcom/htc/painting/engine/eraser/CircleIntersection;->exit:Lcom/htc/painting/engine/MotionPoint;

    .line 711
    :cond_9
    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/htc/painting/engine/eraser/CircleIntersection;->intersect:Z

    .line 712
    iget-object v8, v5, Lcom/htc/painting/engine/eraser/CircleIntersection;->enter:Lcom/htc/painting/engine/MotionPoint;

    if-eqz v8, :cond_0

    iget-object v8, v5, Lcom/htc/painting/engine/eraser/CircleIntersection;->enter:Lcom/htc/painting/engine/MotionPoint;

    if-eqz v8, :cond_0

    iget-object v8, v5, Lcom/htc/painting/engine/eraser/CircleIntersection;->enter:Lcom/htc/painting/engine/MotionPoint;

    iget-object v9, v5, Lcom/htc/painting/engine/eraser/CircleIntersection;->exit:Lcom/htc/painting/engine/MotionPoint;

    if-ne v8, v9, :cond_0

    .line 714
    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/htc/painting/engine/eraser/CircleIntersection;->tangent:Z

    goto :goto_0
.end method

.method private storeIntersectionWithEraserSegmentOfSegmentFrom(Lcom/htc/painting/engine/MotionPoint;Lcom/htc/painting/engine/MotionPoint;Ljava/util/ArrayList;)Z
    .locals 27
    .parameter "a1"
    .parameter "a2"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/painting/engine/MotionPoint;",
            "Lcom/htc/painting/engine/MotionPoint;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/painting/engine/MotionPoint;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 603
    .local p3, anArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/painting/engine/MotionPoint;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/htc/painting/engine/eraser/EraserService;->pointInEraserSegment(Lcom/htc/painting/engine/MotionPoint;)Z

    move-result v14

    .line 604
    .local v14, a1InEraserSegment:Z
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/eraser/EraserService;->pointInEraserSegment(Lcom/htc/painting/engine/MotionPoint;)Z

    move-result v15

    .line 605
    .local v15, a2InEraserSegment:Z
    if-nez v14, :cond_0

    if-eqz v15, :cond_1

    :cond_0
    const/16 v16, 0x1

    .line 607
    .local v16, anExtremityInEraserSegment:Z
    :goto_0
    if-eqz v14, :cond_2

    if-eqz v15, :cond_2

    .line 608
    const/4 v3, 0x1

    .line 672
    :goto_1
    return v3

    .line 605
    .end local v16           #anExtremityInEraserSegment:Z
    :cond_1
    const/16 v16, 0x0

    goto :goto_0

    .line 612
    .restart local v16       #anExtremityInEraserSegment:Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/eraser/EraserService;->eraserPolygon:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 613
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/eraser/EraserService;->eraserPolygon:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/painting/engine/MotionPoint;

    .line 614
    .local v6, A:Lcom/htc/painting/engine/MotionPoint;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/eraser/EraserService;->eraserPolygon:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/painting/engine/MotionPoint;

    .line 615
    .local v11, B:Lcom/htc/painting/engine/MotionPoint;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/eraser/EraserService;->eraserPolygon:Ljava/util/List;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/painting/engine/MotionPoint;

    .line 616
    .local v12, C:Lcom/htc/painting/engine/MotionPoint;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/eraser/EraserService;->eraserPolygon:Ljava/util/List;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/painting/engine/MotionPoint;

    .local v7, D:Lcom/htc/painting/engine/MotionPoint;
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v8, p3

    .line 617
    invoke-virtual/range {v3 .. v8}, Lcom/htc/painting/engine/eraser/EraserService;->storeIntersectionOfSegmentFrom(Lcom/htc/painting/engine/MotionPoint;Lcom/htc/painting/engine/MotionPoint;Lcom/htc/painting/engine/MotionPoint;Lcom/htc/painting/engine/MotionPoint;Ljava/util/List;)Z

    move-result v23

    .local v23, intersectsWithAD:Z
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v13, p3

    .line 619
    invoke-virtual/range {v8 .. v13}, Lcom/htc/painting/engine/eraser/EraserService;->storeIntersectionOfSegmentFrom(Lcom/htc/painting/engine/MotionPoint;Lcom/htc/painting/engine/MotionPoint;Lcom/htc/painting/engine/MotionPoint;Lcom/htc/painting/engine/MotionPoint;Ljava/util/List;)Z

    move-result v24

    .line 621
    .local v24, intersectsWithBC:Z
    if-eqz v16, :cond_4

    if-nez v23, :cond_3

    if-eqz v24, :cond_4

    .line 624
    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    .line 626
    :cond_4
    if-nez v16, :cond_5

    if-eqz v24, :cond_5

    if-eqz v23, :cond_5

    .line 629
    const/4 v3, 0x1

    goto :goto_1

    .line 635
    .end local v6           #A:Lcom/htc/painting/engine/MotionPoint;
    .end local v7           #D:Lcom/htc/painting/engine/MotionPoint;
    .end local v11           #B:Lcom/htc/painting/engine/MotionPoint;
    .end local v12           #C:Lcom/htc/painting/engine/MotionPoint;
    .end local v23           #intersectsWithAD:Z
    .end local v24           #intersectsWithBC:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/eraser/EraserService;->eraserOrigin:Lcom/htc/painting/engine/MotionPoint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/painting/engine/eraser/EraserService;->eraserOriginRadius:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/painting/engine/eraser/EraserService;->intersectionOfSegmentFrom(Lcom/htc/painting/engine/MotionPoint;Lcom/htc/painting/engine/MotionPoint;Lcom/htc/painting/engine/MotionPoint;F)Lcom/htc/painting/engine/eraser/CircleIntersection;

    move-result-object v25

    .line 637
    .local v25, resultC1:Lcom/htc/painting/engine/eraser/CircleIntersection;
    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/htc/painting/engine/eraser/CircleIntersection;->intersect:Z

    move/from16 v21, v0

    .line 638
    .local v21, intersectC1:Z
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/painting/engine/eraser/CircleIntersection;->enter:Lcom/htc/painting/engine/MotionPoint;

    move-object/from16 v17, v0

    .line 639
    .local v17, enterC1:Lcom/htc/painting/engine/MotionPoint;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/painting/engine/eraser/CircleIntersection;->exit:Lcom/htc/painting/engine/MotionPoint;

    move-object/from16 v19, v0

    .line 643
    .local v19, exitC1:Lcom/htc/painting/engine/MotionPoint;
    if-eqz v21, :cond_6

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/htc/painting/engine/eraser/CircleIntersection;->enter:Lcom/htc/painting/engine/MotionPoint;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/eraser/EraserService;->eraserPolygon:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Lcom/htc/painting/engine/eraser/EraserService;->point(Lcom/htc/painting/engine/MotionPoint;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 645
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    :cond_6
    if-eqz v21, :cond_7

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/htc/painting/engine/eraser/CircleIntersection;->exit:Lcom/htc/painting/engine/MotionPoint;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/eraser/EraserService;->eraserPolygon:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/htc/painting/engine/eraser/EraserService;->point(Lcom/htc/painting/engine/MotionPoint;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 648
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/painting/engine/eraser/EraserService;->eraserLength:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_9

    .line 653
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/eraser/EraserService;->eraserEnd:Lcom/htc/painting/engine/MotionPoint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/painting/engine/eraser/EraserService;->eraserEndRadius:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/painting/engine/eraser/EraserService;->intersectionOfSegmentFrom(Lcom/htc/painting/engine/MotionPoint;Lcom/htc/painting/engine/MotionPoint;Lcom/htc/painting/engine/MotionPoint;F)Lcom/htc/painting/engine/eraser/CircleIntersection;

    move-result-object v26

    .line 655
    .local v26, resultC2:Lcom/htc/painting/engine/eraser/CircleIntersection;
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/htc/painting/engine/eraser/CircleIntersection;->intersect:Z

    move/from16 v22, v0

    .line 656
    .local v22, intersectC2:Z
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/painting/engine/eraser/CircleIntersection;->enter:Lcom/htc/painting/engine/MotionPoint;

    move-object/from16 v18, v0

    .line 657
    .local v18, enterC2:Lcom/htc/painting/engine/MotionPoint;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/painting/engine/eraser/CircleIntersection;->exit:Lcom/htc/painting/engine/MotionPoint;

    move-object/from16 v20, v0

    .line 661
    .local v20, exitC2:Lcom/htc/painting/engine/MotionPoint;
    if-eqz v22, :cond_8

    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/htc/painting/engine/eraser/CircleIntersection;->enter:Lcom/htc/painting/engine/MotionPoint;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/eraser/EraserService;->eraserPolygon:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Lcom/htc/painting/engine/eraser/EraserService;->point(Lcom/htc/painting/engine/MotionPoint;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 663
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    :cond_8
    if-eqz v22, :cond_9

    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/htc/painting/engine/eraser/CircleIntersection;->exit:Lcom/htc/painting/engine/MotionPoint;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/eraser/EraserService;->eraserPolygon:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Lcom/htc/painting/engine/eraser/EraserService;->point(Lcom/htc/painting/engine/MotionPoint;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 666
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    .end local v18           #enterC2:Lcom/htc/painting/engine/MotionPoint;
    .end local v20           #exitC2:Lcom/htc/painting/engine/MotionPoint;
    .end local v22           #intersectC2:Z
    .end local v26           #resultC2:Lcom/htc/painting/engine/eraser/CircleIntersection;
    :cond_9
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_a

    .line 669
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 672
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method private static strokeSegmentBoundingBoxFrom(Lcom/htc/painting/engine/MotionPoint;Lcom/htc/painting/engine/MotionPoint;F)Landroid/graphics/RectF;
    .locals 10
    .parameter "anOrigin"
    .parameter "anEnd"
    .parameter "aWidth"

    .prologue
    .line 766
    invoke-virtual {p0}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v5

    invoke-virtual {p1}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 767
    invoke-virtual {p0}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v5

    int-to-float v3, v5

    .line 768
    .local v3, minX:F
    invoke-virtual {p1}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v5

    int-to-float v1, v5

    .line 775
    .local v1, maxX:F
    :goto_0
    invoke-virtual {p0}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v5

    invoke-virtual {p1}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 776
    invoke-virtual {p0}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v5

    int-to-float v4, v5

    .line 777
    .local v4, minY:F
    invoke-virtual {p1}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v5

    int-to-float v2, v5

    .line 782
    .local v2, maxY:F
    :goto_1
    const/high16 v5, 0x3f00

    mul-float v0, p2, v5

    .line 783
    .local v0, halfWidth:F
    new-instance v5, Landroid/graphics/RectF;

    sub-float v6, v3, v0

    sub-float v7, v4, v0

    add-float v8, v1, v0

    add-float v9, v2, v0

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v5

    .line 770
    .end local v0           #halfWidth:F
    .end local v1           #maxX:F
    .end local v2           #maxY:F
    .end local v3           #minX:F
    .end local v4           #minY:F
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v5

    int-to-float v1, v5

    .line 771
    .restart local v1       #maxX:F
    invoke-virtual {p1}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v5

    int-to-float v3, v5

    .restart local v3       #minX:F
    goto :goto_0

    .line 779
    :cond_1
    invoke-virtual {p0}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v5

    int-to-float v2, v5

    .line 780
    .restart local v2       #maxY:F
    invoke-virtual {p1}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v5

    int-to-float v4, v5

    .restart local v4       #minY:F
    goto :goto_1
.end method


# virtual methods
.method public beginTransactionForStrokes(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/stroke/Stroke;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, strokes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/htc/painting/engine/eraser/EraserService;->strokeList:Ljava/util/List;

    .line 100
    return-void
.end method

.method public computeEraserBoundingBox()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 506
    iget-object v3, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserOrigin:Lcom/htc/painting/engine/MotionPoint;

    iget v4, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserOriginRadius:F

    invoke-static {v3, v4}, Lcom/htc/painting/engine/eraser/EraserService;->circleBoundingRectForCenter(Lcom/htc/painting/engine/MotionPoint;F)Landroid/graphics/RectF;

    move-result-object v1

    .line 508
    .local v1, originBoundingRect:Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserEnd:Lcom/htc/painting/engine/MotionPoint;

    iget v4, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserEndRadius:F

    invoke-static {v3, v4}, Lcom/htc/painting/engine/eraser/EraserService;->circleBoundingRectForCenter(Lcom/htc/painting/engine/MotionPoint;F)Landroid/graphics/RectF;

    move-result-object v0

    .line 510
    .local v0, endBoundingRect:Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserPolygon:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/htc/painting/engine/eraser/EraserService;->polygonBoundingBox(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v2

    .line 512
    .local v2, polygonBoundingRect:Landroid/graphics/RectF;
    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 513
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 514
    return-object v1
.end method

.method public endEraserTransaction()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/painting/engine/eraser/EraserService;->strokeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 147
    iget-object v0, p0, Lcom/htc/painting/engine/eraser/EraserService;->strokesToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 149
    return-void
.end method

.method public getStrokesToAdd()Ljava/util/List;
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
    .line 178
    iget-object v0, p0, Lcom/htc/painting/engine/eraser/EraserService;->strokeList:Ljava/util/List;

    return-object v0
.end method

.method public getStrokesToRemove()Ljava/util/List;
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
    .line 186
    iget-object v0, p0, Lcom/htc/painting/engine/eraser/EraserService;->strokesToRemove:Ljava/util/ArrayList;

    return-object v0
.end method

.method public interpolateWithPoint(Lcom/htc/painting/engine/MotionPoint;Lcom/htc/painting/engine/MotionPoint;F)Lcom/htc/painting/engine/MotionPoint;
    .locals 10
    .parameter "p1"
    .parameter "p2"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 755
    invoke-virtual {p1}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v0

    int-to-float v0, v0

    sub-float v1, v2, p3

    mul-float/2addr v0, v1

    invoke-virtual {p2}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    add-float v8, v0, v1

    .line 756
    .local v8, newX:F
    invoke-virtual {p1}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v0

    int-to-float v0, v0

    sub-float v1, v2, p3

    mul-float/2addr v0, v1

    invoke-virtual {p2}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    add-float v9, v0, v1

    .line 757
    .local v9, newY:F
    invoke-virtual {p1}, Lcom/htc/painting/engine/MotionPoint;->getActionPressure()F

    move-result v0

    sub-float v1, v2, p3

    mul-float/2addr v0, v1

    invoke-virtual {p2}, Lcom/htc/painting/engine/MotionPoint;->getActionPressure()F

    move-result v1

    mul-float/2addr v1, p3

    add-float v3, v0, v1

    .line 759
    .local v3, newP:F
    new-instance v0, Lcom/htc/painting/engine/MotionPoint;

    float-to-int v1, v8

    float-to-int v2, v9

    const-wide/16 v6, 0x0

    move v5, v4

    invoke-direct/range {v0 .. v7}, Lcom/htc/painting/engine/MotionPoint;-><init>(IIFFFJ)V

    return-object v0
.end method

.method point(Lcom/htc/painting/engine/MotionPoint;Ljava/util/List;)Z
    .locals 12
    .parameter "aPoint"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/painting/engine/MotionPoint;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/MotionPoint;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, aPolygon:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/MotionPoint;>;"
    const/4 v8, 0x0

    .line 560
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    .line 561
    .local v6, pointCount:I
    if-nez v6, :cond_1

    .line 596
    :cond_0
    :goto_0
    return v8

    .line 563
    :cond_1
    const/4 v0, 0x0

    .line 564
    .local v0, counter:I
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/engine/MotionPoint;

    .line 568
    .local v4, p1:Lcom/htc/painting/engine/MotionPoint;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    if-gt v1, v6, :cond_5

    .line 569
    rem-int v9, v1, v6

    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/painting/engine/MotionPoint;

    .line 570
    .local v5, p2:Lcom/htc/painting/engine/MotionPoint;
    invoke-virtual {v4}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v9

    invoke-virtual {v5}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v10

    if-ge v9, v10, :cond_4

    .line 571
    invoke-virtual {v4}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v9

    int-to-float v3, v9

    .line 572
    .local v3, minY:F
    invoke-virtual {v5}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v9

    int-to-float v2, v9

    .line 577
    .local v2, maxY:F
    :goto_2
    invoke-virtual {p1}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v9, v3

    if-lez v9, :cond_3

    .line 578
    invoke-virtual {p1}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v9, v2

    if-gtz v9, :cond_3

    .line 579
    invoke-virtual {p1}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v9

    invoke-virtual {v4}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v10

    invoke-virtual {v5}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    if-gt v9, v10, :cond_3

    .line 580
    invoke-virtual {v4}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v9

    invoke-virtual {v5}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v10

    if-eq v9, v10, :cond_3

    .line 581
    invoke-virtual {p1}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v9

    invoke-virtual {v4}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v5}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v10

    invoke-virtual {v4}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v11

    sub-int/2addr v10, v11

    mul-int/2addr v9, v10

    invoke-virtual {v5}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v10

    invoke-virtual {v4}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/2addr v9, v10

    invoke-virtual {v4}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v7, v9

    .line 584
    .local v7, xinters:F
    invoke-virtual {v4}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v9

    invoke-virtual {v5}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v10

    if-eq v9, v10, :cond_2

    invoke-virtual {p1}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v9, v7

    if-gtz v9, :cond_3

    .line 586
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 591
    .end local v7           #xinters:F
    :cond_3
    move-object v4, v5

    .line 568
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 574
    .end local v2           #maxY:F
    .end local v3           #minY:F
    :cond_4
    invoke-virtual {v5}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v9

    int-to-float v3, v9

    .line 575
    .restart local v3       #minY:F
    invoke-virtual {v4}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v9

    int-to-float v2, v9

    .restart local v2       #maxY:F
    goto :goto_2

    .line 593
    .end local v2           #maxY:F
    .end local v3           #minY:F
    .end local v5           #p2:Lcom/htc/painting/engine/MotionPoint;
    :cond_5
    rem-int/lit8 v9, v0, 0x2

    if-eqz v9, :cond_0

    .line 596
    const/4 v8, 0x1

    goto/16 :goto_0
.end method

.method public pointInEraserSegment(Lcom/htc/painting/engine/MotionPoint;)Z
    .locals 4
    .parameter "aPoint"

    .prologue
    const/4 v2, 0x1

    .line 549
    iget-object v3, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserOrigin:Lcom/htc/painting/engine/MotionPoint;

    invoke-static {p1, v3}, Lcom/htc/painting/engine/MotionPoint;->distanceBetweenPoint(Lcom/htc/painting/engine/MotionPoint;Lcom/htc/painting/engine/MotionPoint;)F

    move-result v1

    .line 551
    .local v1, distToOrigin:F
    iget v3, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserOriginRadius:F

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_1

    .line 556
    :cond_0
    :goto_0
    return v2

    .line 553
    :cond_1
    iget-object v3, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserEnd:Lcom/htc/painting/engine/MotionPoint;

    invoke-static {p1, v3}, Lcom/htc/painting/engine/MotionPoint;->distanceBetweenPoint(Lcom/htc/painting/engine/MotionPoint;Lcom/htc/painting/engine/MotionPoint;)F

    move-result v0

    .line 554
    .local v0, distToEnd:F
    iget v3, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserEndRadius:F

    cmpg-float v3, v0, v3

    if-lez v3, :cond_0

    .line 556
    iget-object v2, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserPolygon:Ljava/util/List;

    invoke-virtual {p0, p1, v2}, Lcom/htc/painting/engine/eraser/EraserService;->point(Lcom/htc/painting/engine/MotionPoint;Ljava/util/List;)Z

    move-result v2

    goto :goto_0
.end method

.method public polygonBoundingBox(Ljava/util/List;)Landroid/graphics/RectF;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/MotionPoint;",
            ">;)",
            "Landroid/graphics/RectF;"
        }
    .end annotation

    .prologue
    .local p1, aPolygon:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/MotionPoint;>;"
    const/4 v8, 0x0

    .line 528
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 529
    .local v5, pointCount:I
    if-nez v5, :cond_0

    .line 530
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 541
    :goto_0
    return-object v3

    .line 532
    :cond_0
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 533
    .local v2, path:Landroid/graphics/Path;
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/engine/MotionPoint;

    .line 534
    .local v0, firstPoint:Lcom/htc/painting/engine/MotionPoint;
    invoke-virtual {v0}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 535
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_1

    .line 536
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/engine/MotionPoint;

    .line 537
    .local v4, point:Lcom/htc/painting/engine/MotionPoint;
    invoke-virtual {v4}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 535
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 539
    .end local v4           #point:Lcom/htc/painting/engine/MotionPoint;
    :cond_1
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 540
    .local v3, pathBoundingBox:Landroid/graphics/RectF;
    invoke-virtual {v2, v3, v8}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    goto :goto_0
.end method

.method storeIntersectionOfSegmentFrom(Lcom/htc/painting/engine/MotionPoint;Lcom/htc/painting/engine/MotionPoint;Lcom/htc/painting/engine/MotionPoint;Lcom/htc/painting/engine/MotionPoint;Ljava/util/List;)Z
    .locals 16
    .parameter "a1"
    .parameter "a2"
    .parameter "b1"
    .parameter "b2"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/painting/engine/MotionPoint;",
            "Lcom/htc/painting/engine/MotionPoint;",
            "Lcom/htc/painting/engine/MotionPoint;",
            "Lcom/htc/painting/engine/MotionPoint;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/MotionPoint;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 722
    .local p5, anArray:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/MotionPoint;>;"
    invoke-virtual/range {p4 .. p4}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v4

    sub-int/2addr v3, v4

    mul-int/2addr v2, v3

    invoke-virtual/range {p4 .. p4}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p1 .. p1}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v5

    sub-int/2addr v4, v5

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v11, v2

    .line 724
    .local v11, ua_t:F
    invoke-virtual/range {p2 .. p2}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v4

    sub-int/2addr v3, v4

    mul-int/2addr v2, v3

    invoke-virtual/range {p2 .. p2}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p1 .. p1}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v5

    sub-int/2addr v4, v5

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v13, v2

    .line 726
    .local v13, ub_t:F
    invoke-virtual/range {p4 .. p4}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p2 .. p2}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v4

    sub-int/2addr v3, v4

    mul-int/2addr v2, v3

    invoke-virtual/range {p4 .. p4}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p2 .. p2}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v5

    sub-int/2addr v4, v5

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v9, v2

    .line 728
    .local v9, u_b:F
    const/4 v2, 0x0

    cmpl-float v2, v9, v2

    if-eqz v2, :cond_1

    .line 729
    div-float v10, v11, v9

    .line 730
    .local v10, ua:F
    div-float v12, v13, v9

    .line 731
    .local v12, ub:F
    const/4 v2, 0x0

    cmpg-float v2, v2, v10

    if-gtz v2, :cond_0

    const/high16 v2, 0x3f80

    cmpg-float v2, v10, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x0

    cmpg-float v2, v2, v12

    if-gtz v2, :cond_0

    const/high16 v2, 0x3f80

    cmpg-float v2, v12, v2

    if-gtz v2, :cond_0

    .line 733
    invoke-virtual/range {p1 .. p1}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p2 .. p2}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v10

    add-float v14, v2, v3

    .line 734
    .local v14, x:F
    invoke-virtual/range {p1 .. p1}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p2 .. p2}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v10

    add-float v15, v2, v3

    .line 735
    .local v15, y:F
    new-instance v1, Lcom/htc/painting/engine/MotionPoint;

    float-to-int v2, v14

    float-to-int v3, v15

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/htc/painting/engine/MotionPoint;-><init>(IIFFFJ)V

    .line 737
    .local v1, point:Lcom/htc/painting/engine/MotionPoint;
    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    const/4 v2, 0x1

    .line 745
    .end local v1           #point:Lcom/htc/painting/engine/MotionPoint;
    .end local v10           #ua:F
    .end local v12           #ub:F
    .end local v14           #x:F
    .end local v15           #y:F
    :goto_0
    return v2

    .line 740
    .restart local v10       #ua:F
    .restart local v12       #ub:F
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 742
    .end local v10           #ua:F
    .end local v12           #ub:F
    :cond_1
    const/4 v2, 0x0

    cmpl-float v2, v11, v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    cmpl-float v2, v13, v2

    if-nez v2, :cond_3

    .line 743
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 745
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public strokesFrom(Lcom/htc/painting/engine/MotionPoint;Lcom/htc/painting/engine/MotionPoint;F)V
    .locals 2
    .parameter "point1"
    .parameter "point2"
    .parameter "aRadius"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserOrigin:Lcom/htc/painting/engine/MotionPoint;

    .line 126
    iput-object p2, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserEnd:Lcom/htc/painting/engine/MotionPoint;

    .line 127
    iput p3, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserOriginRadius:F

    .line 128
    iput p3, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserEndRadius:F

    .line 129
    invoke-static {p1, p2}, Lcom/htc/painting/engine/MotionPoint;->distanceBetweenPoint(Lcom/htc/painting/engine/MotionPoint;Lcom/htc/painting/engine/MotionPoint;)F

    move-result v0

    iput v0, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserLength:F

    .line 131
    iget v0, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserLength:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/htc/painting/engine/eraser/EraserService;->computeEraserPolygon()V

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/htc/painting/engine/eraser/EraserService;->strokeList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/htc/painting/engine/eraser/EraserService;->eraseForStrokesIn(Ljava/util/List;)V

    .line 138
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/eraser/EraserService;->eraserPolygon:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method
