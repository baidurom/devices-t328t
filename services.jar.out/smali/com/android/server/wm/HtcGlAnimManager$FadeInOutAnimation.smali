.class Lcom/android/server/wm/HtcGlAnimManager$FadeInOutAnimation;
.super Landroid/view/animation/Animation;
.source "HtcGlAnimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/HtcGlAnimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FadeInOutAnimation"
.end annotation


# instance fields
.field mFadeIn:Z

.field mWidth:I


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .parameter "fadeIn"

    .prologue
    .line 1096
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 1097
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/HtcGlAnimManager$FadeInOutAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1098
    const-wide/16 v0, 0x96

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/HtcGlAnimManager$FadeInOutAnimation;->setDuration(J)V

    .line 1099
    iput-boolean p1, p0, Lcom/android/server/wm/HtcGlAnimManager$FadeInOutAnimation;->mFadeIn:Z

    .line 1100
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 1119
    move v0, p1

    .line 1120
    .local v0, x:F
    iget-boolean v1, p0, Lcom/android/server/wm/HtcGlAnimManager$FadeInOutAnimation;->mFadeIn:Z

    if-nez v1, :cond_0

    .line 1121
    const/high16 v1, 0x3f80

    sub-float v0, v1, v0

    .line 1133
    :cond_0
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 1134
    return-void
.end method

.method public getZAdjustment()I
    .locals 1

    .prologue
    .line 1144
    const/4 v0, 0x1

    return v0
.end method

.method public initialize(IIII)V
    .locals 0
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 1139
    iput p1, p0, Lcom/android/server/wm/HtcGlAnimManager$FadeInOutAnimation;->mWidth:I

    .line 1140
    return-void
.end method

.method public scaleCurrentDuration(F)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 1112
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1113
    invoke-super {p0, p1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 1115
    :cond_0
    return-void
.end method
