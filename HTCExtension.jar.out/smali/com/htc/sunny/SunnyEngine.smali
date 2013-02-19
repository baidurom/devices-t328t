.class public Lcom/htc/sunny/SunnyEngine;
.super Ljava/lang/Object;
.source "SunnyEngine.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "3DGlideMode"

.field public static final POWEROF2:Z

.field private static mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSpriteDefaultPos:Lcom/htc/sunny/Vector3F;

.field private static mSunnyReferenceCount:I

.field private static mSunnyReferenceLock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private mBackgroundBitmapId:I

.field private mBackgroundBmp:Lcom/htc/sunny/SBitmap;

.field private mBackgroundNodeId:I

.field private mBackgroundSpriteId:I

.field private mBackgroundTextureId:I

.field private mBind:Z

.field private mCameraId:I

.field private mContext:Landroid/content/Context;

.field private mEnabledTranslucent:Z

.field private mEnvironmentId:I

.field private mGlobalRootNode:I

.field private mInit:Z

.field private mLocker:Ljava/lang/Object;

.field private mMaskNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRootNodeId:I

.field private mSceneId:I

.field private mSpriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTextureQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPortId:I

.field private mWindowH:I

.field private mWindowId:I

.field private mWindowW:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 66
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 67
    const/4 v0, 0x0

    sput v0, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceCount:I

    .line 69
    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    sput-object v0, Lcom/htc/sunny/SunnyEngine;->mSpriteDefaultPos:Lcom/htc/sunny/Vector3F;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "bTranslucent"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mContext:Landroid/content/Context;

    .line 43
    iput-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    .line 44
    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    .line 45
    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    .line 46
    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mViewPortId:I

    .line 47
    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mSceneId:I

    .line 48
    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundNodeId:I

    .line 49
    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    .line 50
    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundTextureId:I

    .line 51
    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundBitmapId:I

    .line 52
    iput-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    .line 54
    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mGlobalRootNode:I

    .line 55
    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mRootNodeId:I

    .line 56
    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mCameraId:I

    .line 57
    iput-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mBind:Z

    .line 58
    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mWindowW:I

    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mWindowH:I

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mMaskNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mSpriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mTextureQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mLocker:Ljava/lang/Object;

    .line 71
    iput-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mEnabledTranslucent:Z

    .line 74
    iput-object p1, p0, Lcom/htc/sunny/SunnyEngine;->mContext:Landroid/content/Context;

    .line 75
    iput-boolean p2, p0, Lcom/htc/sunny/SunnyEngine;->mEnabledTranslucent:Z

    .line 76
    return-void
.end method

.method public static createAlphaBitmap(Landroid/graphics/Bitmap;III)I
    .locals 8
    .parameter "bitmap"
    .parameter "nMaxWidth"
    .parameter "nMaxHeight"
    .parameter "transparentBorders"

    .prologue
    const/4 v2, 0x0

    .line 496
    if-nez p0, :cond_1

    .line 531
    :cond_0
    :goto_0
    return v2

    .line 498
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 499
    .local v7, nWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 501
    .local v6, nHeight:I
    if-lez v7, :cond_0

    if-lez v6, :cond_0

    .line 503
    invoke-static {v2}, Lcom/htc/sunny/Sunny;->CreateBitmap(I)I

    move-result v0

    .line 504
    .local v0, nBitmapId:I
    if-eqz v0, :cond_0

    .line 506
    const/4 v3, 0x0

    .line 513
    .local v3, nNewWidth:I
    move v3, v7

    .line 516
    const/4 v4, 0x0

    .line 523
    .local v4, nNewHeight:I
    move v4, v6

    move-object v1, p0

    move v5, p3

    .line 526
    invoke-static/range {v0 .. v5}, Lcom/htc/sunny/Sunny;->Bitmap_SetAndConvert(ILandroid/graphics/Bitmap;IIII)Z

    .line 528
    sget-object v1, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v1, :cond_2

    .line 529
    sget-object v1, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_2
    move v2, v0

    .line 531
    goto :goto_0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;III)I
    .locals 8
    .parameter "bitmap"
    .parameter "nMaxWidth"
    .parameter "nMaxHeight"
    .parameter "transparentBorders"

    .prologue
    const/4 v1, 0x0

    .line 444
    if-nez p0, :cond_1

    move v0, v1

    .line 482
    :cond_0
    :goto_0
    return v0

    .line 446
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 447
    .local v7, nWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 449
    .local v6, nHeight:I
    if-lez v7, :cond_2

    if-gtz v6, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 451
    :cond_3
    invoke-static {v1}, Lcom/htc/sunny/Sunny;->CreateBitmap(I)I

    move-result v0

    .line 452
    .local v0, nBitmapId:I
    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    .line 454
    :cond_4
    const/4 v3, 0x0

    .line 461
    .local v3, nNewWidth:I
    move v3, v7

    .line 464
    const/4 v4, 0x0

    .line 473
    .local v4, nNewHeight:I
    if-nez p3, :cond_5

    .line 474
    invoke-static {v0, p0}, Lcom/htc/sunny/Sunny;->Bitmap_Set(ILandroid/graphics/Bitmap;)Z

    .line 479
    :goto_1
    sget-object v1, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v1, :cond_0

    .line 480
    sget-object v1, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 476
    :cond_5
    const v2, 0x25551

    move-object v1, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/htc/sunny/Sunny;->Bitmap_SetAndConvert(ILandroid/graphics/Bitmap;IIII)Z

    goto :goto_1
