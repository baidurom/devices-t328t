.class public Lcom/htc/sunny/SBitmap;
.super Ljava/lang/Object;
.source "SBitmap.java"


# static fields
.field public static final BOTTOM_BORDER:I = 0x8

.field public static final LEFT_BORDER:I = 0x1

.field public static final RIGHT_BORDER:I = 0x2

.field public static final TOP_BORDER:I = 0x4


# instance fields
.field private mBmpHeight:I

.field private mBmpId:I

.field private mBmpWidth:I

.field private mCloned:Z

.field private mNeedRecycle:Z


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1
    .parameter "bmp"
    .parameter "nBmpId"

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Lcom/htc/sunny/SBitmap;->mBmpId:I

    .line 34
    iput v0, p0, Lcom/htc/sunny/SBitmap;->mBmpWidth:I

    iput v0, p0, Lcom/htc/sunny/SBitmap;->mBmpHeight:I

    .line 219
    iput-boolean v0, p0, Lcom/htc/sunny/SBitmap;->mCloned:Z

    .line 220
    iput-boolean v0, p0, Lcom/htc/sunny/SBitmap;->mNeedRecycle:Z

    .line 58
    iput p2, p0, Lcom/htc/sunny/SBitmap;->mBmpId:I

    .line 59
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SBitmap;->mBmpWidth:I

    .line 60
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SBitmap;->mBmpHeight:I

    .line 61
    return-void
.end method

.method private constructor <init>(Lcom/htc/sunny/SBitmap;)V
    .locals 1
    .parameter "bmp"

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Lcom/htc/sunny/SBitmap;->mBmpId:I

    .line 34
    iput v0, p0, Lcom/htc/sunny/SBitmap;->mBmpWidth:I

    iput v0, p0, Lcom/htc/sunny/SBitmap;->mBmpHeight:I

    .line 219
    iput-boolean v0, p0, Lcom/htc/sunny/SBitmap;->mCloned:Z

    .line 220
    iput-boolean v0, p0, Lcom/htc/sunny/SBitmap;->mNeedRecycle:Z

    .line 64
    iget v0, p1, Lcom/htc/sunny/SBitmap;->mBmpId:I

    iput v0, p0, Lcom/htc/sunny/SBitmap;->mBmpId:I

    .line 65
    iget v0, p1, Lcom/htc/sunny/SBitmap;->mBmpWidth:I

    iput v0, p0, Lcom/htc/sunny/SBitmap;->mBmpWidth:I

    .line 66
    iget v0, p1, Lcom/htc/sunny/SBitmap;->mBmpHeight:I

    iput v0, p0, Lcom/htc/sunny/SBitmap;->mBmpHeight:I

    .line 67
    return-void
.end method

.method public static createBitmap(III)Lcom/htc/sunny/SBitmap;
    .locals 6
    .parameter "color"
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    const/4 v5, 0x0

    .line 200
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 202
    .local v2, colorDrawable:Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v2, v5, v5, p1, p2}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    .line 204
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 205
    .local v3, config:Landroid/graphics/Bitmap$Config;
    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 206
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 207
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 209
    invoke-static {v0}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/htc/sunny/SBitmap;

    move-result-object v4

    .line 211
    .local v4, sbmp:Lcom/htc/sunny/SBitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 212
    const/4 v0, 0x0

    .line 214
    return-object v4
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;)Lcom/htc/sunny/SBitmap;
    .locals 3
    .parameter "bmp"

    .prologue
    .line 82
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/Bitmap;III)Lcom/htc/sunny/SBitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;I)Lcom/htc/sunny/SBitmap;
    .locals 2
    .parameter "bmp"
    .parameter "transparentBorders"

    .prologue
    .line 103
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 105
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/Bitmap;III)Lcom/htc/sunny/SBitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;II)Lcom/htc/sunny/SBitmap;
    .locals 1
    .parameter "bmp"
    .parameter "nMaxWidth"
    .parameter "nMaxHeight"

    .prologue
    .line 123
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/Bitmap;III)Lcom/htc/sunny/SBitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;III)Lcom/htc/sunny/SBitmap;
    .locals 3
    .parameter "bmp"
    .parameter "nMaxWidth"
    .parameter "nMaxHeight"
    .parameter "transparentBorders"

    .prologue
    const/4 v1, 0x0

    .line 144
    if-nez p0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-object v1

    .line 146
    :cond_1
    const/4 v0, 0x0

    .line 147
    .local v0, nBmpId:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v2

    if-nez v2, :cond_2

    .line 148
    invoke-static {p0, p1, p2, p3}, Lcom/htc/sunny/SunnyEngine;->createBitmap(Landroid/graphics/Bitmap;III)I

    move-result v0

    .line 152
    :goto_1
    if-eqz v0, :cond_0

    .line 154
    new-instance v1, Lcom/htc/sunny/SBitmap;

    invoke-direct {v1, p0, v0}, Lcom/htc/sunny/SBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 150
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/htc/sunny/SunnyEngine;->createAlphaBitmap(Landroid/graphics/Bitmap;III)I

    move-result v0

    goto :goto_1
