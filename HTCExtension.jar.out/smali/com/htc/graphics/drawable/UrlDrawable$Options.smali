.class public Lcom/htc/graphics/drawable/UrlDrawable$Options;
.super Ljava/lang/Object;
.source "UrlDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/graphics/drawable/UrlDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# static fields
.field public static final OVERLAY_AT_BOTTOM_LEFT:I = 0x11

.field public static final OVERLAY_AT_BOTTOM_RIGHT:I = 0x12

.field public static final OVERLAY_AT_TOP_LEFT:I = 0x9

.field public static final OVERLAY_AT_TOP_RIGHT:I = 0xa

.field private static final OVERLAY_HORIZONTAL_CENTER:I = 0x4

.field private static final OVERLAY_HORIZONTAL_LEFT:I = 0x1

.field private static final OVERLAY_HORIZONTAL_RIGHT:I = 0x2

.field private static final OVERLAY_VERTICAL_BOTTOM:I = 0x10

.field private static final OVERLAY_VERTICAL_MIDDLE:I = 0x20

.field private static final OVERLAY_VERTICAL_TOP:I = 0x8


# instance fields
.field public applyMaskToDefault:Z

.field public checkDefaultProxy:Z

.field public defaultBitmap:Landroid/graphics/Bitmap;

.field public drawOnScroll:Z

.field public forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

.field public maskBitmap:Landroid/graphics/Bitmap;

.field public maxDim:I

.field public maxFetchedImageDim:I

.field public minDim:I

.field public needSendRedrawMsg:Z

.field public overlayBitmap:Landroid/graphics/Bitmap;

.field public overlayPos:I

.field public preferImageId:Ljava/lang/String;

.field public roundify:Z

.field public saveDefaultImageWhenDownloadFail:Z

.field public useApacheHttpClient:Z

.field public writeDisk:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 250
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->applyMaskToDefault:Z

    .line 251
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable$Options;->reset()V

    .line 252
    return-void
.end method


# virtual methods
.method public clone()Lcom/htc/graphics/drawable/UrlDrawable$Options;
    .locals 2

    .prologue
    .line 258
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Options;-><init>()V

    .line 259
    .local v0, cloned:Lcom/htc/graphics/drawable/UrlDrawable$Options;
    iget-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->writeDisk:Z

    iput-boolean v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->writeDisk:Z

    .line 260
    iget-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->roundify:Z

    iput-boolean v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->roundify:Z

    .line 261
    iget-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->drawOnScroll:Z

    iput-boolean v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->drawOnScroll:Z

    .line 262
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-virtual {v1}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->clone()Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    .line 263
    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    iput v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    .line 264
    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    iput v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    .line 265
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    .line 266
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    .line 267
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maskBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maskBitmap:Landroid/graphics/Bitmap;

    .line 268
    iget-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->applyMaskToDefault:Z

    iput-boolean v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->applyMaskToDefault:Z

    .line 269
    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    iput v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    .line 270
    iget-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->needSendRedrawMsg:Z

    iput-boolean v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->needSendRedrawMsg:Z

    .line 271
    iget-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->useApacheHttpClient:Z

    iput-boolean v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->useApacheHttpClient:Z

    .line 272
    iget-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->saveDefaultImageWhenDownloadFail:Z

    iput-boolean v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->saveDefaultImageWhenDownloadFail:Z

    .line 273
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->preferImageId:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->preferImageId:Ljava/lang/String;

    .line 274
    iget-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->checkDefaultProxy:Z

    iput-boolean v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->checkDefaultProxy:Z

    .line 275
    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxFetchedImageDim:I

    iput v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxFetchedImageDim:I

    .line 276
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable$Options;->clone()Lcom/htc/graphics/drawable/UrlDrawable$Options;

    move-result-object v0

    return-object v0
.end method

.method public getApplyMaskToDefault()Z
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->applyMaskToDefault:Z

    return v0
.end method

.method public getCheckDefaultProxy()Z
    .locals 1

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->checkDefaultProxy:Z

    return v0
.end method

.method public getDefaultBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDrawOnScroll()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->drawOnScroll:Z

    return v0
.end method

.method public getForceDim()Lcom/htc/graphics/drawable/UrlDrawable$Dimension;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    return-object v0
.end method

.method public getMaskBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maskBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getMaxDim()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    return v0
.end method

.method public getMaxFetchedImageDim()I
    .locals 1

    .prologue
    .line 439
    iget v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxFetchedImageDim:I

    return v0
.end method

.method public getMinDim()I
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    return v0
.end method

.method public getNeedSendRedrawMsg()Z
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->needSendRedrawMsg:Z

    return v0
.end method

.method public getOverlayBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOverlayPos()I
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    return v0
.end method

.method public getPreferImageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->preferImageId:Ljava/lang/String;

    return-object v0
.end method

.method public getRoundify()Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->roundify:Z

    return v0
