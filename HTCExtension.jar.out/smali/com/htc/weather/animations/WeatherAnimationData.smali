.class public abstract Lcom/htc/weather/animations/WeatherAnimationData;
.super Ljava/lang/Object;
.source "WeatherAnimationData.java"


# static fields
.field protected static final _10_frameRate_:J = 0x14aL

.field protected static final _15_frameRate_:J = 0x1efL

.field protected static final _20_frameRate_:J = 0x294L

.field protected static final _24_frameRate_:J = 0x318L

.field protected static final _25_frameRate_:J = 0x339L

.field protected static final _30_frameRate_:J = 0x3deL

.field protected static final _40_frameRate_:J = 0x528L

.field protected static final _5_frameRate_:J = 0xa5L

.field protected static final _60_frameRate_:J = 0x7bcL

.field protected static final frameRate_:J = 0x21L


# instance fields
.field protected alpha_:F

.field protected delay_:J

.field protected mContext:Landroid/content/Context;

.field protected mEnv:Lcom/htc/weather/EnvSetting$Env;

.field protected scale_x_:F

.field protected scale_y_:F

.field protected shift_x_:I

.field protected shift_y_:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 2
    .parameter "context"
    .parameter "env"

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f80

    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v1, p0, Lcom/htc/weather/animations/WeatherAnimationData;->shift_x_:I

    .line 23
    iput v1, p0, Lcom/htc/weather/animations/WeatherAnimationData;->shift_y_:I

    .line 28
    iput v0, p0, Lcom/htc/weather/animations/WeatherAnimationData;->scale_x_:F

    .line 33
    iput v0, p0, Lcom/htc/weather/animations/WeatherAnimationData;->scale_y_:F

    .line 38
    iput v0, p0, Lcom/htc/weather/animations/WeatherAnimationData;->alpha_:F

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/weather/animations/WeatherAnimationData;->delay_:J

    .line 103
    iput-object p1, p0, Lcom/htc/weather/animations/WeatherAnimationData;->mContext:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    .line 105
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V
    .locals 2
    .parameter "context"
    .parameter "env"
    .parameter "shift_x"
    .parameter "shift_y"
    .parameter "scale_x"
    .parameter "scale_y"
    .parameter "alpha"
    .parameter "delay"

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f80

    .line 107
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v1, p0, Lcom/htc/weather/animations/WeatherAnimationData;->shift_x_:I

    .line 23
    iput v1, p0, Lcom/htc/weather/animations/WeatherAnimationData;->shift_y_:I

    .line 28
    iput v0, p0, Lcom/htc/weather/animations/WeatherAnimationData;->scale_x_:F

    .line 33
    iput v0, p0, Lcom/htc/weather/animations/WeatherAnimationData;->scale_y_:F

    .line 38
    iput v0, p0, Lcom/htc/weather/animations/WeatherAnimationData;->alpha_:F

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/weather/animations/WeatherAnimationData;->delay_:J

    .line 108
    iput p3, p0, Lcom/htc/weather/animations/WeatherAnimationData;->shift_x_:I

    .line 109
    iput p4, p0, Lcom/htc/weather/animations/WeatherAnimationData;->shift_y_:I

    .line 110
    iput p5, p0, Lcom/htc/weather/animations/WeatherAnimationData;->scale_x_:F

    .line 111
    iput p6, p0, Lcom/htc/weather/animations/WeatherAnimationData;->scale_y_:F

    .line 112
    iput p7, p0, Lcom/htc/weather/animations/WeatherAnimationData;->alpha_:F

    .line 113
    iput-wide p8, p0, Lcom/htc/weather/animations/WeatherAnimationData;->delay_:J

    .line 114
    iput-object p1, p0, Lcom/htc/weather/animations/WeatherAnimationData;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    .line 116
    return-void
.end method


# virtual methods
.method public abstract getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
.end method