.end method

.method public static destroyBitmap(I)V
    .locals 3
    .parameter "nBitmapId"

    .prologue
    .line 550
    if-nez p0, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    const/4 v0, 0x1

    sget-object v1, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 553
    invoke-static {p0}, Lcom/htc/sunny/Sunny;->DestroyBitmap(I)V

    .line 555
    sget-object v0, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static isBitmapDestroyed(I)Z
    .locals 3
    .parameter "nBitmapId"

    .prologue
    const/4 v0, 0x1

    .line 539
    sget-object v1, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 540
    const/4 v0, 0x0

    .line 542
    :cond_0
    return v0
.end method

.method public static nextPowerOf2(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 770
    add-int/lit8 p0, p0, -0x1

    .line 771
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 772
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 773
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 774
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 775
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 776
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method private setBackgroundSize(II)V
    .locals 7
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v4, 0x0

    .line 835
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    if-eqz v0, :cond_0

    .line 836
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    const/4 v1, 0x0

    int-to-float v2, p1

    int-to-float v3, p2

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/htc/sunny/Sunny;->Sprite_SetupGeometry(IIFFFFF)V

    .line 839
    :cond_0
    return-void
.end method


# virtual methods
.method public bindWindows(Landroid/view/Surface;II)Z
    .locals 3
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x1

    .line 819
    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 820
    :cond_0
    const/4 v0, 0x0

    .line 831
    :goto_0
    return v0

    .line 823
    :cond_1
    iget v1, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    invoke-static {v1, p1, p2, p3}, Lcom/htc/sunny/Sunny;->Window_BindSurface(ILandroid/view/Surface;II)Z

    .line 826
    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mWindowW:I

    .line 827
    add-int/lit8 v1, p3, 0x1

    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mWindowH:I

    .line 828
    iget v1, p0, Lcom/htc/sunny/SunnyEngine;->mWindowW:I

    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mWindowH:I

    invoke-direct {p0, v1, v2}, Lcom/htc/sunny/SunnyEngine;->setBackgroundSize(II)V

    .line 830
    iput-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mBind:Z

    goto :goto_0
.end method

.method public createMaskNode(IZ)I
    .locals 5
    .parameter "nParent"
    .parameter "bRenderOrder"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 315
    iget-boolean v2, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v1

    .line 329
    :goto_0
    return v0

    .line 318
    :cond_1
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->CreateScissor(I)I

    move-result v0

    .line 319
    .local v0, nChildId:I
    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 321
    :cond_2
    invoke-static {v0, v3, v3, v3}, Lcom/htc/sunny/Sunny;->SceneNode_SetPosition(IFFF)V

    .line 322
    invoke-static {p1, v0}, Lcom/htc/sunny/Sunny;->SceneNode_AddChild(II)Z

    .line 323
    if-ne v4, p2, :cond_3

    .line 324
    invoke-static {v0, v4}, Lcom/htc/sunny/Sunny;->SceneNode_SetChildrenRenderOrderMode(II)V

    .line 327
    :cond_3
    iget-object v1, p0, Lcom/htc/sunny/SunnyEngine;->mMaskNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public createNode(IZ)I
    .locals 5
    .parameter "nParent"
    .parameter "bRenderOrder"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 282
    iget-boolean v2, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v1

    .line 296
    :goto_0
    return v0

    .line 285
    :cond_1
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->CreateSceneNode(I)I

    move-result v0

    .line 286
    .local v0, nChildId:I
    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 288
    :cond_2
    invoke-static {v0, v3, v3, v3}, Lcom/htc/sunny/Sunny;->SceneNode_SetPosition(IFFF)V

    .line 289
    invoke-static {p1, v0}, Lcom/htc/sunny/Sunny;->SceneNode_AddChild(II)Z

    .line 290
    if-ne v4, p2, :cond_3

    .line 291
    invoke-static {v0, v4}, Lcom/htc/sunny/Sunny;->SceneNode_SetChildrenRenderOrderMode(II)V

    .line 294
    :cond_3
    iget-object v1, p0, Lcom/htc/sunny/SunnyEngine;->mNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public createSprite(II)I
    .locals 3
    .parameter "nParentNode"
    .parameter "nLayerCount"

    .prologue
    const/4 v1, 0x0

    .line 355
    iget-boolean v2, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v1

    .line 370
    :goto_0
    return v0

    .line 358
    :cond_1
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v2, p2}, Lcom/htc/sunny/Sunny;->CreateSprite(II)I

    move-result v0

    .line 359
    .local v0, nChildId:I
    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 364
    :cond_2
    invoke-static {p1, v0}, Lcom/htc/sunny/Sunny;->SceneNode_AddChild(II)Z

    .line 366
    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny/SunnyEngine;->setSpriteTouchable(IZ)V

    .line 368
    iget-object v1, p0, Lcom/htc/sunny/SunnyEngine;->mSpriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public createTexture()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 413
    iget-boolean v2, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-nez v2, :cond_0

    move v0, v1

    .line 420
    :goto_0
    return v0

    .line 416
    :cond_0
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->CreateTexture(I)I

    move-result v0

    .line 417
    .local v0, nTextureId:I
    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 419
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny/SunnyEngine;->mTextureQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public deInit()V
    .locals 6

    .prologue
    .line 912
    const-string v2, "3DGlideMode"

    const-string v3, "[SunnyEngine] Sunny deInit() +"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object v3, p0, Lcom/htc/sunny/SunnyEngine;->mLocker:Ljava/lang/Object;

    monitor-enter v3

    .line 915
    :try_start_0
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    if-eqz v2, :cond_7

    .line 917
    sget-object v2, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 918
    sget v2, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceCount:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceCount:I

    .line 919
    const-string v2, "3DGlideMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SunnyEngine] deInit() ref count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    sget v2, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceCount:I

    if-nez v2, :cond_2

    .line 921
    sget-object v2, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v2, :cond_2

    .line 922
    const-string v2, "3DGlideMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SunnyEngine] deInit() bmp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    sget-object v2, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 924
    .local v1, id:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    .line 925
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->DestroyBitmap(I)V

    goto :goto_0

    .line 962
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #id:Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 927
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    sget-object v2, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 930
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    sget-object v2, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 932
    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->destroyAllResource()V

    .line 934
    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->destroyBackgroundResource()V

    .line 936
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mRootNodeId:I

    if-eqz v2, :cond_3

    .line 937
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mRootNodeId:I

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->DestroySceneNode(I)V

    .line 938
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/sunny/SunnyEngine;->mRootNodeId:I

    .line 941
    :cond_3
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    if-eqz v2, :cond_5

    .line 942
    const/4 v2, 0x1

    iget-boolean v4, p0, Lcom/htc/sunny/SunnyEngine;->mBind:Z

    if-ne v2, v4, :cond_4

    .line 943
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->Window_UnbindSurface(I)V

    .line 946
    :cond_4
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->DestroyWindow(I)V

    .line 947
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    .line 950
    :cond_5
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mSceneId:I

    if-eqz v2, :cond_6

    .line 951
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mSceneId:I

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->DestroyScene(I)V

    .line 952
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/sunny/SunnyEngine;->mSceneId:I

    .line 955
    :cond_6
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    if-eqz v2, :cond_7

    .line 956
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->DeinitEnvironment(I)V

    .line 957
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    .line 961
    :cond_7
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    .line 962
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 963
    const-string v2, "3DGlideMode"

    const-string v3, "[SunnyEngine] Sunny deInit() -"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    return-void
