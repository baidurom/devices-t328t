.class public Lcom/htc/painting/penmenu15/view/SectorController;
.super Lcom/htc/painting/penmenu15/view/CircularPanel;
.source "SectorController.java"

# interfaces
.implements Lcom/htc/painting/penmenu15/view/Scrollable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/penmenu15/view/SectorController$OnProgressChangedListener;
    }
.end annotation


# static fields
.field private static final ANGLE_BUFFER:F = 0.5f

.field private static final ICON_AREA_SIZE:I = 0x1e

.field private static final ICON_RANGE_BUFFER:I = 0x14

.field private static final MODE_IDLE:I = 0x32

.field private static final MODE_PANNING:I = 0x34

.field private static final TAG:Ljava/lang/String; = "SectorController"


# instance fields
.field private mArcPaint:Landroid/graphics/Paint;

.field private mArcStartDeg:F

.field private mDist:I

.field private mDrawArc:Z

.field private mIconAngle:F

.field private mIconArea:Landroid/graphics/RectF;

.field private mIconBmp:Landroid/graphics/Bitmap;

.field private mIconPaint:Landroid/graphics/Paint;

.field private mListener:Lcom/htc/painting/penmenu15/view/SectorController$OnProgressChangedListener;

.field private mMax:I

.field private mMaxRadCCW:F

.field private mMin:I

.field private mMinRadCCW:F

.field private mOval:Landroid/graphics/RectF;

.field private mProgress:I

.field private mSweepAngle:F

.field private mTempRect:Landroid/graphics/RectF;

