.class Lcom/htc/weather/animations/Heatwaves$1;
.super Lcom/htc/weather/animations/ImageViewAndAnimationSets;
.source "Heatwaves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/weather/animations/Heatwaves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/weather/animations/Heatwaves;


# direct methods
.method constructor <init>(Lcom/htc/weather/animations/Heatwaves;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/htc/weather/animations/Heatwaves$1;->this$0:Lcom/htc/weather/animations/Heatwaves;

    invoke-direct {p0}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialImageView()Landroid/widget/ImageView;
    .locals 6

    .prologue
    const/high16 v3, 0x3f80

    const/4 v5, -0x2

    .line 43
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/weather/animations/Heatwaves$1;->this$0:Lcom/htc/weather/animations/Heatwaves;

    iget-object v1, v1, Lcom/htc/weather/animations/WeatherAnimationData;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44
    .local v0, imageView:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/htc/weather/animations/Heatwaves$1;->this$0:Lcom/htc/weather/animations/Heatwaves;

    iget-object v1, v1, Lcom/htc/weather/animations/WeatherAnimationData;->mContext:Landroid/content/Context;

    const v2, 0x20803d9

    invoke-static {v1, v2}, Lcom/htc/weather/AnimImages;->getResBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 46
    iget-object v1, p0, Lcom/htc/weather/animations/Heatwaves$1;->this$0:Lcom/htc/weather/animations/Heatwaves;

    iget-object v1, v1, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/animations/Heatwaves$1;->this$0:Lcom/htc/weather/animations/Heatwaves;

    iget-object v1, v1, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/weather/animations/Heatwaves$1;->this$0:Lcom/htc/weather/animations/Heatwaves;

    iget v2, v2, Lcom/htc/weather/animations/WeatherAnimationData;->shift_x_:I

    add-int/lit8 v2, v2, -0x32

    iget-object v3, p0, Lcom/htc/weather/animations/Heatwaves$1;->this$0:Lcom/htc/weather/animations/Heatwaves;

    iget-object v3, v3, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->offset_x_:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Heatwaves$1;->this$0:Lcom/htc/weather/animations/Heatwaves;

    iget v3, v3, Lcom/htc/weather/animations/WeatherAnimationData;->shift_y_:I

    add-int/lit8 v3, v3, 0xa

    iget-object v4, p0, Lcom/htc/weather/animations/Heatwaves$1;->this$0:Lcom/htc/weather/animations/Heatwaves;

    iget-object v4, v4, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->offset_y_:I

    add-int/2addr v3, v4

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    :goto_0
    return-object v0

    .line 52
    :cond_0
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/weather/animations/Heatwaves$1;->this$0:Lcom/htc/weather/animations/Heatwaves;

    iget v2, v2, Lcom/htc/weather/animations/WeatherAnimationData;->shift_x_:I

    add-int/lit8 v2, v2, -0x32

    iget-object v3, p0, Lcom/htc/weather/animations/Heatwaves$1;->this$0:Lcom/htc/weather/animations/Heatwaves;

    iget-object v3, v3, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->offset_x_:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/weather/animations/Heatwaves$1;->this$0:Lcom/htc/weather/animations/Heatwaves;

    iget-object v3, v3, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/htc/weather/animations/Heatwaves$1;->this$0:Lcom/htc/weather/animations/Heatwaves;

    iget v3, v3, Lcom/htc/weather/animations/WeatherAnimationData;->shift_y_:I

    add-int/lit8 v3, v3, 0xa

    iget-object v4, p0, Lcom/htc/weather/animations/Heatwaves$1;->this$0:Lcom/htc/weather/animations/Heatwaves;

    iget-object v4, v4, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->offset_y_:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/weather/animations/Heatwaves$1;->this$0:Lcom/htc/weather/animations/Heatwaves;

    iget-object v4, v4, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected initialInAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 19

    .prologue
    .line 62
    new-instance v15, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v15, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 63
    .local v15, inAnimationSet:Landroid/view/animation/AnimationSet;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/weather/animations/Heatwaves$1;->this$0:Lcom/htc/weather/animations/Heatwaves;

    iget-object v2, v2, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v2, v2, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/weather/animations/Heatwaves$1;->this$0:Lcom/htc/weather/animations/Heatwaves;

    iget-object v2, v2, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v2, v2, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 64
    new-instance v2, Lcom/htc/weather/animations/WeatherTranslateAnimation;

    const/high16 v3, 0x41a0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/weather/animations/Heatwaves$1;->this$0:Lcom/htc/weather/animations/Heatwaves;

    iget v4, v4, Lcom/htc/weather/animations/WeatherAnimationData;->shift_x_:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x41a0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/weather/animations/Heatwaves$1;->this$0:Lcom/htc/weather/animations/Heatwaves;

    iget v5, v5, Lcom/htc/weather/animations/WeatherAnimationData;->shift_x_:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/high16 v5, -0x3e10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/weather/animations/Heatwaves$1;->this$0:Lcom/htc/weather/animations/Heatwaves;

    iget v6, v6, Lcom/htc/weather/animations/WeatherAnimationData;->shift_y_:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/high16 v6, -0x3d60

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/weather/animations/Heatwaves$1;->this$0:Lcom/htc/weather/animations/Heatwaves;

    iget v7, v7, Lcom/htc/weather/animations/WeatherAnimationData;->shift_y_:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    const-wide/16 v7, 0x294

    new-instance v9, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    const-wide/16 v10, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weather/animations/Heatwaves$1;->this$0:Lcom/htc/weather/animations/Heatwaves;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/htc/weather/animations/WeatherAnimationData;->delay_:J

    move-wide/from16 v17, v0

    add-long v10, v10, v17

    const-wide/16 v17, 0x21

    mul-long v10, v10, v17

    invoke-direct/range {v2 .. v11}, Lcom/htc/weather/animations/WeatherTranslateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v15, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 74
    :goto_0
    const/4 v2, 0x3

    new-array v14, v2, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v14, v2

    const/4 v2, 0x1

    const/high16 v3, 0x3f00

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/weather/animations/Heatwaves$1;->this$0:Lcom/htc/weather/animations/Heatwaves;

    iget v4, v4, Lcom/htc/weather/animations/WeatherAnimationData;->alpha_:F

    mul-float/2addr v3, v4

    aput v3, v14, v2

    const/4 v2, 0x2

    const/high16 v3, 0x3f00

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/weather/animations/Heatwaves$1;->this$0:Lcom/htc/weather/animations/Heatwaves;

    iget v4, v4, Lcom/htc/weather/animations/WeatherAnimationData;->alpha_:F

    mul-float/2addr v3, v4

    aput v3, v14, v2

    .line 75
    .local v14, from:[F
    const/4 v2, 0x3

    new-array v0, v2, [F

    move-object/from16 v16, v0

    const/4 v2, 0x0

    const/high16 v3, 0x3f00

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/weather/animations/Heatwaves$1;->this$0:Lcom/htc/weather/animations/Heatwaves;

    iget v4, v4, Lcom/htc/weather/animations/WeatherAnimationData;->alpha_:F

    mul-float/2addr v3, v4

    aput v3, v16, v2

    const/4 v2, 0x1

    const/high16 v3, 0x3f00

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/weather/animations/Heatwaves$1;->this$0:Lcom/htc/weather/animations/Heatwaves;

    iget v4, v4, Lcom/htc/weather/animations/WeatherAnimationData;->alpha_:F

    mul-float/2addr v3, v4

    aput v3, v16, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v16, v2

    .line 76
    .local v16, to:[F
    const/4 v2, 0x3

    new-array v13, v2, [J

    fill-array-data v13, :array_0

    .line 77
    .local v13, dur:[J
    new-instance v12, Lcom/htc/weather/animations/compoundAlphaAnimation;

    array-length v2, v14

    move-object/from16 v0, v16

    invoke-direct {v12, v2, v14, v0}, Lcom/htc/weather/animations/compoundAlphaAnimation;-><init>(I[F[F)V

    .line 79
    .local v12, ca:Lcom/htc/weather/animations/compoundAlphaAnimation;
    invoke-virtual {v12, v13}, Lcom/htc/weather/animations/compoundAlphaAnimation;->setDuration([J)V

    .line 80
    invoke-virtual {v15, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 92
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 94
    return-object v15

    .line 69
    .end local v12           #ca:Lcom/htc/weather/animations/compoundAlphaAnimation;
    .end local v13           #dur:[J
    .end local v14           #from:[F
    .end local v16           #to:[F
    :cond_0
    new-instance v2, Lcom/htc/weather/animations/WeatherTranslateAnimation;

    const/high16 v3, 0x41a0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/weather/animations/Heatwaves$1;->this$0:Lcom/htc/weather/animations/Heatwaves;

    iget v4, v4, Lcom/htc/weather/animations/WeatherAnimationData;->shift_x_:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/weather/animations/Heatwaves$1;->this$0:Lcom/htc/weather/animations/Heatwaves;

    iget-object v4, v4, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x41a0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/weather/animations/Heatwaves$1;->this$0:Lcom/htc/weather/animations/Heatwaves;

    iget v5, v5, Lcom/htc/weather/animations/WeatherAnimationData;->shift_x_:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/weather/animations/Heatwaves$1;->this$0:Lcom/htc/weather/animations/Heatwaves;

    iget-object v5, v5, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v5, v5, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v4, v5

    const/high16 v5, -0x3e10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/weather/animations/Heatwaves$1;->this$0:Lcom/htc/weather/animations/Heatwaves;

    iget v6, v6, Lcom/htc/weather/animations/WeatherAnimationData;->shift_y_:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/weather/animations/Heatwaves$1;->this$0:Lcom/htc/weather/animations/Heatwaves;

    iget-object v6, v6, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v6, v6, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v5, v6

    const/high16 v6, -0x3d60

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/weather/animations/Heatwaves$1;->this$0:Lcom/htc/weather/animations/Heatwaves;

    iget v7, v7, Lcom/htc/weather/animations/WeatherAnimationData;->shift_y_:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/weather/animations/Heatwaves$1;->this$0:Lcom/htc/weather/animations/Heatwaves;

    iget-object v7, v7, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v7, v7, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v6, v7

    const-wide/16 v7, 0x294

    new-instance v9, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    const-wide/16 v10, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weather/animations/Heatwaves$1;->this$0:Lcom/htc/weather/animations/Heatwaves;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/htc/weather/animations/WeatherAnimationData;->delay_:J

    move-wide/from16 v17, v0

    add-long v10, v10, v17

    const-wide/16 v17, 0x21

    mul-long v10, v10, v17

    invoke-direct/range {v2 .. v11}, Lcom/htc/weather/animations/WeatherTranslateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v15, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 76
    nop

    :array_0
    .array-data 0x8
        0xe7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc6t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected initialOutAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 99
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 101
    .local v8, outAnimationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Lcom/htc/weather/animations/WeatherAlphaAnimation;

    const-wide/16 v3, 0x294

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget-object v2, p0, Lcom/htc/weather/animations/Heatwaves$1;->this$0:Lcom/htc/weather/animations/Heatwaves;

    iget-wide v6, v2, Lcom/htc/weather/animations/WeatherAnimationData;->delay_:J

    const-wide/16 v9, 0x21

    mul-long/2addr v6, v9

    move v2, v1

    invoke-direct/range {v0 .. v7}, Lcom/htc/weather/animations/WeatherAlphaAnimation;-><init>(FFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 105
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 107
    return-object v8
.end method

.method protected initialRestAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method