.end method

.method public destroyAllResource()V
    .locals 5

    .prologue
    .line 847
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mTextureQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v2, :cond_1

    .line 848
    const-string v2, "3DGlideMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SunnyEngine] destroy texture "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny/SunnyEngine;->mTextureQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mTextureQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 850
    .local v1, id:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->DestroyTexture(I)V

    goto :goto_0

    .line 852
    .end local v1           #id:Ljava/lang/Integer;
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mTextureQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 855
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mSpriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v2, :cond_3

    .line 856
    const-string v2, "3DGlideMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SunnyEngine] destroy sprite "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny/SunnyEngine;->mSpriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mSpriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 858
    .restart local v1       #id:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->DestroySprite(I)V

    goto :goto_1

    .line 860
    .end local v1           #id:Ljava/lang/Integer;
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mSpriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 863
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v2, :cond_5

    .line 864
    const-string v2, "3DGlideMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SunnyEngine] destroy node "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny/SunnyEngine;->mNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 866
    .restart local v1       #id:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->DestroySceneNode(I)V

    goto :goto_2

    .line 868
    .end local v1           #id:Ljava/lang/Integer;
    :cond_4
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 871
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_5
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mMaskNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v2, :cond_7

    .line 872
    const-string v2, "3DGlideMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SunnyEngine] destroy scissor node "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny/SunnyEngine;->mMaskNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mMaskNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 874
    .restart local v1       #id:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->DestroyScissor(I)V

    goto :goto_3

    .line 876
    .end local v1           #id:Ljava/lang/Integer;
    :cond_6
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mMaskNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 878
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_7
    return-void