.field private mTouchMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    .line 54
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/CircularPanel;-><init>(Landroid/content/Context;)V

    .line 28
    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mTouchMode:I

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mArcPaint:Landroid/graphics/Paint;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconPaint:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mOval:Landroid/graphics/RectF;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mDrawArc:Z

    .line 45
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconArea:Landroid/graphics/RectF;

    .line 48
    iput v1, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMax:I

    .line 49
    iput v1, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMin:I

    .line 50
    iput v1, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mProgress:I

    .line 190
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mTempRect:Landroid/graphics/RectF;

    .line 55
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/SectorController;->init(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, -0x1

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/htc/painting/penmenu15/view/CircularPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mTouchMode:I

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mArcPaint:Landroid/graphics/Paint;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconPaint:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mOval:Landroid/graphics/RectF;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mDrawArc:Z

    .line 45
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconArea:Landroid/graphics/RectF;

    .line 48
    iput v1, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMax:I

    .line 49
    iput v1, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMin:I

    .line 50
    iput v1, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mProgress:I

    .line 190
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mTempRect:Landroid/graphics/RectF;

    .line 60
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/SectorController;->init(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, -0x1

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/painting/penmenu15/view/CircularPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mTouchMode:I

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mArcPaint:Landroid/graphics/Paint;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconPaint:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mOval:Landroid/graphics/RectF;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mDrawArc:Z

    .line 45
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconArea:Landroid/graphics/RectF;

    .line 48
    iput v1, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMax:I

    .line 49
    iput v1, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMin:I

    .line 50
    iput v1, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mProgress:I

    .line 190
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mTempRect:Landroid/graphics/RectF;

    .line 65
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/SectorController;->init(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method private alignRange(F)F
    .locals 4
    .parameter "rad"

    .prologue
    const/high16 v1, 0x3f00

    const-wide v2, 0x401921fb54442d18L

    .line 281
    iget v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMaxRadCCW:F

    add-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 282
    float-to-double v0, p1

    sub-double/2addr v0, v2

    double-to-float p1, v0

    .line 287
    :cond_0
    :goto_0
    return p1

    .line 283
    :cond_1
    iget v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMinRadCCW:F

    sub-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 284
    float-to-double v0, p1

    add-double/2addr v0, v2

    double-to-float p1, v0

    goto :goto_0
.end method

.method private betweenApproxMinMax(F)Z
    .locals 2
    .parameter "rad"

    .prologue
    const/high16 v1, 0x3f00

    .line 272
    iget v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMaxRadCCW:F

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMinRadCCW:F

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private closeToCurIconAngle(F)Z
    .locals 2
    .parameter "rad"

    .prologue
    .line 276
    iget v1, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconAngle:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconAngle:F

    sub-float v0, p1, v1

    .line 277
    .local v0, dist:F
    :goto_0
    const/high16 v1, 0x4000

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 276
    .end local v0           #dist:F
    :cond_0
    iget v1, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconAngle:F

    sub-float v0, v1, p1

    goto :goto_0

    .line 277
    .restart local v0       #dist:F
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private computeCCWDeg()V
    .locals 8

    .prologue
    .line 125
    const/high16 v4, 0x43b4

    iget v5, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mArcStartDeg:F

    sub-float/2addr v4, v5

    float-to-double v0, v4

    .line 126
    .local v0, maxDegCCW:D
    iget v4, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mSweepAngle:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 129
    .local v2, sweepRadAngle:D
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMaxRadCCW:F

    .line 130
    iget v4, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMaxRadCCW:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    iget v4, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMaxRadCCW:F

    float-to-double v4, v4

    const-wide v6, 0x401921fb54442d18L

    add-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMaxRadCCW:F

    .line 131
    :cond_0
    iget v4, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMaxRadCCW:F

    double-to-float v5, v2

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMinRadCCW:F

    .line 133
    const-string v4, "SectorController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "after computing mArcStartDeg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mArcStartDeg:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sweep: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mSweepAngle:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mMaxRadCCW: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMaxRadCCW:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mMinRadCCW: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMinRadCCW:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method

.method private computeProgressByAngle()V
    .locals 5

    .prologue
    .line 336
    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconAngle:F

    iget v3, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMinRadCCW:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMaxRadCCW:F

    iget v4, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMinRadCCW:F

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 337
    .local v0, percentage:F
    invoke-direct {p0, v0}, Lcom/htc/painting/penmenu15/view/SectorController;->setProgressByPercentage(F)Z

    .line 339
    return-void
.end method

.method private drawIcon(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/SectorController;->updateIconArea()V

    .line 292
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    const/high16 v2, 0x4100

    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private inIconBufferArea(FF)Z
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 192
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 194
    .local v0, buffer:I
    :goto_0
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 195
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mTempRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    int-to-float v4, v0

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    int-to-float v5, v0

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconArea:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 204
    :goto_1
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mTempRect:Landroid/graphics/RectF;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    .line 205
    .local v1, result:Z
    const-string v2, "SectorController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inIconBufferArea result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "bufferRange: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mTempRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return v1

    .line 192
    .end local v0           #buffer:I
    .end local v1           #result:Z
    :cond_0
    const/16 v0, 0x14

    goto :goto_0

    .line 201
    .restart local v0       #buffer:I
    :cond_1
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mTempRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->setEmpty()V

    goto :goto_1
.end method

.method private inIconCoreArea(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconArea:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .parameter "ctx"

    .prologue
    const/high16 v5, 0x41f0

    const/high16 v4, 0x40a0

    const/4 v3, 0x0

    .line 69
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mArcPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mArcPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mArcPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconArea:Landroid/graphics/RectF;

    invoke-virtual {v1, v3, v3, v5, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 79
    const v1, 0x400cbe4c

    invoke-direct {p0, v1}, Lcom/htc/painting/penmenu15/view/SectorController;->alignRange(F)F

    move-result v0

    .line 80
    .local v0, angle:F
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/painting/penmenu15/view/SectorController;->updateIconAngle(FZ)V

    .line 81
    return-void
.end method

.method private static mod360Positive(I)I
    .locals 1
    .parameter "deg"

    .prologue
    .line 119
    rem-int/lit16 v0, p0, 0x168

    .line 120
    .local v0, result:I
    if-gez v0, :cond_0

    add-int/lit16 v0, v0, 0x168

    .line 121
    :cond_0
    return v0
.end method

.method private moveIconAngleTo(Landroid/view/MotionEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    .line 262
    iget-object v6, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    float-to-double v2, v6

    .line 263
    .local v2, deltaY:D
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    sub-float/2addr v6, v7

    float-to-double v0, v6

    .line 264
    .local v0, deltaX:D
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    .line 266
    .local v4, rad:D
    double-to-float v6, v4

    invoke-direct {p0, v6}, Lcom/htc/painting/penmenu15/view/SectorController;->alignRange(F)F

    move-result v6

    float-to-double v4, v6

    .line 267
    const-string v6, "SectorController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateIconDeg: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dx: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dy: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    double-to-float v6, v4

    invoke-direct {p0, v6}, Lcom/htc/painting/penmenu15/view/SectorController;->closeToCurIconAngle(F)Z

    move-result v6

    if-eqz v6, :cond_0

    double-to-float v6, v4

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/htc/painting/penmenu15/view/SectorController;->updateIconAngle(FZ)V

    .line 269
    :cond_0
    return-void
.end method

.method private onIconAngleChanged(Z)V
    .locals 0
    .parameter "recomputeProgress"

    .prologue
    .line 322
    if-eqz p1, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/SectorController;->computeProgressByAngle()V

    .line 324
    :cond_0
    return-void
.end method

.method private setProgressByPercentage(F)Z
    .locals 4
    .parameter "percentage"

    .prologue
    .line 342
    iget v1, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMax:I

    iget v3, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMin:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 343
    .local v0, newProg:I
    invoke-direct {p0, v0}, Lcom/htc/painting/penmenu15/view/SectorController;->setProgressInternal(I)Z

    move-result v1

    return v1
.end method

.method private setProgressInternal(I)Z
    .locals 5
    .parameter "newProg"

    .prologue
    .line 348
    const/4 v1, 0x0

    .line 349
    .local v1, progressChanged:Z
    iget v2, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMin:I

    if-lt p1, v2, :cond_0

    iget v2, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMax:I

    if-gt p1, v2, :cond_0

    .line 350
    iget v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mProgress:I

    .line 351
    .local v0, oldProgress:I
    const-string v2, "SectorController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setProgressInternal from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iput p1, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mProgress:I

    .line 355
    iget v2, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mProgress:I

    if-eq v0, v2, :cond_0

    .line 356
    const/4 v1, 0x1

    .line 357
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mListener:Lcom/htc/painting/penmenu15/view/SectorController$OnProgressChangedListener;

    if-eqz v2, :cond_0

    .line 358
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mListener:Lcom/htc/painting/penmenu15/view/SectorController$OnProgressChangedListener;

    iget v3, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mProgress:I

    invoke-interface {v2, p0, v3}, Lcom/htc/painting/penmenu15/view/SectorController$OnProgressChangedListener;->onProgressChanged(Lcom/htc/painting/penmenu15/view/SectorController;I)V

    .line 362
    .end local v0           #oldProgress:I
    :cond_0
    return v1
.end method

.method private updateIconAngle(FZ)V
    .locals 1
    .parameter "rad"
    .parameter "recomputeProgress"

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/SectorController;->betweenApproxMinMax(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMaxRadCCW:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 250
    iget v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMaxRadCCW:F

    iput v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconAngle:F

    .line 256
    :goto_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/SectorController;->invalidate()V

    .line 258
    :cond_0
    invoke-direct {p0, p2}, Lcom/htc/painting/penmenu15/view/SectorController;->onIconAngleChanged(Z)V

    .line 259
    return-void

    .line 251
    :cond_1
    iget v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMinRadCCW:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    .line 252
    iget v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMinRadCCW:F

    iput v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconAngle:F

    goto :goto_0

    .line 254
    :cond_2
    iput p1, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconAngle:F

    goto :goto_0
.end method

.method private updateIconArea()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 301
    iget v5, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mDist:I

    int-to-double v5, v5

    iget v7, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconAngle:F

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v0, v5, v7

    .line 302
    .local v0, deltaX:D
    iget v5, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mDist:I

    int-to-double v5, v5

    iget v7, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconAngle:F

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double v2, v5, v7

    .line 304
    .local v2, deltaY:D
    const/4 v5, 0x2

    new-array v4, v5, [F

    .line 305
    .local v4, iconCenter:[F
    iget-object v5, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    float-to-double v5, v5

    add-double/2addr v5, v0

    double-to-float v5, v5

    aput v5, v4, v9

    .line 306
    iget-object v5, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    float-to-double v5, v5

    sub-double/2addr v5, v2

    double-to-float v5, v5

    aput v5, v4, v10

    .line 308
    iget-object v5, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconArea:Landroid/graphics/RectF;

    aget v6, v4, v9

    iget-object v7, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconArea:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    sub-float/2addr v6, v7

    aget v7, v4, v10

    iget-object v8, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconArea:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->offset(FF)V

    .line 309
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mProgress:I

    return v0
.end method

.method protected inChildCoreArea(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public isScrolling()Z
    .locals 2

    .prologue
    .line 318
    iget v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mTouchMode:I

    const/16 v1, 0x34

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/htc/painting/penmenu15/view/CircularPanel;->onDraw(Landroid/graphics/Canvas;)V

    .line 160
    iget-boolean v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mDrawArc:Z

    if-eqz v0, :cond_0

    .line 161
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mOval:Landroid/graphics/RectF;

    iget v2, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mArcStartDeg:F

    iget v3, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mSweepAngle:F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mArcPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 164
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/SectorController;->drawIcon(Landroid/graphics/Canvas;)V

    .line 165
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v2, 0x1

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 171
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 172
    .local v1, y:F
    invoke-direct {p0, v0, v1}, Lcom/htc/painting/penmenu15/view/SectorController;->inIconCoreArea(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 180
    .end local v0           #x:F
    .end local v1           #y:F
    :cond_0
    :goto_0
    return v2

    .line 174
    .restart local v0       #x:F
    .restart local v1       #y:F
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/htc/painting/penmenu15/view/SectorController;->inChildCoreArea(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    const/4 v2, 0x0

    goto :goto_0

    .line 176
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/htc/painting/penmenu15/view/SectorController;->inIconBufferArea(FF)Z

    move-result v3

    if-nez v3, :cond_0

    .line 180
    .end local v0           #x:F
    .end local v1           #y:F
    :cond_3
    invoke-super {p0, p1}, Lcom/htc/painting/penmenu15/view/CircularPanel;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 142
    invoke-super/range {p0 .. p5}, Lcom/htc/painting/penmenu15/view/CircularPanel;->onLayout(ZIIII)V

    .line 144
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mOval:Landroid/graphics/RectF;

    iget v2, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mDist:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mDist:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 145
    const/4 v1, 0x2

    new-array v0, v1, [F

    sub-int v1, p4, p2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    aput v1, v0, v5

    sub-int v1, p5, p3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    aput v1, v0, v6

    .line 147
    .local v0, center:[F
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mOval:Landroid/graphics/RectF;

    aget v2, v0, v5

    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sub-float/2addr v2, v3

    aget v3, v0, v6

    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 148
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/SectorController;->updateIconArea()V

    .line 149
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/16 v3, 0x34

    const/16 v2, 0x32

    .line 222
    iget v1, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mTouchMode:I

    if-eq v1, v2, :cond_3

    const/4 v0, 0x1

    .line 224
    .local v0, shouldConsume:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 237
    :cond_0
    :goto_1
    :pswitch_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/SectorController;->invalidate()V

    .line 239
    :cond_1
    iget v1, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mTouchMode:I

    if-ne v1, v3, :cond_2

    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/SectorController;->moveIconAngleTo(Landroid/view/MotionEvent;)V

    .line 242
    :cond_2
    return v0

    .line 222
    .end local v0           #shouldConsume:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 226
    .restart local v0       #shouldConsume:Z
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/htc/painting/penmenu15/view/SectorController;->inIconBufferArea(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    iput v3, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mTouchMode:I

    .line 228
    const/4 v0, 0x1

    goto :goto_1

    .line 233
    :pswitch_2
    iput v2, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mTouchMode:I

    goto :goto_1

    .line 224
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setAngles(IIZ)V
    .locals 2
    .parameter "startDeg"
    .parameter "sweepAngle"
    .parameter "drawArc"

    .prologue
    .line 108
    invoke-static {p1}, Lcom/htc/painting/penmenu15/view/SectorController;->mod360Positive(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mArcStartDeg:F

    .line 109
    int-to-float v0, p2

    iput v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mSweepAngle:F

    .line 111
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/SectorController;->computeCCWDeg()V

    .line 112
    iget v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconAngle:F

    iget v1, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMaxRadCCW:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconAngle:F

    iget v1, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMinRadCCW:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_1

    .line 113
    :cond_0
    iget v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMinRadCCW:F

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/painting/penmenu15/view/SectorController;->updateIconAngle(FZ)V

    .line 115
    :cond_1
    iput-boolean p3, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mDrawArc:Z

    .line 116
    return-void
.end method

.method public setIconRes(II)V
    .locals 4
    .parameter "res"
    .parameter "dist"

    .prologue
    const/high16 v1, 0x41f0

    const/4 v3, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/SectorController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconBmp:Landroid/graphics/Bitmap;

    .line 89
    iput p2, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mDist:I

    .line 90
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mIconArea:Landroid/graphics/RectF;

    invoke-virtual {v0, v3, v3, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0
.end method

.method public setMinMax(II)V
    .locals 2
    .parameter "min"
    .parameter "max"

    .prologue
    .line 392
    if-ge p2, p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "max should be grater or equal to min"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_0
    iput p2, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMax:I

    .line 395
    iput p1, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMin:I

    .line 397
    iget v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mProgress:I

    if-ge v0, p1, :cond_2

    .line 398
    invoke-virtual {p0, p1}, Lcom/htc/painting/penmenu15/view/SectorController;->setProgress(I)V

    .line 402
    :cond_1
    :goto_0
    return-void

    .line 399
    :cond_2
    iget v0, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mProgress:I

    if-le v0, p2, :cond_1

    .line 400
    invoke-virtual {p0, p2}, Lcom/htc/painting/penmenu15/view/SectorController;->setProgress(I)V

    goto :goto_0
.end method

.method public setOnProgressChangedListener(Lcom/htc/painting/penmenu15/view/SectorController$OnProgressChangedListener;)V
    .locals 0
    .parameter "list"

    .prologue
    .line 331
    iput-object p1, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mListener:Lcom/htc/painting/penmenu15/view/SectorController$OnProgressChangedListener;

    .line 332
    return-void
.end method

.method public setProgress(I)V
    .locals 7
    .parameter "prog"

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/SectorController;->setProgressInternal(I)Z

    move-result v2

    .line 372
    .local v2, progChanged:Z
    if-eqz v2, :cond_0

    .line 373
    const/high16 v3, 0x3f80

    iget v4, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMin:I

    sub-int v4, p1, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMax:I

    iget v6, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMin:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float v0, v3, v4

    .line 374
    .local v0, ccwPercentage:F
    iget v3, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMaxRadCCW:F

    iget v4, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMinRadCCW:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/htc/painting/penmenu15/view/SectorController;->mMinRadCCW:F

    add-float v1, v3, v4

    .line 375
    .local v1, iconAngle:F
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/htc/painting/penmenu15/view/SectorController;->updateIconAngle(FZ)V

    .line 377
    .end local v0           #ccwPercentage:F
    .end local v1           #iconAngle:F
    :cond_0
    return-void
.end method
