.class public Lcom/htc/sunny/SImageView;
.super Lcom/htc/sunny/SView;
.source "SImageView.java"


# instance fields
.field private mIconHeight:I

.field private mIconPressTextureId:I

.field private mIconRestTextureId:I

.field private mIconSpriteId:I

.field private mIconWidth:I

.field protected mImagePressDrawable:Landroid/graphics/drawable/Drawable;

.field protected mImageRestDrawable:Landroid/graphics/drawable/Drawable;

.field protected mImageTranslation:Lcom/htc/sunny/Vector3F;

.field protected mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

.field protected mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V
    .locals 3
    .parameter "context"
    .parameter "surfaceView"

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny/SView;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    .line 33
    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    .line 34
    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconRestTextureId:I

    .line 35
    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconPressTextureId:I

    .line 41
    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SImageView;->mImageTranslation:Lcom/htc/sunny/Vector3F;

    .line 45
    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    .line 47
    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    .line 49
    iput v2, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    iput v2, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny/SImageView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/sunny/SImageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/sunny/SImageView;->freeImageDrawable()V

    return-void
.end method

.method private freeImageDrawable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 192
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 195
    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    .line 197
    :cond_0
    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 200
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 202
    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    .line 204
    :cond_2
    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    .line 206
    :cond_3
    return-void
.end method


# virtual methods
.method protected createResource()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 349
    invoke-super {p0}, Lcom/htc/sunny/SView;->createResource()V

    .line 350
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v1, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-boolean v1, p0, Lcom/htc/sunny/SView;->mIsSurfaceBinded:Z

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 355
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v1, :cond_2

    .line 356
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 357
    iput-object v8, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    .line 359
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    iget v3, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    invoke-static {v1, v2, v3}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny/SBitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    .line 362
    :cond_3
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 363
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v1, :cond_4

    .line 364
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 365
    iput-object v8, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    .line 367
    :cond_4
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    iget v3, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    invoke-static {v1, v2, v3}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny/SBitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    .line 370
    :cond_5
    const/4 v0, 0x0

    .line 371
    .local v0, bRenderable:Z
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v1, :cond_8

    .line 372
    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    if-nez v1, :cond_6

    .line 373
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    invoke-virtual {v1, v2, v7}, Lcom/htc/sunny/SunnyEngine;->createSprite(II)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    .line 374
    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny/SImageView;->setIconDisplaySize(II)V

    .line 375
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    iget-object v3, p0, Lcom/htc/sunny/SImageView;->mImageTranslation:Lcom/htc/sunny/Vector3F;

    iget v3, v3, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v4, p0, Lcom/htc/sunny/SImageView;->mImageTranslation:Lcom/htc/sunny/Vector3F;

    iget v4, v4, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v5, p0, Lcom/htc/sunny/SImageView;->mImageTranslation:Lcom/htc/sunny/Vector3F;

    iget v5, v5, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    .line 376
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    invoke-virtual {v1, v2, v7}, Lcom/htc/sunny/SunnyEngine;->setNodeOrder(II)V

    .line 379
    :cond_6
    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconRestTextureId:I

    if-nez v1, :cond_7

    .line 380
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v1}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny/SImageView;->mIconRestTextureId:I

    .line 382
    :cond_7
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    iget v3, p0, Lcom/htc/sunny/SImageView;->mIconRestTextureId:I

    invoke-virtual {v1, v2, v6, v6, v3}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    .line 384
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 385
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconRestTextureId:I

    iget-object v3, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v3}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    .line 386
    const/4 v0, 0x1

    .line 387
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_8

    .line 388
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 389
    iput-object v8, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    .line 394
    :cond_8
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v1, :cond_a

    .line 396
    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconPressTextureId:I

    if-nez v1, :cond_9

    .line 397
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v1}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny/SImageView;->mIconPressTextureId:I

    .line 400
    :cond_9
    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconPressTextureId:I

    if-eqz v1, :cond_a

    .line 401
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_a

    .line 402
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconPressTextureId:I

    iget-object v3, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v3}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    .line 403
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_a

    .line 404
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 405
    iput-object v8, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    .line 411
    :cond_a
    if-ne v7, v0, :cond_b

    .line 412
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    invoke-virtual {v1, v2, v7}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    .line 417
    :goto_1
    iget-boolean v1, p0, Lcom/htc/sunny/SView;->mTouchable:Z

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SImageView;->setTouchable(Z)V

    .line 418
    invoke-virtual {p0, v6}, Lcom/htc/sunny/SImageView;->onFocusChanged(Z)V

    goto/16 :goto_0

    .line 414
    :cond_b
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    invoke-virtual {v1, v2, v6}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 242
    invoke-super {p0, p1}, Lcom/htc/sunny/SView;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 243
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v1, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 246
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->getHitSprite(II)I

    move-result v0

    .line 247
    .local v0, nHitSpriteId:I
    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    if-ne v1, v0, :cond_2

    if-eqz v0, :cond_2

    .line 248
    iput-boolean v4, p0, Lcom/htc/sunny/SView;->mIsPressed:Z

    .line 249
    invoke-virtual {p0, v4}, Lcom/htc/sunny/SImageView;->onFocusChanged(Z)V

    .line 253
    .end local v0           #nHitSpriteId:I
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v4, v1, :cond_0

    .line 255
    iget-boolean v1, p0, Lcom/htc/sunny/SView;->mIsPressed:Z

    if-ne v4, v1, :cond_3

    .line 256
    iput-boolean v5, p0, Lcom/htc/sunny/SView;->mIsPressed:Z

    .line 257
    invoke-virtual {p0, v5}, Lcom/htc/sunny/SImageView;->onFocusChanged(Z)V

    .line 260
    :cond_3
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->getHitSprite(II)I

    move-result v0

    .line 261
    .restart local v0       #nHitSpriteId:I
    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    if-ne v1, v0, :cond_0

    if-eqz v0, :cond_0

    .line 262
    iget-object v1, p0, Lcom/htc/sunny/SView;->mClickListener:Lcom/htc/sunny/SView$OnClickListener;

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/htc/sunny/SView;->mClickListener:Lcom/htc/sunny/SView$OnClickListener;

    invoke-interface {v1}, Lcom/htc/sunny/SView$OnClickListener;->onClick()V

    goto :goto_0