.end method

.method public destroyBackgroundResource()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 885
    const-string v0, "3DGlideMode"

    const-string v1, "[SunnyEngine] destroy background"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundBitmapId:I

    if-eqz v0, :cond_0

    .line 887
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundBitmapId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->DestroyBitmap(I)V

    .line 888
    iput v2, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundBitmapId:I

    .line 891
    :cond_0
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundTextureId:I

    if-eqz v0, :cond_1

    .line 892
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundTextureId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->DestroyTexture(I)V

    .line 893
    iput v2, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundTextureId:I

    .line 896
    :cond_1
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    if-eqz v0, :cond_2

    .line 897
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->DestroySprite(I)V

    .line 898
    iput v2, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    .line 901
    :cond_2
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundNodeId:I

    if-eqz v0, :cond_3

    .line 902
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundNodeId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->DestroySceneNode(I)V

    .line 903
    iput v2, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundNodeId:I

    .line 905
    :cond_3
    return-void
.end method

.method public destroyMaskNode(I)V
    .locals 2
    .parameter "nNodeId"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mMaskNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    invoke-static {p1}, Lcom/htc/sunny/Sunny;->DestroyScissor(I)V

    .line 339
    iget-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mMaskNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 341
    :cond_0
    return-void
.end method

.method public destroyNode(I)V
    .locals 2
    .parameter "nNodeId"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-static {p1}, Lcom/htc/sunny/Sunny;->DestroySceneNode(I)V

    .line 306
    iget-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 308
    :cond_0
    return-void
.end method

.method public destroySprite(I)V
    .locals 2
    .parameter "nSpriteId"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mSpriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    invoke-static {p1}, Lcom/htc/sunny/Sunny;->DestroySprite(I)V

    .line 404
    iget-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mSpriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 406
    :cond_0
    return-void
.end method

.method public destroyTexture(I)V
    .locals 2
    .parameter "nTextureId"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mTextureQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    invoke-static {p1}, Lcom/htc/sunny/Sunny;->DestroyTexture(I)V

    .line 430
    iget-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mTextureQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 432
    :cond_0
    return-void
.end method

.method public getGlobalRootNode()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mGlobalRootNode:I

    return v0
.end method

.method public getHitSprite(II)I
    .locals 1
    .parameter "nX"
    .parameter "nY"

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-nez v0, :cond_0

    .line 224
    const/4 v0, -0x1

    .line 227
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    invoke-static {v0, p1, p2}, Lcom/htc/sunny/Sunny;->Window_HitTest(III)I

    move-result v0

    goto :goto_0
.end method

