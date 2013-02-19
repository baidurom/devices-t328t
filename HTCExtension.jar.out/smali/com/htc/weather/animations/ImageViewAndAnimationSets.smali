.class public abstract Lcom/htc/weather/animations/ImageViewAndAnimationSets;
.super Ljava/lang/Object;
.source "ImageViewAndAnimationSets.java"


# static fields
.field public static mDither:Z


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mInAnimationSet:Landroid/view/animation/AnimationSet;

.field private mOutAnimationSet:Landroid/view/animation/AnimationSet;

.field private mRestAnimationSet:Landroid/view/animation/AnimationSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mDither:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageView()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->initialImageView()Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mImageView:Landroid/widget/ImageView;

    .line 82
    iget-object v1, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 87
    :goto_0
    return-object v1

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 84
    .local v0, dw:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_1

    .line 85
    sget-boolean v1, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mDither:Z

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mImageView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public getInAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mInAnimationSet:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->initialInAnimationSet()Landroid/view/animation/AnimationSet;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mInAnimationSet:Landroid/view/animation/AnimationSet;

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mInAnimationSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method public getInAnimationSet(Z)Landroid/view/animation/AnimationSet;
    .locals 1
    .parameter "reset"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mInAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->initialInAnimationSet()Landroid/view/animation/AnimationSet;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mInAnimationSet:Landroid/view/animation/AnimationSet;

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mInAnimationSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method public getOutAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mOutAnimationSet:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->initialOutAnimationSet()Landroid/view/animation/AnimationSet;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mOutAnimationSet:Landroid/view/animation/AnimationSet;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mOutAnimationSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method public getOutAnimationSet(Z)Landroid/view/animation/AnimationSet;
    .locals 1
    .parameter "reset"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mOutAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->initialOutAnimationSet()Landroid/view/animation/AnimationSet;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mOutAnimationSet:Landroid/view/animation/AnimationSet;

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mOutAnimationSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method public getRestAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mRestAnimationSet:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->initialRestAnimationSet()Landroid/view/animation/AnimationSet;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mRestAnimationSet:Landroid/view/animation/AnimationSet;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mRestAnimationSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method public getRestAnimationSet(Z)Landroid/view/animation/AnimationSet;
    .locals 1
    .parameter "reset"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mRestAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->initialRestAnimationSet()Landroid/view/animation/AnimationSet;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mRestAnimationSet:Landroid/view/animation/AnimationSet;

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mRestAnimationSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method protected abstract initialImageView()Landroid/widget/ImageView;
.end method

.method protected abstract initialInAnimationSet()Landroid/view/animation/AnimationSet;
.end method

.method protected abstract initialOutAnimationSet()Landroid/view/animation/AnimationSet;
.end method

.method protected abstract initialRestAnimationSet()Landroid/view/animation/AnimationSet;
.end method
