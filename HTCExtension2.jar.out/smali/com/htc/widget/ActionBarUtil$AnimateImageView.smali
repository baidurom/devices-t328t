.class public Lcom/htc/widget/ActionBarUtil$AnimateImageView;
.super Landroid/widget/ImageView;
.source "ActionBarUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/ActionBarUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimateImageView"
.end annotation


# instance fields
.field private final animDuration:I

.field private forceMultiply:Z

.field private internalForceMultiply:Z

.field private multiplyPaint:Landroid/graphics/Paint;

.field private scaleDownAnimator:Landroid/animation/ObjectAnimator;

.field private scaleUpAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 6
    .parameter "context"
    .parameter "leftPadding"
    .parameter "rightPadding"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 284
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 303
    iput-object v5, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->multiplyPaint:Landroid/graphics/Paint;

    .line 317
    const/16 v1, 0x3c

    iput v1, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->animDuration:I

    .line 319
    iput-object v5, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    .line 320
    iput-object v5, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    .line 429
    iput-boolean v4, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->internalForceMultiply:Z

    .line 441
    iput-boolean v4, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->forceMultiply:Z

    .line 286
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 289
    .local v0, resource:Landroid/content/res/Resources;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 290
    const v1, 0x2080439

    invoke-virtual {p0, v1}, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->setImageResource(I)V

    .line 291
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    invoke-virtual {p0, p2, v4, p3, v4}, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->setPadding(IIII)V

    .line 297
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v5}, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 298
    invoke-direct {p0}, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->setupAnimationEnv()V

    .line 299
    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget/ActionBarUtil$AnimateImageView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->setInternalMultiplyForceEnabled(Z)V

    return-void
.end method

.method private setInternalMultiplyForceEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->internalForceMultiply:Z

    if-eq v0, p1, :cond_0

    .line 436
    iput-boolean p1, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->internalForceMultiply:Z

    .line 437
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->invalidate()V

    .line 439
    :cond_0
    return-void
.end method

.method private setupAnimationEnv()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3c

    const/4 v3, 0x2

    .line 326
    iget-object v1, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    const-string v1, "viewScale"

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    .line 331
    iget-object v1, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 332
    iget-object v1, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 334
    iget-object v1, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/htc/widget/ActionBarUtil$AnimateImageView$1;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarUtil$AnimateImageView$1;-><init>(Lcom/htc/widget/ActionBarUtil$AnimateImageView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 351
    const-string v1, "viewScale"

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    .line 352
    iget-object v1, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 353
    iget-object v1, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 355
    iget-object v1, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/htc/widget/ActionBarUtil$AnimateImageView$2;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarUtil$AnimateImageView$2;-><init>(Lcom/htc/widget/ActionBarUtil$AnimateImageView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 368
    new-instance v1, Lcom/htc/widget/ActionBarUtil$AnimateImageView$3;

    invoke-direct {v1, p0}, Lcom/htc/widget/ActionBarUtil$AnimateImageView$3;-><init>(Lcom/htc/widget/ActionBarUtil$AnimateImageView;)V

    invoke-virtual {p0, v1}, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 378
    iget-object v1, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->multiplyPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->mContext:Landroid/content/Context;

    const-string v2, "multiply_color"

    const/high16 v3, 0x206

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 383
    .local v0, colorID:I
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->multiplyPaint:Landroid/graphics/Paint;

    .line 384
    iget-object v1, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 385
    iget-object v1, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->multiplyPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto/16 :goto_0

    .line 330
    :array_0
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 351
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->internalForceMultiply:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->forceMultiply:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->multiplyPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 467
    const/4 v7, 0x0

    .line 470
    .local v7, canvasCount:I
    iget v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->mScrollX:I

    int-to-float v1, v0

    iget v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->mScrollY:I

    int-to-float v2, v0

    iget v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->mScrollX:I

    invoke-virtual {p0}, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->mScrollY:I

    invoke-virtual {p0}, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v7

    .line 471
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 474
    iget-object v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 475
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 479
    .end local v7           #canvasCount:I
    :goto_0
    return-void

    .line 478
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 426
    :goto_0
    return v0

    .line 409
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 426
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 412
    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 413
    iget-object v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 417
    :pswitch_2
    iget-object v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 418
    iget-object v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 422
    :pswitch_3
    iget-object v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 423
    iget-object v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    goto :goto_1

    .line 409
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 2
    .parameter "layerType"
    .parameter "paint"

    .prologue
    .line 396
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 397
    return-void
.end method

.method public setMultiplyForceEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 450
    iget-boolean v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->forceMultiply:Z

    if-eq v0, p1, :cond_0

    .line 452
    iput-boolean p1, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->forceMultiply:Z

    .line 453
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->invalidate()V

    .line 455
    :cond_0
    return-void
.end method

.method protected setViewScale(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 312
    invoke-virtual {p0, p1}, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->setScaleX(F)V

    .line 313
    invoke-virtual {p0, p1}, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->setScaleY(F)V

    .line 314
    return-void
.end method