.end method

.method public getSaveDefaultImageWhenDownloadFail()Z
    .locals 1

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->saveDefaultImageWhenDownloadFail:Z

    return v0
.end method

.method public getWriteDisk()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->writeDisk:Z

    return v0
.end method

.method public getuseApacheHttpClient()Z
    .locals 1

    .prologue
    .line 406
    iget-boolean v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->useApacheHttpClient:Z

    return v0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 287
    iput-boolean v3, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->writeDisk:Z

    .line 288
    iput-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->roundify:Z

    .line 289
    iput-boolean v3, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->drawOnScroll:Z

    .line 290
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;-><init>()V

    iput-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    .line 295
    :goto_0
    iput v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    .line 296
    iput v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    .line 297
    iput-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    .line 298
    iput-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    .line 299
    iput-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maskBitmap:Landroid/graphics/Bitmap;

    .line 300
    const/16 v0, 0x12

    iput v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    .line 301
    iput-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->needSendRedrawMsg:Z

    .line 302
    iput-boolean v3, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->useApacheHttpClient:Z

    .line 303
    iput-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->saveDefaultImageWhenDownloadFail:Z

    .line 304
    iput-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->preferImageId:Ljava/lang/String;

    .line 305
    iput-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->checkDefaultProxy:Z

    .line 306
    iput v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxFetchedImageDim:I

    .line 307
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-virtual {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->reset()V

    goto :goto_0
.end method

.method public setApplyMaskToDefault(Z)V
    .locals 0
    .parameter "applyMaskToDefault"

    .prologue
    .line 386
    iput-boolean p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->applyMaskToDefault:Z

    .line 387
    return-void
.end method

.method public setCheckDefaultProxy(Z)V
    .locals 0
    .parameter "checkDefaultProxy"

    .prologue
    .line 435
    iput-boolean p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->checkDefaultProxy:Z

    .line 436
    return-void
.end method

.method public setDefaultBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "defaultBitmap"

    .prologue
    .line 362
    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    .line 363
    return-void
.end method

.method public setDrawOnScroll(Z)V
    .locals 0
    .parameter "drawOnScroll"

    .prologue
    .line 330
    iput-boolean p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->drawOnScroll:Z

    .line 331
    return-void
.end method

.method public setForceDim(Lcom/htc/graphics/drawable/UrlDrawable$Dimension;)V
    .locals 0
    .parameter "forceDim"

    .prologue
    .line 338
    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    .line 339
    return-void
.end method

.method public setMaskBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "maskBitmap"

    .prologue
    .line 378
    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maskBitmap:Landroid/graphics/Bitmap;

    .line 379
    return-void
.end method

.method public setMaxDim(I)V
    .locals 0
    .parameter "maxDim"

    .prologue
    .line 354
    iput p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    .line 355
    return-void
.end method

.method public setMaxFetchedImageDim(I)V
    .locals 0
    .parameter "maxFetchedImageDim"

    .prologue
    .line 443
    iput p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxFetchedImageDim:I

    .line 444
    return-void
.end method

.method public setMinDim(I)V
    .locals 0
    .parameter "minDim"

    .prologue
    .line 346
    iput p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    .line 347
    return-void
.end method

.method public setNeedSendRedrawMsg(Z)V
    .locals 0
    .parameter "needSendRedrawMsg"

    .prologue
    .line 402
    iput-boolean p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->needSendRedrawMsg:Z

    .line 403
    return-void
.end method

.method public setOverlayBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "overlayBitmap"

    .prologue
    .line 370
    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    .line 371
    return-void
.end method

.method public setOverlayPos(I)V
    .locals 0
    .parameter "overlayPos"

    .prologue
    .line 394
    iput p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    .line 395
    return-void
.end method

.method public setPreferImageId(Ljava/lang/String;)V
    .locals 0
    .parameter "preferImageId"

    .prologue
    .line 427
    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->preferImageId:Ljava/lang/String;

    .line 428
    return-void
.end method

.method public setRoundify(Z)V
    .locals 0
    .parameter "roundify"

    .prologue
    .line 322
    iput-boolean p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->roundify:Z

    .line 323
    return-void
.end method

.method public setSaveDefaultImageWhenDownloadFail(Z)V
    .locals 0
    .parameter "saveDefaultImageWhenDownloadFail"

    .prologue
    .line 419
    iput-boolean p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->saveDefaultImageWhenDownloadFail:Z

    .line 420
    return-void
.end method

.method public setWriteDisk(Z)V
    .locals 0
    .parameter "writeDisk"

    .prologue
    .line 314
    iput-boolean p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->writeDisk:Z

    .line 315
    return-void
.end method

.method public setuseApacheHttpClient(Z)V
    .locals 0
    .parameter "useApacheHttpClient"

    .prologue
    .line 410
    iput-boolean p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->useApacheHttpClient:Z

    .line 411
    return-void
.end method
