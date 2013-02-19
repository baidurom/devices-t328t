.class public abstract Lcom/htc/painting/penmenu15/drawable/CircularDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularDrawable.java"


# static fields
.field protected static final STATE_DISABLED:I = 0x34

.field protected static final STATE_PRESSED:I = 0x33

.field protected static final STATE_REST:I = 0x32

.field protected static final TAG:Ljava/lang/String; = "PenMenuNew"


# instance fields
.field protected mAnimation:Landroid/view/animation/Animation;

.field protected mDegree:I

.field protected mDrawingRect:Landroid/graphics/RectF;

.field protected mDrawingState:I

.field protected mIconOutRect:Landroid/graphics/RectF;

.field protected mTransformation:Landroid/view/animation/Transformation;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "deg"

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 53
    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mDrawingState:I

    .line 67
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mIconOutRect:Landroid/graphics/RectF;

    .line 73
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mDrawingRect:Landroid/graphics/RectF;

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mAnimation:Landroid/view/animation/Animation;

    .line 232
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mTransformation:Landroid/view/animation/Transformation;

    .line 77
    iput p1, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mDegree:I

    .line 78
    return-void
.end method

.method private static getEffectiveState([I)I
    .locals 1
    .parameter "state"

    .prologue
    .line 208
    const v0, 0x10100a7

    invoke-static {p0, v0}, Lcom/htc/painting/penmenu15/util/Utilities;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const/16 v0, 0x33

    .line 212
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x32

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    .line 109
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 112
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 113
    .local v4, m:Landroid/graphics/Matrix;
    iget-object v7, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    iget-object v8, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 114
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 115
    iget v7, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mDegree:I

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {p1, v7, v9, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 120
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 121
    .local v1, animT:Landroid/graphics/Matrix;
    iget-object v0, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mAnimation:Landroid/view/animation/Animation;

    .line 122
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    .line 125
    .local v5, time:J
    iget-object v7, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, v5, v6, v7}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 127
    iget-object v7, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v7}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 129
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->hasNotEnded()Z

    move-result v2

    .line 130
    .local v2, animationRunning:Z
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v3

    .line 131
    .local v3, cb:Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 132
    invoke-interface {v3, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    .end local v2           #animationRunning:Z
    .end local v3           #cb:Landroid/graphics/drawable/Drawable$Callback;
    .end local v5           #time:J
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mIconOutRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v1, v7}, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->drawContent(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    .line 146
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 148
    return-void

    .line 133
    .restart local v2       #animationRunning:Z
    .restart local v3       #cb:Landroid/graphics/drawable/Drawable$Callback;
    .restart local v5       #time:J
    :cond_1
    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    .line 134
    const-string v7, "PenMenuNew"

    const-string v8, "still running but CB is null"

    invoke-static {v7, v8}, Lcom/htc/painting/penmenu15/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected abstract drawContent(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;)V
.end method

.method public getDegree()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mDegree:I

    return v0
.end method

.method protected abstract getIconCenter()[F
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x0

    return v0
.end method

.method public hasNotEnded()Z
    .locals 6

    .prologue
    .line 266
    iget-object v5, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v3

    .line 267
    .local v3, startTime:J
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 268
    .local v0, now:J
    cmp-long v5, v0, v3

    if-ltz v5, :cond_0

    iget-object v5, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x1

    .line 269
    .local v2, result:Z
    :goto_0
    return v2

    .line 268
    .end local v2           #result:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 244
    iget-object v5, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_0

    .line 245
    iget-object v5, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v5

    iget-object v7, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v7}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v7

    add-long v3, v5, v7

    .line 246
    .local v3, startRunningTime:J
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 247
    .local v0, now:J
    cmp-long v5, v0, v3

    if-ltz v5, :cond_0

    iget-object v5, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x1

    .line 252
    .end local v0           #now:J
    .end local v3           #startRunningTime:J
    :cond_0
    return v2
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5
    .parameter "bounds"

    .prologue
    .line 161
    iget-object v1, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 164
    iget-object v1, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mIconOutRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v1}, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->setIconOutRect(Landroid/graphics/RectF;)V

    .line 167
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->getIconCenter()[F

    move-result-object v0

    .line 168
    .local v0, iconCenter:[F
    iget-object v1, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mIconOutRect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    aget v2, v0, v2

    iget-object v3, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mIconOutRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sub-float/2addr v2, v3

    const/4 v3, 0x1

    aget v3, v0, v3

    iget-object v4, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mIconOutRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 169
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2
    .parameter "state"

    .prologue
    .line 199
    iget v0, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mDrawingState:I

    .line 200
    .local v0, oldState:I
    invoke-static {p1}, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->getEffectiveState([I)I

    move-result v1

    iput v1, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mDrawingState:I

    .line 202
    iget v1, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mDrawingState:I

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract rangeContains(FF)Z
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 349
    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->stop()V

    .line 326
    :cond_0
    iput-object p1, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mAnimation:Landroid/view/animation/Animation;

    .line 327
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 359
    return-void
.end method

.method public setDegree(I)V
    .locals 0
    .parameter "deg"

    .prologue
    .line 86
    iput p1, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mDegree:I

    .line 87
    return-void
.end method

.method protected abstract setIconOutRect(Landroid/graphics/RectF;)V
.end method

.method public start()V
    .locals 2

    .prologue
    .line 285
    iget-object v1, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    .line 287
    iget-object v1, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->start()V

    .line 288
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 289
    .local v0, cb:Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 290
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 293
    .end local v0           #cb:Landroid/graphics/drawable/Drawable$Callback;
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 307
    iget-object v1, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    .line 309
    iget-object v1, p0, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    .line 310
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/drawable/CircularDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 311
    .local v0, cb:Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 312
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 315
    .end local v0           #cb:Landroid/graphics/drawable/Drawable$Callback;
    :cond_0
    return-void
.end method