.end method

.method public static createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny/SBitmap;
    .locals 5
    .parameter "drawable"
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    const/4 v4, 0x0

    .line 171
    if-nez p0, :cond_0

    const/4 v3, 0x0

    .line 184
    :goto_0
    return-object v3

    .line 173
    :cond_0
    invoke-virtual {p0, v4, v4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 174
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 175
    .local v2, config:Landroid/graphics/Bitmap$Config;
    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 176
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 177
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 179
    invoke-static {v0}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/htc/sunny/SBitmap;

    move-result-object v3

    .line 181
    .local v3, sbmp:Lcom/htc/sunny/SBitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 182
    const/4 v0, 0x0

    .line 184
    goto :goto_0
.end method


# virtual methods
.method cloneSBitmap()Lcom/htc/sunny/SBitmap;
    .locals 1

    .prologue
    .line 227
    monitor-enter p0

    .line 228
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny/SBitmap;->mCloned:Z

    .line 229
    monitor-exit p0

    .line 230
    return-object p0

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getBmpId()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/htc/sunny/SBitmap;->mBmpId:I

    return v0
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/htc/sunny/SBitmap;->mBmpHeight:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/htc/sunny/SBitmap;->mBmpWidth:I

    return v0
.end method

.method public final isRecycled()Z
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/htc/sunny/SBitmap;->mBmpId:I

    invoke-static {v0}, Lcom/htc/sunny/SunnyEngine;->isBitmapDestroyed(I)Z

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 282
    monitor-enter p0

    .line 283
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/sunny/SBitmap;->mCloned:Z

    if-eqz v0, :cond_0

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SBitmap;->mNeedRecycle:Z

    .line 285
    monitor-exit p0

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    iget v0, p0, Lcom/htc/sunny/SBitmap;->mBmpId:I

    invoke-static {v0}, Lcom/htc/sunny/SunnyEngine;->destroyBitmap(I)V

    .line 295
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method releaseClone()V
    .locals 1

    .prologue
    .line 234
    monitor-enter p0

    .line 235
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny/SBitmap;->mCloned:Z

    .line 237
    iget-boolean v0, p0, Lcom/htc/sunny/SBitmap;->mNeedRecycle:Z

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 240
    :cond_0
    monitor-exit p0

    .line 241
    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public substitute()Lcom/htc/sunny/SBitmap;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 309
    new-instance v0, Lcom/htc/sunny/SBitmap;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SBitmap;-><init>(Lcom/htc/sunny/SBitmap;)V

    .line 310
    .local v0, newBitmap:Lcom/htc/sunny/SBitmap;
    iput v1, p0, Lcom/htc/sunny/SBitmap;->mBmpId:I

    .line 311
    iput v1, p0, Lcom/htc/sunny/SBitmap;->mBmpWidth:I

    .line 312
    iput v1, p0, Lcom/htc/sunny/SBitmap;->mBmpHeight:I

    .line 313
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 335
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny/SBitmap;->mBmpId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " w:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny/SBitmap;->mBmpWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny/SBitmap;->mBmpHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isRecycled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny/SBitmap;->mBmpId:I

    invoke-static {v2}, Lcom/htc/sunny/SunnyEngine;->isBitmapDestroyed(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
