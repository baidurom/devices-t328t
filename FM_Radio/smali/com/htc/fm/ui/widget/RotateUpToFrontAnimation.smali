.class public Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;
.super Landroid/view/animation/Animation;
.source "RotateUpToFrontAnimation.java"


# instance fields
.field i:I

.field private mCamera:Landroid/graphics/Camera;

.field private final mCenterX:F

.field private final mCenterY:F

.field private final mDepthZ:F

.field private final mFromDegrees:F

.field private final mToDegrees:F

.field private final mbIsShowWhenEnd:Z

.field private final moffsetY:F


# direct methods
.method public constructor <init>(FFFFFZF)V
    .locals 1
    .parameter "fromDegrees"
    .parameter "toDegrees"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "depthZ"
    .parameter "IsShowwhenEnd"
    .parameter "offsetY"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->i:I

    .line 43
    iput p1, p0, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->mFromDegrees:F

    .line 44
    iput p2, p0, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->mToDegrees:F

    .line 45
    iput p3, p0, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->mCenterX:F

    .line 46
    iput p4, p0, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->mCenterY:F

    .line 47
    iput p5, p0, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->mDepthZ:F

    .line 48
    iput p7, p0, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->moffsetY:F

    .line 49
    iput-boolean p6, p0, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->mbIsShowWhenEnd:Z

    .line 51
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 9
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/4 v8, 0x0

    .line 62
    iget v4, p0, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->mFromDegrees:F

    .line 63
    .local v4, fromDegrees:F
    iget v6, p0, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->mToDegrees:F

    sub-float/2addr v6, v4

    mul-float/2addr v6, p1

    add-float v3, v4, v6

    .line 65
    .local v3, degrees:F
    iget v1, p0, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->mCenterX:F

    .line 66
    .local v1, centerX:F
    iget v2, p0, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->mCenterY:F

    .line 67
    .local v2, centerY:F
    iget-object v0, p0, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->mCamera:Landroid/graphics/Camera;

    .line 71
    .local v0, camera:Landroid/graphics/Camera;
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 72
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {p2, p1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 75
    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 80
    iget v6, p0, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->mCenterY:F

    iget v7, p0, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->moffsetY:F

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f80

    sub-float/2addr v7, p1

    mul-float/2addr v6, v7

    invoke-virtual {v0, v8, v6, v8}, Landroid/graphics/Camera;->translate(FFF)V

    .line 85
    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateX(F)V

    .line 86
    invoke-virtual {v0, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 87
    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 89
    neg-float v6, v1

    neg-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 90
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 105
    return-void
.end method

.method public initialize(IIII)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 56
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->mCamera:Landroid/graphics/Camera;

    .line 57
    return-void
.end method
