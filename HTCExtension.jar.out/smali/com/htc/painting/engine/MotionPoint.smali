.class public Lcom/htc/painting/engine/MotionPoint;
.super Ljava/lang/Object;
.source "MotionPoint.java"


# instance fields
.field protected mActionAreaSize:F

.field protected mActionPressure:F

.field protected mDistance:F

.field protected mTimeOffset:J

.field protected mX:I

.field protected mY:I


# direct methods
.method public constructor <init>(IIFFFJ)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "touchSize"
    .parameter "distance"
    .parameter "timeOffset"

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v1, p0, Lcom/htc/painting/engine/MotionPoint;->mX:I

    .line 12
    iput v1, p0, Lcom/htc/painting/engine/MotionPoint;->mY:I

    .line 13
    iput v0, p0, Lcom/htc/painting/engine/MotionPoint;->mActionPressure:F

    .line 14
    iput v0, p0, Lcom/htc/painting/engine/MotionPoint;->mActionAreaSize:F

    .line 15
    iput v0, p0, Lcom/htc/painting/engine/MotionPoint;->mDistance:F

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/painting/engine/MotionPoint;->mTimeOffset:J

    .line 33
    iput p1, p0, Lcom/htc/painting/engine/MotionPoint;->mX:I

    .line 34
    iput p2, p0, Lcom/htc/painting/engine/MotionPoint;->mY:I

    .line 35
    iput p3, p0, Lcom/htc/painting/engine/MotionPoint;->mActionPressure:F

    .line 36
    iput p4, p0, Lcom/htc/painting/engine/MotionPoint;->mActionAreaSize:F

    .line 37
    iput p5, p0, Lcom/htc/painting/engine/MotionPoint;->mDistance:F

    .line 38
    iput-wide p6, p0, Lcom/htc/painting/engine/MotionPoint;->mTimeOffset:J

    .line 39
    return-void
.end method

.method public static distanceBetweenPoint(Lcom/htc/painting/engine/MotionPoint;Lcom/htc/painting/engine/MotionPoint;)F
    .locals 8
    .parameter "p1"
    .parameter "p2"

    .prologue
    const/4 v5, 0x0

    .line 131
    invoke-virtual {p1}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v6

    invoke-virtual {p0}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v3, v6

    .line 132
    .local v3, dx:F
    invoke-virtual {p1}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v6

    invoke-virtual {p0}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v4, v6

    .line 133
    .local v4, dy:F
    mul-float v6, v3, v3

    mul-float v7, v4, v4

    add-float v2, v6, v7

    .line 134
    .local v2, d2:F
    cmpl-float v6, v2, v5

    if-eqz v6, :cond_0

    .line 135
    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 136
    .local v0, d:D
    double-to-float v5, v0

    .line 138
    .end local v0           #d:D
    :cond_0
    return v5
.end method


# virtual methods
.method public getActionAreaSize()F
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/htc/painting/engine/MotionPoint;->mActionAreaSize:F

    return v0
.end method

.method public getActionPressure()F
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/htc/painting/engine/MotionPoint;->mActionPressure:F

    return v0
.end method

.method public getDistance()F
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/htc/painting/engine/MotionPoint;->mDistance:F

    return v0
.end method

.method public getTimeOffset()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/htc/painting/engine/MotionPoint;->mTimeOffset:J

    return-wide v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/htc/painting/engine/MotionPoint;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/htc/painting/engine/MotionPoint;->mY:I

    return v0
.end method

.method public setActionPressure(F)V
    .locals 0
    .parameter "value"

    .prologue
    .line 70
    iput p1, p0, Lcom/htc/painting/engine/MotionPoint;->mActionPressure:F

    .line 71
    return-void
.end method

.method public setDistance(F)V
    .locals 0
    .parameter "value"

    .prologue
    .line 94
    iput p1, p0, Lcom/htc/painting/engine/MotionPoint;->mDistance:F

    .line 95
    return-void
.end method

.method public setTimeOffset(J)V
    .locals 0
    .parameter "value"

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/htc/painting/engine/MotionPoint;->mTimeOffset:J

    .line 111
    return-void
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 4
    .parameter "m"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 119
    .local v0, point:[F
    iget v1, p0, Lcom/htc/painting/engine/MotionPoint;->mX:I

    int-to-float v1, v1

    aput v1, v0, v2

    .line 120
    iget v1, p0, Lcom/htc/painting/engine/MotionPoint;->mY:I

    int-to-float v1, v1

    aput v1, v0, v3

    .line 121
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 122
    aget v1, v0, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/painting/engine/MotionPoint;->mX:I

    .line 123
    aget v1, v0, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/painting/engine/MotionPoint;->mY:I

    .line 124
    return-void
.end method
