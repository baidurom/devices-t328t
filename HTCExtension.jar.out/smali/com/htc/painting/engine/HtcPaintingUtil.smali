.class public Lcom/htc/painting/engine/HtcPaintingUtil;
.super Ljava/lang/Object;
.source "HtcPaintingUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/engine/HtcPaintingUtil$SerializeDAOLite;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcPaintingUtil"

.field static mDao:Lcom/htc/painting/engine/HtcPaintingUtil$SerializeDAOLite;

.field private static final sClearPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/htc/painting/engine/HtcPaintingUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/painting/engine/HtcPaintingUtil;->$assertionsDisabled:Z

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/htc/painting/engine/HtcPaintingUtil;->sClearPaint:Landroid/graphics/Paint;

    .line 319
    new-instance v0, Lcom/htc/painting/engine/HtcPaintingUtil$SerializeDAOLite;

    invoke-direct {v0}, Lcom/htc/painting/engine/HtcPaintingUtil$SerializeDAOLite;-><init>()V

    sput-object v0, Lcom/htc/painting/engine/HtcPaintingUtil;->mDao:Lcom/htc/painting/engine/HtcPaintingUtil$SerializeDAOLite;

    return-void

    .line 27
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 550
    return-void
.end method

.method public static byteArrayToInt([B)I
    .locals 3
    .parameter "bytes"

    .prologue
    .line 186
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int v0, v1, v2

    .line 189
    .local v0, result:I
    return v0
.end method

.method public static byteArrayToShort([B)S
    .locals 3
    .parameter "bytes"

    .prologue
    .line 181
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    int-to-short v0, v1

    .line 182
    .local v0, result:S
    return v0
.end method

.method public static byteArraytoLong([B)J
    .locals 6
    .parameter "bytes"

    .prologue
    const/4 v5, 0x0

    .line 193
    aget-byte v0, p0, v5

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x4

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x6

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x7

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    shl-long/2addr v2, v5

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static calculateHighlightRegion(Ljava/util/List;Ljava/lang/String;)Landroid/graphics/RectF;
    .locals 14
    .parameter
    .parameter "inputRanges"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/stroke/Stroke;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/graphics/RectF;"
        }
    .end annotation

    .prologue
    .line 361
    .local p0, strokes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;"
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 362
    .local v8, r:Landroid/graphics/RectF;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_2

    .line 363
    :cond_0
    const/4 v8, 0x0

    .line 388
    .end local v8           #r:Landroid/graphics/RectF;
    :cond_1
    return-object v8

    .line 366
    .restart local v8       #r:Landroid/graphics/RectF;
    :cond_2
    const-string v12, ","

    invoke-virtual {p1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 368
    .local v9, ranges:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 369
    .local v1, beginIndex:I
    const/4 v2, 0x0

    .line 370
    .local v2, endIndex:I
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v10, v0, v4

    .line 371
    .local v10, s:Ljava/lang/String;
    const-string v12, "-"

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 372
    .local v11, strokeInfo:[Ljava/lang/String;
    array-length v7, v11

    .line 373
    .local v7, length:I
    sget-boolean v12, Lcom/htc/painting/engine/HtcPaintingUtil;->$assertionsDisabled:Z

    if-nez v12, :cond_3

    const/4 v12, 0x2

    if-eq v7, v12, :cond_3

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 374
    :cond_3
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v7, :cond_6

    .line 375
    aget-object v12, v11, v3

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 376
    .local v5, indexInfo:[Ljava/lang/String;
    sget-boolean v12, Lcom/htc/painting/engine/HtcPaintingUtil;->$assertionsDisabled:Z

    if-nez v12, :cond_4

    array-length v12, v5

    const/4 v13, 0x3

    if-eq v12, v13, :cond_4

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 377
    :cond_4
    if-nez v3, :cond_5

    .line 378
    const/4 v12, 0x1

    aget-object v12, v5, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 374
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 380
    :cond_5
    const/4 v12, 0x1

    aget-object v12, v5, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    .line 383
    .end local v5           #indexInfo:[Ljava/lang/String;
    :cond_6
    move v3, v1

    :goto_3
    if-gt v3, v2, :cond_7

    .line 384
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/painting/engine/stroke/Stroke;

    invoke-virtual {v12}, Lcom/htc/painting/engine/stroke/Stroke;->getRect()Landroid/graphics/RectF;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 383
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 370
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static convertToPaint(Lcom/htc/painting/engine/StrokeProperties;)Landroid/graphics/Paint;
    .locals 3
    .parameter "dp"

    .prologue
    const/4 v2, 0x1

    .line 167
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 168
    .local v0, result:Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/htc/painting/engine/StrokeProperties;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 169
    invoke-virtual {p0}, Lcom/htc/painting/engine/StrokeProperties;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    invoke-virtual {p0}, Lcom/htc/painting/engine/StrokeProperties;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 171
    invoke-virtual {p0}, Lcom/htc/painting/engine/StrokeProperties;->getCap()Landroid/graphics/Paint$Cap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 172
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 173
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 174
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 175
    return-object v0
.end method

.method public static drawUtil(Landroid/graphics/Bitmap;IILcom/htc/painting/engine/ViewPort;Lcom/htc/painting/engine/AbsSerializeDAO;)Z
    .locals 3
    .parameter "bitmap"
    .parameter "groupId"
    .parameter "strokeId"
    .parameter "viewPort"
    .parameter "serializeDAO"

    .prologue
    .line 126
    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 128
    :cond_0
    const-string v1, "HtcPaintingUtil"

    const-string v2, "drawUtil(), bitmap == null || strokeGroupId == null || absHtcPaintingViewPort == null || serializeDAO == null"

    invoke-static {v1, v2}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v1, 0x0

    .line 133
    :goto_0
    return v1

    .line 132
    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 133
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-static {p1, p3, p4}, Lcom/htc/painting/engine/HtcPaintingUtil;->requestStrokeGroupFromSerialDAO(ILcom/htc/painting/engine/ViewPort;Lcom/htc/painting/engine/AbsSerializeDAO;)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lcom/htc/painting/engine/HtcPaintingUtil;->drawUtil(Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeGroup;ILcom/htc/painting/engine/ViewPort;)Z

    move-result v1

    goto :goto_0
.end method

.method public static drawUtil(Landroid/graphics/Bitmap;ILcom/htc/painting/engine/ViewPort;Lcom/htc/painting/engine/AbsSerializeDAO;)Z
    .locals 3
    .parameter "bitmap"
    .parameter "groupId"
    .parameter "viewPort"
    .parameter "serializeDAO"

    .prologue
    .line 99
    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 101
    :cond_0
    const-string v1, "HtcPaintingUtil"

    const-string v2, "drawUtil(), bitmap == null || strokeGroupId == null || absHtcPaintingViewPort == null || serializeDAO == null"

    invoke-static {v1, v2}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v1, 0x0

    .line 106
    :goto_0
    return v1

    .line 105
    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 106
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-static {p1, p2, p3}, Lcom/htc/painting/engine/HtcPaintingUtil;->requestStrokeGroupFromSerialDAO(ILcom/htc/painting/engine/ViewPort;Lcom/htc/painting/engine/AbsSerializeDAO;)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/htc/painting/engine/HtcPaintingUtil;->drawUtil(Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeGroup;Lcom/htc/painting/engine/ViewPort;)Z

    move-result v1

    goto :goto_0
.end method

.method public static drawUtil(Landroid/graphics/Bitmap;[I[Lcom/htc/painting/engine/ViewPort;Lcom/htc/painting/engine/AbsSerializeDAO;)Z
    .locals 5
    .parameter "bitmap"
    .parameter "groupIds"
    .parameter "viewPorts"
    .parameter "serializeDAO"

    .prologue
    const/4 v2, 0x0

    .line 66
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 68
    :cond_0
    const-string v3, "HtcPaintingUtil"

    const-string v4, "drawUtil(), bitmap == null || drawerGroupIds == null || absHtcPaintingViewPorts == null || serializeDAO == null"

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_1
    :goto_0
    return v2

    .line 70
    :cond_2
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_3

    .line 71
    const-string v3, "HtcPaintingUtil"

    const-string v4, "drawUtil(), drawerGroupIds.length != absHtcPaintingViewPorts.length"

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_3
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 75
    .local v0, canvas:Landroid/graphics/Canvas;
    const/4 v2, 0x1

    .line 76
    .local v2, returnValue:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 77
    aget v3, p1, v1

    aget-object v4, p2, v1

    invoke-static {v3, v4, p3}, Lcom/htc/painting/engine/HtcPaintingUtil;->requestStrokeGroupFromSerialDAO(ILcom/htc/painting/engine/ViewPort;Lcom/htc/painting/engine/AbsSerializeDAO;)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v3

    aget-object v4, p2, v1

    invoke-static {v0, v3, v4}, Lcom/htc/painting/engine/HtcPaintingUtil;->drawUtil(Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeGroup;Lcom/htc/painting/engine/ViewPort;)Z

    move-result v3

    and-int/2addr v2, v3

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static drawUtil(Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeGroup;ILcom/htc/painting/engine/ViewPort;)Z
    .locals 2
    .parameter "canvas"
    .parameter "group"
    .parameter "strokeId"
    .parameter "viewPort"

    .prologue
    .line 153
    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p1, p3}, Lcom/htc/painting/engine/StrokeGroup;->setViewPort(Lcom/htc/painting/engine/ViewPort;)V

    .line 155
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 157
    invoke-virtual {p1, p0, p2}, Lcom/htc/painting/engine/StrokeGroup;->draw(Landroid/graphics/Canvas;I)V

    .line 158
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 159
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    .line 161
    :cond_0
    const-string v0, "HtcPaintingUtil"

    const-string v1, "drawUtil(), strokeGroup == null"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static drawUtil(Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeGroup;Lcom/htc/painting/engine/ViewPort;)Z
    .locals 3
    .parameter "canvas"
    .parameter "group"
    .parameter "viewPort"

    .prologue
    const/4 v0, 0x0

    .line 139
    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p1, p2}, Lcom/htc/painting/engine/StrokeGroup;->setViewPort(Lcom/htc/painting/engine/ViewPort;)V

    .line 141
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 142
    invoke-virtual {p1, p0, v0}, Lcom/htc/painting/engine/StrokeGroup;->draw(Landroid/graphics/Canvas;Z)V

    .line 143
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 144
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    .line 146
    :cond_0
    const-string v1, "HtcPaintingUtil"

    const-string v2, "drawUtil(), strokeGroup == null"

    invoke-static {v1, v2}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static eraserProcessing(Ljava/util/List;)Ljava/util/List;
    .locals 31
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/stroke/Stroke;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/stroke/Stroke;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    .local p0, source:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;"
    new-instance v20, Lcom/htc/painting/engine/eraser/EraserService;

    invoke-direct/range {v20 .. v20}, Lcom/htc/painting/engine/eraser/EraserService;-><init>()V

    .line 401
    .local v20, mService:Lcom/htc/painting/engine/eraser/EraserService;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .local v14, erasers:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v24, processedStrokes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v26

    .line 405
    .local v26, size:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    move/from16 v0, v26

    if-ge v15, v0, :cond_1

    .line 406
    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/htc/painting/engine/stroke/Stroke;

    .line 407
    .local v25, s:Lcom/htc/painting/engine/stroke/Stroke;
    invoke-virtual/range {v25 .. v25}, Lcom/htc/painting/engine/stroke/Stroke;->getProperties()Lcom/htc/painting/engine/StrokeProperties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/painting/engine/StrokeProperties;->isEraser()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 408
    move-object/from16 v0, v25

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 413
    .end local v25           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_1
    const/16 v17, 0x0

    .line 414
    .local v17, inkP1:Lcom/htc/painting/engine/MotionPoint;
    const/4 v2, 0x0

    .line 415
    .local v2, inkP2:Lcom/htc/painting/engine/MotionPoint;
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v12

    .line 417
    .local v12, eraserCount:I
    const/16 v23, 0x0

    .line 418
    .local v23, previousEraserIndex:I
    :goto_1
    if-lez v12, :cond_a

    .line 419
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/painting/engine/stroke/Stroke;

    .line 421
    .local v11, eraser:Lcom/htc/painting/engine/stroke/Stroke;
    move-object/from16 v0, p0

    invoke-interface {v0, v11}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v13

    .line 423
    .local v13, eraserIndex:I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1, v13}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v10

    .line 427
    .local v10, effectedStrokes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/htc/painting/engine/stroke/Stroke;

    .line 428
    .restart local v25       #s:Lcom/htc/painting/engine/stroke/Stroke;
    invoke-virtual/range {v25 .. v25}, Lcom/htc/painting/engine/stroke/Stroke;->getProperties()Lcom/htc/painting/engine/StrokeProperties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/painting/engine/StrokeProperties;->isEraser()Z

    move-result v3

    if-nez v3, :cond_2

    .line 429
    invoke-interface/range {v24 .. v25}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 432
    .end local v25           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_3
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/eraser/EraserService;->beginTransactionForStrokes(Ljava/util/List;)V

    .line 433
    invoke-virtual {v11}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v22

    .line 434
    .local v22, points:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/MotionPoint;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v21

    .line 435
    .local v21, pointCount:I
    const/16 v18, 0x0

    .local v18, j:I
    :goto_3
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    .line 436
    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v3}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v3

    int-to-float v0, v3

    move/from16 v29, v0

    .line 437
    .local v29, x:F
    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v3}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v3

    int-to-float v0, v3

    move/from16 v30, v0

    .line 438
    .local v30, y:F
    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v3}, Lcom/htc/painting/engine/MotionPoint;->getActionPressure()F

    move-result v5

    .line 439
    .local v5, p:F
    if-nez v2, :cond_5

    .line 440
    new-instance v2, Lcom/htc/painting/engine/MotionPoint;

    .end local v2           #inkP2:Lcom/htc/painting/engine/MotionPoint;
    move/from16 v0, v29

    float-to-int v3, v0

    move/from16 v0, v30

    float-to-int v4, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/htc/painting/engine/MotionPoint;-><init>(IIFFFJ)V

    .line 435
    .restart local v2       #inkP2:Lcom/htc/painting/engine/MotionPoint;
    :cond_4
    :goto_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 443
    :cond_5
    move-object/from16 v17, v2

    .line 444
    new-instance v2, Lcom/htc/painting/engine/MotionPoint;

    .end local v2           #inkP2:Lcom/htc/painting/engine/MotionPoint;
    move/from16 v0, v29

    float-to-int v3, v0

    move/from16 v0, v30

    float-to-int v4, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/htc/painting/engine/MotionPoint;-><init>(IIFFFJ)V

    .line 446
    .restart local v2       #inkP2:Lcom/htc/painting/engine/MotionPoint;
    if-eqz v17, :cond_4

    if-eqz v2, :cond_4

    .line 447
    invoke-virtual {v11}, Lcom/htc/painting/engine/stroke/Stroke;->getProperties()Lcom/htc/painting/engine/StrokeProperties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/painting/engine/StrokeProperties;->getWidth()F

    move-result v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/painting/engine/eraser/EraserService;->strokesFrom(Lcom/htc/painting/engine/MotionPoint;Lcom/htc/painting/engine/MotionPoint;F)V

    goto :goto_4

    .line 452
    .end local v5           #p:F
    .end local v29           #x:F
    .end local v30           #y:F
    :cond_6
    invoke-virtual/range {v20 .. v20}, Lcom/htc/painting/engine/eraser/EraserService;->getStrokesToAdd()Ljava/util/List;

    move-result-object v28

    .line 453
    .local v28, strokestoAdd:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;"
    invoke-virtual/range {v20 .. v20}, Lcom/htc/painting/engine/eraser/EraserService;->getStrokesToRemove()Ljava/util/List;

    move-result-object v27

    .line 455
    .local v27, strokesToRemove:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;"
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_7
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/htc/painting/engine/stroke/Stroke;

    .line 456
    .restart local v25       #s:Lcom/htc/painting/engine/stroke/Stroke;
    invoke-interface/range {v24 .. v25}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 457
    invoke-interface/range {v24 .. v25}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 461
    .end local v25           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_8
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/htc/painting/engine/stroke/Stroke;

    .line 462
    .restart local v25       #s:Lcom/htc/painting/engine/stroke/Stroke;
    invoke-interface/range {v24 .. v25}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    .line 465
    .end local v25           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_9
    const/16 v17, 0x0

    .line 466
    const/4 v2, 0x0

    .line 468
    invoke-virtual/range {v20 .. v20}, Lcom/htc/painting/engine/eraser/EraserService;->endEraserTransaction()V

    .line 469
    move/from16 v23, v13

    .line 470
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 471
    add-int/lit8 v12, v12, -0x1

    .line 473
    goto/16 :goto_1

    .line 476
    .end local v10           #effectedStrokes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;"
    .end local v11           #eraser:Lcom/htc/painting/engine/stroke/Stroke;
    .end local v13           #eraserIndex:I
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v18           #j:I
    .end local v21           #pointCount:I
    .end local v22           #points:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/MotionPoint;>;"
    .end local v27           #strokesToRemove:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;"
    .end local v28           #strokestoAdd:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;"
    :cond_a
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v23

    if-eq v0, v3, :cond_c

    .line 477
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v19

    .line 479
    .local v19, lastStrokes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :cond_b
    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/htc/painting/engine/stroke/Stroke;

    .line 480
    .restart local v25       #s:Lcom/htc/painting/engine/stroke/Stroke;
    invoke-virtual/range {v25 .. v25}, Lcom/htc/painting/engine/stroke/Stroke;->getProperties()Lcom/htc/painting/engine/StrokeProperties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/painting/engine/StrokeProperties;->isEraser()Z

    move-result v3

    if-nez v3, :cond_b

    .line 481
    invoke-interface/range {v24 .. v25}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 547
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v19           #lastStrokes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;"
    .end local v25           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_c
    return-object v24
.end method

.method public static filterEraserStrokes([B)[B
    .locals 6
    .parameter "strokeRAWData"

    .prologue
    .line 327
    invoke-static {p0}, Lcom/htc/painting/engine/HtcPaintingUtil;->getStrokes([B)Ljava/util/List;

    move-result-object v4

    .line 329
    .local v4, strokes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 351
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 333
    .restart local p0
    :cond_1
    const/4 v0, 0x0

    .line 334
    .local v0, containEraser:Z
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/engine/stroke/Stroke;

    .line 335
    .local v3, s:Lcom/htc/painting/engine/stroke/Stroke;
    invoke-virtual {v3}, Lcom/htc/painting/engine/stroke/Stroke;->getProperties()Lcom/htc/painting/engine/StrokeProperties;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/painting/engine/StrokeProperties;->isEraser()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 336
    const/4 v0, 0x1

    .line 341
    .end local v3           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_3
    const/4 v2, 0x0

    .line 342
    .local v2, processedStrokes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;"
    if-eqz v0, :cond_0

    .line 343
    invoke-static {v4}, Lcom/htc/painting/engine/HtcPaintingUtil;->eraserProcessing(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 348
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 349
    invoke-static {v2}, Lcom/htc/painting/engine/StrokeGroup;->serialize(Ljava/util/List;)[B

    move-result-object p0

    goto :goto_0

    .line 351
    :cond_4
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getClearPaint()Landroid/graphics/Paint;
    .locals 3

    .prologue
    .line 296
    sget-object v0, Lcom/htc/painting/engine/HtcPaintingUtil;->sClearPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 298
    sget-object v0, Lcom/htc/painting/engine/HtcPaintingUtil;->sClearPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public static getInvertedPoint([FLandroid/graphics/Matrix;)[F
    .locals 3
    .parameter "originalPoint"
    .parameter "matrix"

    .prologue
    .line 263
    const/4 v2, 0x2

    new-array v1, v2, [F

    .line 264
    .local v1, mappedPoint:[F
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 265
    .local v0, inverse:Landroid/graphics/Matrix;
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 267
    invoke-virtual {v0, v1, p0}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 268
    return-object v1
.end method

.method public static getStrokes([B)Ljava/util/List;
    .locals 4
    .parameter "strokeRAWData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/stroke/Stroke;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, sg:Lcom/htc/painting/engine/StrokeGroup;
    sget-object v1, Lcom/htc/painting/engine/HtcPaintingUtil;->mDao:Lcom/htc/painting/engine/HtcPaintingUtil$SerializeDAOLite;

    if-eqz v1, :cond_0

    .line 313
    sget-object v1, Lcom/htc/painting/engine/HtcPaintingUtil;->mDao:Lcom/htc/painting/engine/HtcPaintingUtil$SerializeDAOLite;

    invoke-virtual {v1, p0}, Lcom/htc/painting/engine/HtcPaintingUtil$SerializeDAOLite;->setCoreData([B)V

    .line 314
    const/4 v1, 0x0

    new-instance v2, Lcom/htc/painting/engine/ViewPort$IdentityViewPort;

    invoke-direct {v2}, Lcom/htc/painting/engine/ViewPort$IdentityViewPort;-><init>()V

    sget-object v3, Lcom/htc/painting/engine/HtcPaintingUtil;->mDao:Lcom/htc/painting/engine/HtcPaintingUtil$SerializeDAOLite;

    invoke-static {v1, v2, v3}, Lcom/htc/painting/engine/HtcPaintingUtil;->requestStrokeGroupFromSerialDAO(ILcom/htc/painting/engine/ViewPort;Lcom/htc/painting/engine/AbsSerializeDAO;)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v0

    .line 316
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeGroup;->getStrokes()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public static intToByteArray(I[B)V
    .locals 2
    .parameter "value"
    .parameter "dest"

    .prologue
    .line 215
    const/4 v0, 0x0

    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 216
    const/4 v0, 0x1

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 217
    const/4 v0, 0x2

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 218
    const/4 v0, 0x3

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    .line 219
    return-void
.end method

.method public static intToByteArray(I)[B
    .locals 3
    .parameter "value"

    .prologue
    .line 205
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 206
    .local v0, result:[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 207
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 208
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 209
    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 211
    return-object v0
.end method

.method public static longToByteArray(J[B)V
    .locals 3
    .parameter "value"
    .parameter "dest"

    .prologue
    .line 247
    const/4 v0, 0x0

    const/16 v1, 0x38

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 248
    const/4 v0, 0x1

    const/16 v1, 0x30

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 249
    const/4 v0, 0x2

    const/16 v1, 0x28

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 250
    const/4 v0, 0x3

    const/16 v1, 0x20

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 251
    const/4 v0, 0x4

    const/16 v1, 0x18

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 252
    const/4 v0, 0x5

    const/16 v1, 0x10

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 253
    const/4 v0, 0x6

    const/16 v1, 0x8

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 254
    const/4 v0, 0x7

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 255
    return-void
.end method

.method public static longToByteArray(J)[B
    .locals 5
    .parameter "value"

    .prologue
    const/16 v4, 0x8

    .line 234
    new-array v0, v4, [B

    .line 235
    .local v0, result:[B
    const/4 v1, 0x0

    const/16 v2, 0x38

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 236
    const/4 v1, 0x1

    const/16 v2, 0x30

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 237
    const/4 v1, 0x2

    const/16 v2, 0x28

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 238
    const/4 v1, 0x3

    const/16 v2, 0x20

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 239
    const/4 v1, 0x4

    const/16 v2, 0x18

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 240
    const/4 v1, 0x5

    const/16 v2, 0x10

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 241
    const/4 v1, 0x6

    shr-long v2, p0, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 242
    const/4 v1, 0x7

    long-to-int v2, p0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 243
    return-object v0
.end method

.method public static recordReference(Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;Lcom/htc/painting/engine/StrokeGroup;Lcom/htc/painting/engine/ViewPort;Landroid/graphics/Matrix;)V
    .locals 3
    .parameter "data"
    .parameter "group"
    .parameter "viewport"
    .parameter "matrix"

    .prologue
    .line 282
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    if-eqz p2, :cond_0

    .line 285
    invoke-virtual {p2}, Lcom/htc/painting/engine/ViewPort;->getRectF()Landroid/graphics/RectF;

    move-result-object v0

    .line 286
    .local v0, rectangle:Landroid/graphics/RectF;
    invoke-interface {p0, v0}, Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;->intersects(Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    invoke-virtual {p1}, Lcom/htc/painting/engine/StrokeGroup;->getModificationIndex()J

    move-result-wide v1

    invoke-interface {p0, v1, v2}, Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;->setDrawingStamp(J)V

    goto :goto_0
.end method

.method private static requestStrokeGroupFromSerialDAO(ILcom/htc/painting/engine/ViewPort;Lcom/htc/painting/engine/AbsSerializeDAO;)Lcom/htc/painting/engine/StrokeGroup;
    .locals 5
    .parameter "groupId"
    .parameter "viewport"
    .parameter "serializeDAO"

    .prologue
    const/4 v1, 0x0

    .line 36
    if-ltz p0, :cond_0

    if-nez p2, :cond_1

    .line 37
    :cond_0
    const-string v2, "HtcPaintingUtil"

    const-string v3, "requestStrokeGroupFromSerialDAO(), strokeGroupId == null || serializeDAO == null"

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :goto_0
    return-object v1

    .line 40
    :cond_1
    invoke-virtual {p2, p0}, Lcom/htc/painting/engine/AbsSerializeDAO;->load(I)[B

    move-result-object v0

    .line 41
    .local v0, serializedByteArray:[B
    if-eqz v0, :cond_2

    .line 42
    new-instance v1, Lcom/htc/painting/engine/StrokeGroup;

    invoke-direct {v1, p0, p1}, Lcom/htc/painting/engine/StrokeGroup;-><init>(ILcom/htc/painting/engine/ViewPort;)V

    invoke-virtual {v1, v0}, Lcom/htc/painting/engine/StrokeGroup;->deserialize([B)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v1

    goto :goto_0

    .line 45
    :cond_2
    const-string v2, "HtcPaintingUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serializeDAO.load("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") == null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static shortToByteArray(S[B)V
    .locals 2
    .parameter "value"
    .parameter "dest"

    .prologue
    .line 229
    const/4 v0, 0x0

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 230
    const/4 v0, 0x1

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    .line 231
    return-void
.end method

.method public static shortToByteArray(S)[B
    .locals 3
    .parameter "value"

    .prologue
    .line 222
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 223
    .local v0, result:[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 224
    const/4 v1, 0x1

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 225
    return-object v0
.end method