.end method

.method protected freeResource()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 427
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    .line 450
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 432
    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_2

    .line 436
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 437
    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    .line 440
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconRestTextureId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    .line 441
    iput v2, p0, Lcom/htc/sunny/SImageView;->mIconRestTextureId:I

    .line 443
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroySprite(I)V

    .line 444
    iput v2, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    .line 446
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconPressTextureId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    .line 447
    iput v2, p0, Lcom/htc/sunny/SImageView;->mIconPressTextureId:I

    .line 449
    invoke-super {p0}, Lcom/htc/sunny/SView;->freeResource()V

    goto :goto_0
.end method

.method protected onFocusChanged(Z)V
    .locals 5
    .parameter "bFocus"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 214
    invoke-super {p0, p1}, Lcom/htc/sunny/SView;->onFocusChanged(Z)V

    .line 216
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny/SView;->mIsPressed:Z

    if-ne v4, v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconPressTextureId:I

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    .line 220
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconPressTextureId:I

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    invoke-virtual {v0, v1, v4}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    .line 233
    :goto_1
    invoke-virtual {p0}, Lcom/htc/sunny/SImageView;->invalidate3DView()V

    goto :goto_0

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    invoke-virtual {v0, v1, v3}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    goto :goto_1

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconRestTextureId:I

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    .line 227
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconRestTextureId:I

    if-eqz v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    invoke-virtual {v0, v1, v4}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    goto :goto_1

    .line 230
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    invoke-virtual {v0, v1, v3}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    goto :goto_1
.end method

