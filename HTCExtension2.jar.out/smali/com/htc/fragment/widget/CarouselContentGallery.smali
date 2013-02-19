.class Lcom/htc/fragment/widget/CarouselContentGallery;
.super Lcom/htc/fragment/widget/Gallery2;
.source "CarouselContentGallery.java"


# static fields
.field public static final HVGA:I = 0x0

.field public static final QVGA:I = 0x1

.field public static final WVGA:I = 0x2

.field private static sAngle:F

.field private static sDegree:F

.field private static sDegree_H:F

.field private static sSpacing:F


# instance fields
.field private cos:D

.field private d:I

.field private deg:F

.field private mAlbumHeight:I

.field private mAlbumHeight_H:F

.field private mAlbumWidth:I

.field private mAlbumWidth_H:F

.field private mCamera:Landroid/graphics/Camera;

.field private mLeftX:I

.field private mLoc:[I

.field private mResolution:I

.field private mStartX:I

.field private mtx:Landroid/graphics/Matrix;

.field private mtxRotate:Landroid/graphics/Matrix;

.field private mtxTranslate:Landroid/graphics/Matrix;

.field private needCheckBg:Z

.field private rad:D

.field private sin:D

.field private tmp:D

.field private x:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const/high16 v0, 0x42f0

    sput v0, Lcom/htc/fragment/widget/CarouselContentGallery;->sAngle:F

    .line 37
    const/high16 v0, 0x4334

    sget v1, Lcom/htc/fragment/widget/CarouselContentGallery;->sAngle:F

    sub-float/2addr v0, v1

    sput v0, Lcom/htc/fragment/widget/CarouselContentGallery;->sDegree:F

    .line 38
    sget v0, Lcom/htc/fragment/widget/CarouselContentGallery;->sDegree:F

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    sput v0, Lcom/htc/fragment/widget/CarouselContentGallery;->sDegree_H:F

    .line 39
    const/high16 v0, 0x4040

    sput v0, Lcom/htc/fragment/widget/CarouselContentGallery;->sSpacing:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 55
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/Gallery2;-><init>(Landroid/content/Context;)V

    .line 42
    iput v1, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    .line 43
    iput v1, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumHeight:I

    .line 47
    new-instance v1, Landroid/graphics/Camera;

    invoke-direct {v1}, Landroid/graphics/Camera;-><init>()V

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    .line 49
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLoc:[I

    .line 50
    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLeftX:I

    .line 97
    sget-boolean v1, Lcom/htc/fragment/widget/CarouselHost;->BACKGROUND_DEBUG:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->needCheckBg:Z

    .line 131
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxRotate:Landroid/graphics/Matrix;

    .line 132
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxTranslate:Landroid/graphics/Matrix;

    .line 56
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselContentGallery;->init()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/htc/fragment/widget/Gallery2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput v1, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    .line 43
    iput v1, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumHeight:I

    .line 47
    new-instance v1, Landroid/graphics/Camera;

    invoke-direct {v1}, Landroid/graphics/Camera;-><init>()V

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    .line 49
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLoc:[I

    .line 50
    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLeftX:I

    .line 97
    sget-boolean v1, Lcom/htc/fragment/widget/CarouselHost;->BACKGROUND_DEBUG:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->needCheckBg:Z

    .line 131
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxRotate:Landroid/graphics/Matrix;

    .line 132
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxTranslate:Landroid/graphics/Matrix;

    .line 61
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselContentGallery;->init()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/fragment/widget/Gallery2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput v1, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    .line 43
    iput v1, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumHeight:I

    .line 47
    new-instance v1, Landroid/graphics/Camera;

    invoke-direct {v1}, Landroid/graphics/Camera;-><init>()V

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    .line 49
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLoc:[I

    .line 50
    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLeftX:I

    .line 97
    sget-boolean v1, Lcom/htc/fragment/widget/CarouselHost;->BACKGROUND_DEBUG:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->needCheckBg:Z

    .line 131
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxRotate:Landroid/graphics/Matrix;

    .line 132
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxTranslate:Landroid/graphics/Matrix;

    .line 66
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselContentGallery;->init()V

    .line 67
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselContentGallery;->setSpacing(I)V

    .line 71
    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselContentGallery;->setHorizontalFadingEdgeEnabled(Z)V

    .line 72
    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselContentGallery;->setFastScrollEnabled(Z)V

    .line 73
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mResolution:I

    .line 75
    invoke-static {}, Lcom/htc/fragment/widget/CarouselUtil;->isLiteDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iput v2, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_DEFINED:I

    .line 77
    iput v2, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_CURRENT:I

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselContentGallery;->checkAnimationModeAndType()V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    .line 84
    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselContentGallery;->setDrawingCacheEnabled(Z)V

    .line 85
    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselContentGallery;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 86
    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselContentGallery;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 88
    sget v0, Lcom/htc/fragment/widget/CarouselContentGallery;->sDegree_H:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->rad:D

    .line 89
    iget-wide v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->rad:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->sin:D

    .line 90
    iget-wide v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->rad:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->cos:D

    .line 94
    return-void
.end method


# virtual methods
.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 11
    .parameter "child"
    .parameter "t"

    .prologue
    const/high16 v3, 0x3f00

    const-wide/high16 v9, 0x3ff0

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 150
    iget v2, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_CURRENT:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    .line 278
    :goto_0
    return v0

    .line 153
    :cond_0
    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    if-gez v2, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselContentGallery;->getMeasuredWidth()I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    .line 160
    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth_H:F

    .line 161
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselContentGallery;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumHeight:I

    .line 162
    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumHeight_H:F

    .line 165
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLoc:[I

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselContentGallery;->getLocationOnScreen([I)V

    .line 166
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLoc:[I

    aget v2, v2, v0

    iput v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mStartX:I

    .line 169
    :cond_1
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLoc:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 171
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtx:Landroid/graphics/Matrix;

    .line 173
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLoc:[I

    aget v0, v2, v0

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLeftX:I

    .line 176
    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLeftX:I

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mStartX:I

    if-ge v0, v2, :cond_2

    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLeftX:I

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mStartX:I

    iget v3, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    sub-int/2addr v2, v3

    if-lt v0, v2, :cond_2

    .line 181
    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mStartX:I

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLeftX:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->d:I

    .line 182
    sget v0, Lcom/htc/fragment/widget/CarouselContentGallery;->sDegree:F

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->d:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->deg:F

    .line 189
    const/high16 v0, 0x42b4

    sget v2, Lcom/htc/fragment/widget/CarouselContentGallery;->sDegree_H:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->deg:F

    add-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->tmp:D

    .line 199
    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth_H:F

    float-to-double v2, v0

    iget-wide v4, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->tmp:D

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    neg-double v4, v4

    iget-wide v6, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->sin:D

    div-double/2addr v4, v6

    add-double/2addr v4, v9

    mul-double/2addr v2, v4

    neg-double v2, v2

    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->d:I

    int-to-double v4, v0

    add-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->x:F

    .line 200
    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth_H:F

    float-to-double v2, v0

    iget-wide v4, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->sin:D

    div-double/2addr v2, v4

    iget-wide v4, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->tmp:D

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget-wide v6, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->cos:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->z:F

    .line 203
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 204
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->deg:F

    neg-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Camera;->rotateY(F)V

    .line 205
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxRotate:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 206
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxRotate:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumHeight_H:F

    neg-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 207
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxRotate:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->x:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumHeight_H:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 208
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 211
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 212
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->z:F

    neg-float v2, v2

    invoke-virtual {v0, v8, v8, v2}, Landroid/graphics/Camera;->translate(FFF)V

    .line 213
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxTranslate:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 214
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxTranslate:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumHeight_H:F

    neg-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 215
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxTranslate:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumHeight_H:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 216
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 218
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtx:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxTranslate:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxRotate:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    move v0, v1

    .line 220
    goto/16 :goto_0

    .line 224
    :cond_2
    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLeftX:I

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mStartX:I

    if-le v0, v2, :cond_3

    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLeftX:I

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mStartX:I

    iget v3, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    add-int/2addr v2, v3

    if-gt v0, v2, :cond_3

    .line 229
    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLeftX:I

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mStartX:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->d:I

    .line 230
    sget v0, Lcom/htc/fragment/widget/CarouselContentGallery;->sDegree:F

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->d:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->deg:F

    .line 237
    const/high16 v0, 0x42b4

    sget v2, Lcom/htc/fragment/widget/CarouselContentGallery;->sDegree_H:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->deg:F

    add-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->tmp:D

    .line 247
    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth_H:F

    float-to-double v2, v0

    iget-wide v4, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->tmp:D

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    neg-double v4, v4

    iget-wide v6, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->sin:D

    div-double/2addr v4, v6

    add-double/2addr v4, v9

    mul-double/2addr v2, v4

    neg-double v2, v2

    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->d:I

    int-to-double v4, v0

    add-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->x:F

    .line 248
    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth_H:F

    float-to-double v2, v0

    iget-wide v4, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->sin:D

    div-double/2addr v2, v4

    iget-wide v4, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->tmp:D

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget-wide v6, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->cos:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->z:F

    .line 251
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 252
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->deg:F

    invoke-virtual {v0, v2}, Landroid/graphics/Camera;->rotateY(F)V

    .line 253
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxRotate:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 254
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxRotate:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumHeight_H:F

    neg-float v2, v2

    invoke-virtual {v0, v8, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 255
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxRotate:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->x:F

    sub-float v2, v8, v2

    iget v3, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumHeight_H:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 256
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 259
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 260
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->z:F

    neg-float v2, v2

    invoke-virtual {v0, v8, v8, v2}, Landroid/graphics/Camera;->translate(FFF)V

    .line 261
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxTranslate:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 262
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxTranslate:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumHeight_H:F

    neg-float v2, v2

    invoke-virtual {v0, v8, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 263
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxTranslate:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumHeight_H:F

    invoke-virtual {v0, v8, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 264
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 266
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtx:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxTranslate:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxRotate:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    move v0, v1

    .line 268
    goto/16 :goto_0

    .line 273
    :cond_3
    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLeftX:I

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mStartX:I

    if-eq v0, v2, :cond_4

    .line 274
    const-string v0, "naeco"

    const-string v2, "!!!!!!!!!!"

    invoke-static {v0, v2}, Lcom/htc/fragment/widget/CarouselLog;->dw(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v2, "naeco"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLeftX="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLeftX:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/ mStartX="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mStartX:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mAlbumWidth="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", w="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLeftX:I

    iget v4, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mStartX:I

    if-ge v0, v4, :cond_5

    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mStartX:I

    iget v4, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    sub-int/2addr v0, v4

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/htc/fragment/widget/CarouselLog;->dw(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v0, v1

    .line 278
    goto/16 :goto_0

    .line 275
    :cond_5
    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mStartX:I

    iget v4, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    add-int/2addr v0, v4

    goto :goto_1
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 8
    .parameter "motionToLeft"
    .parameter "deltaX"

    .prologue
    const/4 v6, 0x0

    .line 331
    if-eqz p1, :cond_1

    iget v7, p0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    add-int/lit8 v3, v7, -0x1

    .line 332
    .local v3, extremeItemPosition:I
    :goto_0
    iget v7, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    sub-int v7, v3, v7

    invoke-virtual {p0, v7}, Lcom/htc/fragment/widget/CarouselContentGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 335
    .local v1, extremeChild:Landroid/view/View;
    if-nez v1, :cond_4

    .line 336
    invoke-virtual {p0, v6}, Lcom/htc/fragment/widget/CarouselContentGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 337
    .local v4, firstChild:Landroid/view/View;
    if-nez v4, :cond_2

    move v6, p2

    .line 362
    .end local v4           #firstChild:Landroid/view/View;
    :cond_0
    :goto_1
    return v6

    .end local v1           #extremeChild:Landroid/view/View;
    .end local v3           #extremeItemPosition:I
    :cond_1
    move v3, v6

    .line 331
    goto :goto_0

    .line 340
    .restart local v1       #extremeChild:Landroid/view/View;
    .restart local v3       #extremeItemPosition:I
    .restart local v4       #firstChild:Landroid/view/View;
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    mul-int v2, v3, v7

    .line 346
    .end local v4           #firstChild:Landroid/view/View;
    .local v2, extremeChildCenter:I
    :goto_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselContentGallery;->getCenterOfGallery()I

    move-result v5

    .line 348
    .local v5, galleryCenter:I
    if-eqz p1, :cond_5

    .line 349
    if-le v2, v5, :cond_0

    .line 360
    :cond_3
    sub-int v0, v5, v2

    .line 362
    .local v0, centerDifference:I
    if-eqz p1, :cond_6

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_1

    .line 343
    .end local v0           #centerDifference:I
    .end local v2           #extremeChildCenter:I
    .end local v5           #galleryCenter:I
    :cond_4
    invoke-static {v1}, Lcom/htc/fragment/widget/CarouselContentGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    .restart local v2       #extremeChildCenter:I
    goto :goto_2

    .line 354
    .restart local v5       #galleryCenter:I
    :cond_5
    if-lt v2, v5, :cond_3

    goto :goto_1

    .line 362
    .restart local v0       #centerDifference:I
    :cond_6
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_1
.end method

.method public getResolution()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mResolution:I

    return v0
.end method

.method layout(IZ)V
    .locals 1
    .parameter "delta"
    .parameter "animate"

    .prologue
    .line 101
    invoke-super {p0, p1, p2}, Lcom/htc/fragment/widget/Gallery2;->layout(IZ)V

    .line 104
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->needCheckBg:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselContentGallery;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 105
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselContentGallery;->setBackgroundColor(I)V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->needCheckBg:Z

    .line 108
    :cond_0
    return-void
.end method

.method makeAndAddView(IIIZ)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "offset"
    .parameter "x"
    .parameter "fromLeft"

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 294
    iget-boolean v2, p0, Lcom/htc/fragment/widget/AdapterView;->mDataChanged:Z

    if-nez v2, :cond_1

    .line 295
    iget-object v2, p0, Lcom/htc/fragment/widget/Gallery2;->mRecycler:Lcom/htc/fragment/widget/Gallery2$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/htc/fragment/widget/Gallery2$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v1

    .line 297
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 300
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 303
    .local v7, childLeft:I
    iget v2, p0, Lcom/htc/fragment/widget/Gallery2;->mRightMost:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/Gallery2;->mRightMost:I

    .line 304
    iget v2, p0, Lcom/htc/fragment/widget/Gallery2;->mLeftMost:I

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/Gallery2;->mLeftMost:I

    .line 308
    iget-object v2, p0, Lcom/htc/fragment/widget/Gallery2;->mHook:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    invoke-virtual {v2, v1}, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;->checkAndDetachViewFromParent(Landroid/view/View;)Z

    move-result v8

    .line 311
    .local v8, isInHook:Z
    if-nez v8, :cond_0

    :goto_0
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fragment/widget/CarouselContentGallery;->setUpChild(Landroid/view/View;IIZZ)V

    move-object v6, v1

    .line 327
    .end local v1           #child:Landroid/view/View;
    .end local v7           #childLeft:I
    .local v6, child:Landroid/view/View;
    :goto_1
    return-object v6

    .end local v6           #child:Landroid/view/View;
    .restart local v1       #child:Landroid/view/View;
    .restart local v7       #childLeft:I
    :cond_0
    move v5, v0

    .line 311
    goto :goto_0

    .line 320
    .end local v1           #child:Landroid/view/View;
    .end local v7           #childLeft:I
    .end local v8           #isInHook:Z
    :cond_1
    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 321
    .restart local v1       #child:Landroid/view/View;
    iget-object v2, p0, Lcom/htc/fragment/widget/Gallery2;->mHook:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    invoke-virtual {v2, v1}, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;->checkAndDetachViewFromParent(Landroid/view/View;)Z

    move-result v8

    .line 325
    .restart local v8       #isInHook:Z
    if-nez v8, :cond_2

    :goto_2
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fragment/widget/CarouselContentGallery;->setUpChild(Landroid/view/View;IIZZ)V

    move-object v6, v1

    .line 327
    .end local v1           #child:Landroid/view/View;
    .restart local v6       #child:Landroid/view/View;
    goto :goto_1

    .end local v6           #child:Landroid/view/View;
    .restart local v1       #child:Landroid/view/View;
    :cond_2
    move v5, v0

    .line 325
    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Lcom/htc/fragment/widget/Gallery2;->onMeasure(II)V

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mStartX:I

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    .line 129
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method