.method public getNodeOrder(I)I
    .locals 1
    .parameter "nNodeId"

    .prologue
    .line 658
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 659
    :cond_0
    const/4 v0, 0x0

    .line 662
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/htc/sunny/Sunny;->SceneNode_GetRenderOrder(I)I

    move-result v0

    goto :goto_0
.end method

.method public getRootNode()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mRootNodeId:I

    return v0
.end method

.method public final getSpritePosition(I)Lcom/htc/sunny/Vector3F;
    .locals 4
    .parameter "nSpriteId"

    .prologue
    .line 235
    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_2

    .line 236
    :cond_0
    sget-object v0, Lcom/htc/sunny/SunnyEngine;->mSpriteDefaultPos:Lcom/htc/sunny/Vector3F;

    .line 246
    :cond_1
    :goto_0
    return-object v0

    .line 239
    :cond_2
    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    .line 240
    .local v0, pos:Lcom/htc/sunny/Vector3F;
    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    iget v3, p0, Lcom/htc/sunny/SunnyEngine;->mViewPortId:I

    invoke-static {v2, v3, p1}, Lcom/htc/sunny/Sunny;->Window_QuerySceneNodeOriginPositionOnViewport(III)Z

    move-result v2

    if-ne v1, v2, :cond_1

    .line 241
    invoke-static {}, Lcom/htc/sunny/Sunny;->getOutputVectorX()F

    move-result v1

    iput v1, v0, Lcom/htc/sunny/Vector3F;->mX:F

    .line 242
    invoke-static {}, Lcom/htc/sunny/Sunny;->getOutputVectorY()F

    move-result v1

    iput v1, v0, Lcom/htc/sunny/Vector3F;->mY:F

    .line 243
    invoke-static {}, Lcom/htc/sunny/Sunny;->getOutputVectorZ()F

    move-result v1

    iput v1, v0, Lcom/htc/sunny/Vector3F;->mZ:F

    goto :goto_0
.end method

.method public getTag(II)I
    .locals 2
    .parameter "nNodeId"
    .parameter "nDefault"

    .prologue
    .line 266
    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 274
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 270
    .restart local p2
    :cond_1
    invoke-static {p1}, Lcom/htc/sunny/Sunny;->SceneNode_GetUserFlag(I)I

    move-result v0

    .line 271
    .local v0, nFlag:I
    if-eqz v0, :cond_0

    .line 273
    add-int/lit8 v0, v0, -0x1

    move p2, v0

    .line 274
    goto :goto_0
.end method

