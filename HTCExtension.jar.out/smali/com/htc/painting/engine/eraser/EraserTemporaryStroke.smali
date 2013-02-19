.class public Lcom/htc/painting/engine/eraser/EraserTemporaryStroke;
.super Ljava/lang/Object;
.source "EraserTemporaryStroke.java"


# instance fields
.field public inkColor:I

.field public inkPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/MotionPoint;",
            ">;"
        }
    .end annotation
.end field

.field public inkWidth:F

.field private mBoundingBox:Landroid/graphics/RectF;

.field public originalStroke:Lcom/htc/painting/engine/stroke/Stroke;

.field public timeStamp:J

.field public zOrder:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/painting/engine/eraser/EraserTemporaryStroke;->zOrder:I

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/htc/painting/engine/eraser/EraserTemporaryStroke;)V
    .locals 2
    .parameter "origin"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/painting/engine/eraser/EraserTemporaryStroke;->zOrder:I

    .line 65
    iget v0, p1, Lcom/htc/painting/engine/eraser/EraserTemporaryStroke;->inkColor:I

    iput v0, p0, Lcom/htc/painting/engine/eraser/EraserTemporaryStroke;->inkColor:I

    .line 66
    iget v0, p1, Lcom/htc/painting/engine/eraser/EraserTemporaryStroke;->inkWidth:F

    iput v0, p0, Lcom/htc/painting/engine/eraser/EraserTemporaryStroke;->inkWidth:F

    .line 67
    iget-wide v0, p1, Lcom/htc/painting/engine/eraser/EraserTemporaryStroke;->timeStamp:J

    iput-wide v0, p0, Lcom/htc/painting/engine/eraser/EraserTemporaryStroke;->timeStamp:J

    .line 68
    iget v0, p1, Lcom/htc/painting/engine/eraser/EraserTemporaryStroke;->zOrder:I

    iput v0, p0, Lcom/htc/painting/engine/eraser/EraserTemporaryStroke;->zOrder:I

    .line 69
    return-void
.end method


# virtual methods
.method public getCurrentBoundingBox()Landroid/graphics/RectF;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 77
    iget-object v8, p0, Lcom/htc/painting/engine/eraser/EraserTemporaryStroke;->originalStroke:Lcom/htc/painting/engine/stroke/Stroke;

    if-eqz v8, :cond_0

    .line 78
    iget-object v8, p0, Lcom/htc/painting/engine/eraser/EraserTemporaryStroke;->originalStroke:Lcom/htc/painting/engine/stroke/Stroke;

    invoke-virtual {v8}, Lcom/htc/painting/engine/stroke/Stroke;->getRect()Landroid/graphics/RectF;

    move-result-object v8

    .line 108
    :goto_0
    return-object v8

    .line 81
    :cond_0
    iget-object v8, p0, Lcom/htc/painting/engine/eraser/EraserTemporaryStroke;->mBoundingBox:Landroid/graphics/RectF;

    if-nez v8, :cond_6

    .line 83
    iget-object v8, p0, Lcom/htc/painting/engine/eraser/EraserTemporaryStroke;->inkPoints:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    .line 84
    .local v4, size:I
    if-lez v4, :cond_6

    .line 90
    iget-object v8, p0, Lcom/htc/painting/engine/eraser/EraserTemporaryStroke;->inkPoints:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v8}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v8

    int-to-float v3, v8

    .local v3, right:F
    move v2, v3

    .line 91
    .local v2, left:F
    iget-object v8, p0, Lcom/htc/painting/engine/eraser/EraserTemporaryStroke;->inkPoints:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v8}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v8

    int-to-float v0, v8

    .local v0, bottom:F
    move v5, v0

    .line 92
    .local v5, top:F
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_5

    .line 94
    iget-object v8, p0, Lcom/htc/painting/engine/eraser/EraserTemporaryStroke;->inkPoints:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v8}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v8

    int-to-float v6, v8

    .line 95
    .local v6, x:F
    iget-object v8, p0, Lcom/htc/painting/engine/eraser/EraserTemporaryStroke;->inkPoints:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v8}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v8

    int-to-float v7, v8

    .line 96
    .local v7, y:F
    cmpl-float v8, v2, v6

    if-lez v8, :cond_3

    .line 97
    move v2, v6

    .line 100
    :cond_1
    :goto_2
    cmpl-float v8, v5, v7

    if-lez v8, :cond_4

    .line 101
    move v5, v7

    .line 92
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 98
    :cond_3
    cmpg-float v8, v3, v6

    if-gez v8, :cond_1

    .line 99
    move v3, v6

    goto :goto_2

    .line 102
    :cond_4
    cmpg-float v8, v0, v7

    if-gez v8, :cond_2

    .line 103
    move v0, v7

    goto :goto_3

    .line 105
    .end local v6           #x:F
    .end local v7           #y:F
    :cond_5
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v2, v5, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v8, p0, Lcom/htc/painting/engine/eraser/EraserTemporaryStroke;->mBoundingBox:Landroid/graphics/RectF;

    .line 108
    .end local v0           #bottom:F
    .end local v1           #i:I
    .end local v2           #left:F
    .end local v3           #right:F
    .end local v4           #size:I
    .end local v5           #top:F
    :cond_6
    iget-object v8, p0, Lcom/htc/painting/engine/eraser/EraserTemporaryStroke;->mBoundingBox:Landroid/graphics/RectF;

    goto :goto_0
.end method