.method protected setIconDisplaySize(II)V
    .locals 7
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 276
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 280
    iput p1, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    .line 281
    iput p2, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    .line 283
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 284
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    if-ne v1, v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    .line 287
    :cond_2
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    if-ne v1, v0, :cond_3

    .line 288
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    .line 313
    :cond_3
    :goto_1
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    iget v3, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    iget v4, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/sunny/SunnyEngine;->setupSpriteGeometry(IIIIII)V

    goto :goto_0

    .line 290
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 291
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    if-ne v1, v0, :cond_5

    .line 292
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    .line 294
    :cond_5
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    if-ne v1, v0, :cond_3

    .line 295
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    goto :goto_1

    .line 297
    :cond_6
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_8

    .line 298
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    if-ne v1, v0, :cond_7

    .line 299
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    .line 301
    :cond_7
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    if-ne v1, v0, :cond_3

    .line 302
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    goto :goto_1

    .line 304
    :cond_8
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_3

    .line 305
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    if-ne v1, v0, :cond_9

    .line 306
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    .line 308
    :cond_9
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    if-ne v1, v0, :cond_3

    .line 309
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    goto :goto_1
.end method

.method public setImage(II)V
    .locals 1
    .parameter "nPressResId"
    .parameter "nRestResId"

    .prologue
    .line 172
    new-instance v0, Lcom/htc/sunny/SImageView$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/SImageView$5;-><init>(Lcom/htc/sunny/SImageView;II)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SImageView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 177
    return-void
.end method

.method public setImage(IIII)V
    .locals 6
    .parameter "nPressResId"
    .parameter "nRestResId"
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    .line 139
    new-instance v0, Lcom/htc/sunny/SImageView$4;

    move-object v1, p0

    move v2, p2

    move v3, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny/SImageView$4;-><init>(Lcom/htc/sunny/SImageView;IIII)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SImageView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 157
    return-void
.end method

.method public setImage(Lcom/htc/sunny/SBitmap;Lcom/htc/sunny/SBitmap;)V
    .locals 1
    .parameter "sunnyPressBmp"
    .parameter "sunnyRestBmp"

    .prologue
    .line 118
    new-instance v0, Lcom/htc/sunny/SImageView$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/SImageView$3;-><init>(Lcom/htc/sunny/SImageView;Lcom/htc/sunny/SBitmap;Lcom/htc/sunny/SBitmap;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SImageView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method

.method public setImage(Lcom/htc/sunny/SBitmap;Lcom/htc/sunny/SBitmap;II)V
    .locals 6
    .parameter "sunnyPressBmp"
    .parameter "sunnyRestBmp"
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    .line 91
    new-instance v0, Lcom/htc/sunny/SImageView$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny/SImageView$2;-><init>(Lcom/htc/sunny/SImageView;Lcom/htc/sunny/SBitmap;Lcom/htc/sunny/SBitmap;II)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SImageView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method

.method public setImagePosition(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 67
    new-instance v0, Lcom/htc/sunny/SImageView$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/sunny/SImageView$1;-><init>(Lcom/htc/sunny/SImageView;FFF)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SImageView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method

.method public setTouchable(Z)V
    .locals 1
    .parameter "bTouchable"

    .prologue
    .line 328
    invoke-super {p0, p1}, Lcom/htc/sunny/SView;->setTouchable(Z)V

    .line 330
    new-instance v0, Lcom/htc/sunny/SImageView$6;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SImageView$6;-><init>(Lcom/htc/sunny/SImageView;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SImageView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 341
    return-void
.end method

.method protected updateViewLayout()V
    .locals 5

    .prologue
    .line 184
    invoke-super {p0}, Lcom/htc/sunny/SView;->updateViewLayout()V

    .line 186
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    iget-object v2, p0, Lcom/htc/sunny/SImageView;->mImageTranslation:Lcom/htc/sunny/Vector3F;

    iget v2, v2, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v3, p0, Lcom/htc/sunny/SImageView;->mImageTranslation:Lcom/htc/sunny/Vector3F;

    iget v3, v3, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v4, p0, Lcom/htc/sunny/SImageView;->mImageTranslation:Lcom/htc/sunny/Vector3F;

    iget v4, v4, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    goto :goto_0
.end method