.method public init()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/16 v0, 0x8

    const/4 v7, 0x1

    .line 83
    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-ne v7, v1, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    .line 164
    :goto_0
    return v0

    .line 85
    :cond_0
    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mEnabledTranslucent:Z

    if-nez v1, :cond_1

    .line 86
    invoke-static {}, Lcom/htc/sunny/Sunny;->InitEnvironment()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    .line 90
    :goto_1
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    if-nez v0, :cond_2

    .line 92
    const-string v0, "3DGlideMode"

    const-string v1, "[SunnyEngine] Sunny.InitEnvironment() fail !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->deInit()V

    .line 94
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    goto :goto_0

    :cond_1
    move v1, v0

    move v2, v0

    move v3, v0

    move v5, v4

    move v6, v4

    .line 88
    invoke-static/range {v0 .. v6}, Lcom/htc/sunny/Sunny;->InitEnvironmentWithConfig(IIIIIII)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    goto :goto_1

    .line 97
    :cond_2
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->CreateWindow(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    .line 98
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    if-nez v0, :cond_3

    .line 99
    const-string v0, "3DGlideMode"

    const-string v1, "[SunnyEngine] Sunny.CreateWindow() fail !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->deInit()V

    .line 101
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    goto :goto_0

    .line 104
    :cond_3
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->Window_GetDefaultViewport(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mViewPortId:I

    .line 105
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mViewPortId:I

    if-nez v0, :cond_4

    .line 106
    const-string v0, "3DGlideMode"

    const-string v1, "[SunnyEngine] Sunny.Window_GetDefaultViewport() fail !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->deInit()V

    .line 108
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    goto :goto_0

    .line 114
    :cond_4
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->CreateScene(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mSceneId:I

    .line 115
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mSceneId:I

    if-nez v0, :cond_5

    .line 116
    const-string v0, "3DGlideMode"

    const-string v1, "[SunnyEngine] Sunny.CreateScene() fail !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->deInit()V

    .line 118
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    goto :goto_0

    .line 121
    :cond_5
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mSceneId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->Scene_GetRootNode(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mGlobalRootNode:I

    .line 122
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mGlobalRootNode:I

    if-nez v0, :cond_6

    .line 123
    const-string v0, "3DGlideMode"

    const-string v1, "[SunnyEngine] Sunny.Scene_GetRootNode() fail !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->deInit()V

    .line 125
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    goto/16 :goto_0

    .line 127
    :cond_6
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mGlobalRootNode:I

    invoke-static {v0, v7}, Lcom/htc/sunny/Sunny;->SceneNode_SetChildrenRenderOrderMode(II)V

    .line 129
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->CreateSceneNode(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundNodeId:I

    .line 130
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundNodeId:I

    if-nez v0, :cond_7

    .line 131
    const-string v0, "3DGlideMode"

    const-string v1, "[SunnyEngine] init() fail to creat background node!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->deInit()V

    .line 133
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    goto/16 :goto_0

    .line 135
    :cond_7
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mGlobalRootNode:I

    iget v1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundNodeId:I

    invoke-static {v0, v1}, Lcom/htc/sunny/Sunny;->SceneNode_AddChild(II)Z

    .line 138
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->CreateSceneNode(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mRootNodeId:I

    .line 139
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mRootNodeId:I

    if-nez v0, :cond_8

    .line 140
    const-string v0, "3DGlideMode"

    const-string v1, "[SunnyEngine] init() fail to creat root node!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->deInit()V

    .line 142
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    goto/16 :goto_0

    .line 144
    :cond_8
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundNodeId:I

    iget v1, p0, Lcom/htc/sunny/SunnyEngine;->mRootNodeId:I

    invoke-static {v0, v1}, Lcom/htc/sunny/Sunny;->SceneNode_AddChild(II)Z

    .line 145
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mRootNodeId:I

    invoke-static {v0, v7}, Lcom/htc/sunny/Sunny;->SceneNode_SetChildrenRenderOrderMode(II)V

    .line 148
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mSceneId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->Scene_GetDefaultCamera(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mCameraId:I

    .line 149
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mCameraId:I

    if-nez v0, :cond_9

    .line 150
    const-string v0, "3DGlideMode"

    const-string v1, "[SunnyEngine] Sunny.Scene_GetDefaultCamera() fail !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->deInit()V

    .line 152
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    goto/16 :goto_0

    .line 155
    :cond_9
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mCameraId:I

    const/high16 v1, 0x4270

    const/high16 v2, 0x4120

    const v3, 0x461c4000

    invoke-static {v0, v1, v2, v3}, Lcom/htc/sunny/Sunny;->Camera_2DIsometricSetup(IFFF)V

    .line 156
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mViewPortId:I

    iget v1, p0, Lcom/htc/sunny/SunnyEngine;->mCameraId:I

    invoke-static {v0, v1}, Lcom/htc/sunny/Sunny;->Viewport_LinkCamera(II)V

    .line 158
    iput-boolean v7, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    .line 160
    sget-object v0, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 161
    sget v0, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceCount:I

    .line 162
    const-string v0, "3DGlideMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SunnyEngine] init() ref count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    sget-object v0, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 164
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    goto/16 :goto_0
.end method

.method public logStatus()V
    .locals 1

    .prologue
    .line 784
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-nez v0, :cond_0

    .line 788
    :goto_0
    return-void

    .line 787
    :cond_0
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->Environment_LogStatus(I)V

    goto :goto_0
.end method

.method public renderWindow()V
    .locals 1

    .prologue
    .line 795
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mBind:Z

    if-nez v0, :cond_1

    .line 799
    :cond_0
    :goto_0
    return-void

    .line 798
    :cond_1
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->Window_Render(I)V

    goto :goto_0
.end method

.method public setBackgroundImage(Lcom/htc/sunny/SBitmap;)V
    .locals 4
    .parameter "backgroundBmp"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 172
    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/htc/sunny/SBitmap;->isRecycled()Z

    move-result v0

    if-ne v3, v0, :cond_1

    .line 173
    :cond_0
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    invoke-virtual {p0, v0, v2}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    .line 174
    iput-object p1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    .line 195
    :goto_0
    return-void

    .line 177
    :cond_1
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    if-nez v0, :cond_2

    .line 178
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v0, v3}, Lcom/htc/sunny/Sunny;->CreateSprite(II)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    .line 179
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    if-eqz v0, :cond_2

    .line 180
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundNodeId:I

    iget v1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    invoke-static {v0, v1}, Lcom/htc/sunny/Sunny;->SceneNode_AddChild(II)Z

    .line 181
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    invoke-virtual {p0, v0, v2}, Lcom/htc/sunny/SunnyEngine;->setSpriteTouchable(IZ)V

    .line 184
    :cond_2
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundTextureId:I

    if-nez v0, :cond_3

    .line 185
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->CreateTexture(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundTextureId:I

    .line 188
    :cond_3
    iput-object p1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    .line 189
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundTextureId:I

    iget-object v1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    .line 192
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    invoke-virtual {p0, v0, v3}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    .line 193
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    iget v1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundTextureId:I

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    .line 194
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mWindowW:I

    iget v1, p0, Lcom/htc/sunny/SunnyEngine;->mWindowH:I

    invoke-direct {p0, v0, v1}, Lcom/htc/sunny/SunnyEngine;->setBackgroundSize(II)V

    goto :goto_0
.end method

.method public setBitmaptoTexture(II)Z
    .locals 2
    .parameter "nTextureId"
    .parameter "inputBitmap"

    .prologue
    const/4 v0, 0x0

    .line 630
    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 634
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1, p2, v0}, Lcom/htc/sunny/Sunny;->Texture_SetupByBitmap_InRenderThread(IIZ)Z

    move-result v0

    goto :goto_0
.end method

.method public setClipArea(IIIII)V
    .locals 1
    .parameter "nNodeId"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/htc/sunny/Sunny;->Scissor_SetArea(IIIII)V

    goto :goto_0
.end method

.method public setNodeAlpha(II)V
    .locals 3
    .parameter "nNodeId"
    .parameter "alpha"

    .prologue
    .line 718
    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 727
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    int-to-float v1, p2

    const/high16 v2, 0x437f

    div-float v0, v1, v2

    .line 723
    .local v0, groupAlpha:F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    const/4 v0, 0x0

    .line 724
    :cond_2
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    const/high16 v0, 0x3f80

    .line 726
    :cond_3
    invoke-static {p1, v0}, Lcom/htc/sunny/Sunny;->SceneNode_SetGroupAlpha(IF)V

    goto :goto_0
.end method

.method public setNodeOrder(II)V
    .locals 1
    .parameter "nNodeId"
    .parameter "renderOrder"

    .prologue
    .line 645
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    invoke-static {p1, p2}, Lcom/htc/sunny/Sunny;->SceneNode_SetRenderOrder(II)V

    goto :goto_0
.end method

.method public setNodePosition(IFFF)V
    .locals 1
    .parameter "nNodeId"
    .parameter "nX"
    .parameter "nY"
    .parameter "nZ"

    .prologue
    .line 706
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 710
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/htc/sunny/Sunny;->SceneNode_SetPosition(IFFF)V

    goto :goto_0
.end method

.method public setNodeRotate(IFFF)V
    .locals 1
    .parameter "nNodeId"
    .parameter "nX"
    .parameter "nY"
    .parameter "nZ"

    .prologue
    .line 694
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/htc/sunny/Sunny;->SceneNode_SetRotate(IFFF)V

    goto :goto_0
.end method

.method public setNodeScale(IFFF)V
    .locals 1
    .parameter "nNodeId"
    .parameter "nX"
    .parameter "nY"
    .parameter "nZ"

    .prologue
    .line 670
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/htc/sunny/Sunny;->SceneNode_SetScale(IFFF)V

    goto :goto_0
.end method

.method public setNodeVisible(IZ)V
    .locals 1
    .parameter "nNodeId"
    .parameter "bVisible"

    .prologue
    .line 682
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    invoke-static {p1, p2}, Lcom/htc/sunny/Sunny;->SceneNode_SetVisible(IZ)V

    goto :goto_0
.end method

.method public setSpriteAlpha(III)V
    .locals 1
    .parameter "nSpriteId"
    .parameter "nLayerIndex"
    .parameter "alpha"

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/htc/sunny/Sunny;->Sprite_SetAlpha(III)V

    goto :goto_0
.end method

.method public setSpriteAsShadow(II)Z
    .locals 3
    .parameter "nSpriteId"
    .parameter "nLayer"

    .prologue
    const/4 v0, 0x1

    const/16 v2, 0x41

    .line 576
    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 577
    :cond_0
    const/4 v0, 0x0

    .line 583
    :goto_0
    return v0

    .line 580
    :cond_1
    invoke-static {p1, p2, v2, v2, v2}, Lcom/htc/sunny/Sunny;->Sprite_SetColor(IIIII)V

    .line 581
    invoke-static {p1, p2, v0}, Lcom/htc/sunny/Sunny;->Sprite_SetRGBOperation(III)V

    goto :goto_0
.end method

.method public setSpriteAsShadow(IIIII)Z
    .locals 2
    .parameter "nSpriteId"
    .parameter "nLayer"
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    const/4 v0, 0x1

    .line 591
    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 592
    :cond_0
    const/4 v0, 0x0

    .line 598
    :goto_0
    return v0

    .line 595
    :cond_1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/htc/sunny/Sunny;->Sprite_SetColor(IIIII)V

    .line 596
    invoke-static {p1, p2, v0}, Lcom/htc/sunny/Sunny;->Sprite_SetRGBOperation(III)V

    goto :goto_0
.end method

.method public setSpriteRenderable(IZ)V
    .locals 1
    .parameter "nSpriteId"
    .parameter "bRenderable"

    .prologue
    .line 746
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 751
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/htc/sunny/Sunny;->Sprite_SetLayerRenderable(IIZ)V

    goto :goto_0
.end method

.method public setSpriteTouchable(IZ)V
    .locals 1
    .parameter "nSpriteId"
    .parameter "bTouchable"

    .prologue
    .line 734
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 738
    :cond_1
    invoke-static {p1, p2}, Lcom/htc/sunny/Sunny;->Sprite_SetTouchable(IZ)V

    goto :goto_0
.end method

.method public setSpriteVisible(IZ)V
    .locals 1
    .parameter "nSpriteId"
    .parameter "bVisible"

    .prologue
    .line 758
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/htc/sunny/Sunny;->Sprite_SetLayerVisible(IIZ)V

    goto :goto_0
.end method

.method public setTag(II)V
    .locals 1
    .parameter "nNodeId"
    .parameter "nTag"

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-nez v0, :cond_0

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 258
    invoke-static {p1, p2}, Lcom/htc/sunny/Sunny;->SceneNode_SetUserFlag(II)V

    goto :goto_0
.end method

.method public setTextureCoordinates(IFFFF)V
    .locals 6
    .parameter "nSpriteId"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 606
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    const/4 v1, 0x0

    move v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/htc/sunny/Sunny;->Sprite_SetTextureCoordinatesBy2P(IIFFFF)V

    goto :goto_0
.end method

.method public setTextureCoordinates(IIFFFF)V
    .locals 1
    .parameter "nSpriteId"
    .parameter "nLayerIndex"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 618
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    invoke-static/range {p1 .. p6}, Lcom/htc/sunny/Sunny;->Sprite_SetTextureCoordinatesBy2P(IIFFFF)V

    goto :goto_0
.end method

.method public setTexturetoSprite(IIII)Z
    .locals 2
    .parameter "nSpriteId"
    .parameter "nLayerIndex"
    .parameter "nTextureIndex"
    .parameter "nTextureId"

    .prologue
    const/4 v0, 0x0

    .line 564
    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 568
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1, p2, v0, p4}, Lcom/htc/sunny/Sunny;->Sprite_SetTexture(IIII)Z

    move-result v0

    goto :goto_0
.end method

.method public setupSpriteGeometry(IIIIII)V
    .locals 7
    .parameter "nSpriteId"
    .parameter "nLayerIndex"
    .parameter "nWidth"
    .parameter "nHeight"
    .parameter "nCenterX"
    .parameter "nCenterY"

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    int-to-float v5, p6

    const/4 v6, 0x0

    move v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Lcom/htc/sunny/Sunny;->Sprite_SetupGeometry(IIFFFFF)V

    goto :goto_0
.end method

.method public unbindWindow()V
    .locals 1

    .prologue
    .line 806
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mBind:Z

    if-nez v0, :cond_1

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 809
    :cond_1
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->Window_UnbindSurface(I)V

    .line 810
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mBind:Z

    goto :goto_0
.end method
