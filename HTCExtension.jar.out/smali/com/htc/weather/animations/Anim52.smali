.class public Lcom/htc/weather/animations/Anim52;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "Anim52.java"


# instance fields
.field private cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private dustlow01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private dustlow05:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private dustlow06:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private dustup03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private sandair04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 1
    .parameter "context"
    .parameter "env"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    .line 34
    new-instance v0, Lcom/htc/weather/animations/Anim52$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim52$1;-><init>(Lcom/htc/weather/animations/Anim52;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim52;->dustlow01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 106
    new-instance v0, Lcom/htc/weather/animations/Anim52$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim52$2;-><init>(Lcom/htc/weather/animations/Anim52;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim52;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 201
    new-instance v0, Lcom/htc/weather/animations/Anim52$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim52$3;-><init>(Lcom/htc/weather/animations/Anim52;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim52;->dustup03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 296
    new-instance v0, Lcom/htc/weather/animations/Anim52$4;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim52$4;-><init>(Lcom/htc/weather/animations/Anim52;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim52;->sandair04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 359
    new-instance v0, Lcom/htc/weather/animations/Anim52$5;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim52$5;-><init>(Lcom/htc/weather/animations/Anim52;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim52;->dustlow05:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 463
    new-instance v0, Lcom/htc/weather/animations/Anim52$6;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim52$6;-><init>(Lcom/htc/weather/animations/Anim52;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim52;->dustlow06:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 21
    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/weather/animations/Anim52;->dustlow01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/weather/animations/Anim52;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/htc/weather/animations/Anim52;->dustup03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/htc/weather/animations/Anim52;->sandair04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/htc/weather/animations/Anim52;->dustlow05:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/htc/weather/animations/Anim52;->dustlow06:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    return-object v0
.end method
