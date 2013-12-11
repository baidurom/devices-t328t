.class public Lcom/htc/util/media/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Util"

.field private static final PREFIX:Ljava/lang/String; = "[ImageUtil] "

.field private static final mEmptySize:[I

.field private static useScaledResize:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/util/media/ImageUtil;->useScaledResize:Z

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/util/media/ImageUtil;->mEmptySize:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "source"
    .parameter "maximumWidth"
    .parameter "maximumHeight"

    .prologue
    const v4, 0x7fffffff

    .line 359
    :try_start_0
    sget-object v1, Lcom/htc/util/media/ImageUtil;->mEmptySize:[I

    .line 361
    .local v1, newSize:[I
    if-ne p1, v4, :cond_1

    if-ne p2, v4, :cond_1

    .line 384
    .end local v1           #newSize:[I
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 364
    .restart local v1       #newSize:[I
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 365
    .local v3, originalWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 368
    .local v2, originalHeight:I
    invoke-static {v3, v2, p1, p2}, Lcom/htc/util/media/ImageUtil;->countNewSize(IIII)[I

    move-result-object v1

    .line 370
    const/4 v4, 0x0

    aget v4, v1, v4

    if-ne v4, v3, :cond_2

    const/4 v4, 0x1

    aget v4, v1, v4

    if-eq v4, v2, :cond_0

    .line 371
    :cond_2
    sget-boolean v4, Lcom/htc/util/media/ImageUtil;->useScaledResize:Z

    if-eqz v4, :cond_3

    .line 372
    const/4 v4, 0x0

    aget v4, v1, v4

    const/4 v5, 0x1

    aget v5, v1, v5

    invoke-static {p0, v4, v5}, Lcom/htc/util/media/ImageUtil;->scaledResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 374
    :cond_3
    const/4 v4, 0x0

    aget v4, v1, v4

    const/4 v5, 0x1

    aget v5, v1, v5

    invoke-static {p0, v3, v2, v4, v5}, Lcom/htc/util/media/ImageUtil;->matrixResize(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 380
    .end local v1           #newSize:[I
    .end local v2           #originalHeight:I
    .end local v3           #originalWidth:I
    :catch_0
    move-exception v0

    .line 384
    .local v0, e:Ljava/lang/Exception;
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static countNewSize(IIII)[I
    .locals 4
    .parameter "originalWidth"
    .parameter "originalHeight"
    .parameter "maximumWidth"
    .parameter "maximumHeight"

    .prologue
    .line 37
    move v1, p0

    .line 38
    .local v1, nW:I
    move v0, p1

    .line 40
    .local v0, nH:I
    :cond_0
    :goto_0
    if-gt v1, p2, :cond_1

    if-le v0, p3, :cond_3

    .line 41
    :cond_1
    if-le v1, p2, :cond_2

    .line 42
    mul-int v2, v0, p2

    div-int v0, v2, v1

    .line 43
    move v1, p2

    .line 45
    :cond_2
    if-le v0, p3, :cond_0

    .line 46
    mul-int v2, v1, p3

    div-int v1, v2, v0

    .line 47
    move v0, p3

    goto :goto_0

    .line 51
    :cond_3
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    return-object v2
.end method

.method public static countSampleValue(IIII)I
    .locals 2
    .parameter "originalWidth"
    .parameter "originalHeight"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 64
    const/4 v0, 0x1

    .line 66
    .local v0, sample:I
    :goto_0
    shr-int/lit8 v1, p0, 0x1

    if-gt v1, p2, :cond_0

    shr-int/lit8 v1, p1, 0x1

    if-le v1, p3, :cond_1

    .line 67
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 68
    shr-int/lit8 p0, p0, 0x1

    .line 69
    shr-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 72
    :cond_1
    return v0
.end method

.method public static getOriginalSize(Landroid/content/res/Resources;I)[I
    .locals 6
    .parameter "resources"
    .parameter "resourceId"

    .prologue
    const/4 v5, 0x2

    .line 233
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 234
    .local v1, option:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 235
    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 236
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v4, v2, v3

    const/4 v3, 0x1

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v1           #option:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v2

    .line 237
    :catch_0
    move-exception v0

    .line 241
    .local v0, e:Ljava/lang/Exception;
    new-array v2, v5, [I

    fill-array-data v2, :array_0

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public static getOriginalSize(Ljava/lang/String;)[I
    .locals 6
    .parameter "imagePath"

    .prologue
    const/4 v5, 0x2

    .line 88
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 89
    .local v1, option:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 90
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 91
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v4, v2, v3

    const/4 v3, 0x1

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v1           #option:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v2

    .line 92
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Ljava/lang/Exception;
    new-array v2, v5, [I

    fill-array-data v2, :array_0

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public static loadBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "resources"
    .parameter "resourceId"

    .prologue
    const v0, 0x7fffffff

    .line 258
    invoke-static {p0, p1, v0, v0}, Lcom/htc/util/media/ImageUtil;->loadBitmap(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static loadBitmap(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "resources"
    .parameter "resourceId"
    .parameter "maximumWidth"
    .parameter "maximumHeight"

    .prologue
    const/4 v9, 0x0

    const v0, 0x7fffffff

    const/4 v1, 0x1

    .line 277
    :try_start_0
    sget-object v8, Lcom/htc/util/media/ImageUtil;->mEmptySize:[I

    .line 278
    .local v8, originalSize:[I
    sget-object v7, Lcom/htc/util/media/ImageUtil;->mEmptySize:[I

    .line 280
    .local v7, newSize:[I
    if-ne p2, v0, :cond_0

    if-ne p3, v0, :cond_0

    .line 281
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 298
    .end local v7           #newSize:[I
    .end local v8           #originalSize:[I
    :goto_0
    return-object v0

    .line 284
    .restart local v7       #newSize:[I
    .restart local v8       #originalSize:[I
    :cond_0
    invoke-static {p0, p1}, Lcom/htc/util/media/ImageUtil;->getOriginalSize(Landroid/content/res/Resources;I)[I

    move-result-object v8

    .line 285
    const/4 v0, 0x0

    aget v0, v8, v0

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    aget v0, v8, v0

    if-ge v0, v1, :cond_2

    :cond_1
    move-object v0, v9

    .line 286
    goto :goto_0

    .line 290
    :cond_2
    const/4 v0, 0x0

    aget v0, v8, v0

    const/4 v1, 0x1

    aget v1, v8, v1

    invoke-static {v0, v1, p2, p3}, Lcom/htc/util/media/ImageUtil;->countNewSize(IIII)[I

    move-result-object v7

    .line 292
    const/4 v0, 0x0

    aget v2, v8, v0

    const/4 v0, 0x1

    aget v3, v8, v0

    const/4 v0, 0x0

    aget v4, v7, v0

    const/4 v0, 0x1

    aget v5, v7, v0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/util/media/ImageUtil;->loadBitmap(Landroid/content/res/Resources;IIIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 294
    .end local v7           #newSize:[I
    .end local v8           #originalSize:[I
    :catch_0
    move-exception v6

    .local v6, e:Ljava/lang/Exception;
    move-object v0, v9

    .line 298
    goto :goto_0
.end method

.method public static loadBitmap(Landroid/content/res/Resources;IIIII)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "resources"
    .parameter "resourceId"
    .parameter "originalWidth"
    .parameter "originalHeight"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 320
    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 321
    .local v4, option:Landroid/graphics/BitmapFactory$Options;
    invoke-static {p2, p3, p4, p5}, Lcom/htc/util/media/ImageUtil;->countSampleValue(IIII)I

    move-result v5

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 322
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 323
    .local v2, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 324
    .local v1, afterSameplWidth:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 325
    .local v0, afterSameplHeight:I
    if-ne v1, p4, :cond_0

    if-eq v0, p5, :cond_1

    .line 326
    :cond_0
    sget-boolean v5, Lcom/htc/util/media/ImageUtil;->useScaledResize:Z

    if-eqz v5, :cond_2

    .line 327
    invoke-static {v2, p4, p5}, Lcom/htc/util/media/ImageUtil;->scaledResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 337
    .end local v0           #afterSameplHeight:I
    .end local v1           #afterSameplWidth:I
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #option:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_0
    return-object v2

    .line 329
    .restart local v0       #afterSameplHeight:I
    .restart local v1       #afterSameplWidth:I
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    .restart local v4       #option:Landroid/graphics/BitmapFactory$Options;
    :cond_2
    invoke-static {v2, v1, v0, p4, p5}, Lcom/htc/util/media/ImageUtil;->matrixResize(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 333
    .end local v0           #afterSameplHeight:I
    .end local v1           #afterSameplWidth:I
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #option:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v3

    .line 337
    .local v3, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "imagePath"

    .prologue
    const v0, 0x7fffffff

    .line 112
    invoke-static {p0, v0, v0}, Lcom/htc/util/media/ImageUtil;->loadBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static loadBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "imagePath"
    .parameter "maximumWidth"
    .parameter "maximumHeight"

    .prologue
    const/4 v3, 0x0

    const v4, 0x7fffffff

    const/4 v5, 0x1

    .line 125
    :try_start_0
    sget-object v2, Lcom/htc/util/media/ImageUtil;->mEmptySize:[I

    .line 126
    .local v2, originalSize:[I
    sget-object v1, Lcom/htc/util/media/ImageUtil;->mEmptySize:[I

    .line 128
    .local v1, newSize:[I
    if-ne p1, v4, :cond_1

    if-ne p2, v4, :cond_1

    .line 129
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 146
    .end local v1           #newSize:[I
    .end local v2           #originalSize:[I
    :cond_0
    :goto_0
    return-object v3

    .line 132
    .restart local v1       #newSize:[I
    .restart local v2       #originalSize:[I
    :cond_1
    invoke-static {p0}, Lcom/htc/util/media/ImageUtil;->getOriginalSize(Ljava/lang/String;)[I

    move-result-object v2

    .line 133
    const/4 v4, 0x0

    aget v4, v2, v4

    if-lt v4, v5, :cond_0

    const/4 v4, 0x1

    aget v4, v2, v4

    if-lt v4, v5, :cond_0

    .line 138
    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x1

    aget v5, v2, v5

    invoke-static {v4, v5, p1, p2}, Lcom/htc/util/media/ImageUtil;->countNewSize(IIII)[I

    move-result-object v1

    .line 140
    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x1

    aget v5, v2, v5

    const/4 v6, 0x0

    aget v6, v1, v6

    const/4 v7, 0x1

    aget v7, v1, v7

    invoke-static {p0, v4, v5, v6, v7}, Lcom/htc/util/media/ImageUtil;->loadBitmap(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 142
    .end local v1           #newSize:[I
    .end local v2           #originalSize:[I
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static loadBitmap(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "imagePath"
    .parameter "originalWidth"
    .parameter "originalHeight"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 193
    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 194
    .local v4, option:Landroid/graphics/BitmapFactory$Options;
    invoke-static {p1, p2, p3, p4}, Lcom/htc/util/media/ImageUtil;->countSampleValue(IIII)I

    move-result v5

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 195
    invoke-static {p0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 196
    .local v2, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 197
    .local v1, afterSameplWidth:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 198
    .local v0, afterSameplHeight:I
    if-ne v1, p3, :cond_0

    if-eq v0, p4, :cond_1

    .line 199
    :cond_0
    sget-boolean v5, Lcom/htc/util/media/ImageUtil;->useScaledResize:Z

    if-eqz v5, :cond_2

    .line 200
    invoke-static {v2, p3, p4}, Lcom/htc/util/media/ImageUtil;->scaledResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 210
    .end local v0           #afterSameplHeight:I
    .end local v1           #afterSameplWidth:I
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #option:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_0
    return-object v2

    .line 202
    .restart local v0       #afterSameplHeight:I
    .restart local v1       #afterSameplWidth:I
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    .restart local v4       #option:Landroid/graphics/BitmapFactory$Options;
    :cond_2
    invoke-static {v2, v1, v0, p3, p4}, Lcom/htc/util/media/ImageUtil;->matrixResize(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 206
    .end local v0           #afterSameplHeight:I
    .end local v1           #afterSameplWidth:I
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #option:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v3

    .line 210
    .local v3, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static loadBitmap(Ljava/lang/String;IIJ)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "imagePath"
    .parameter "maximumWidth"
    .parameter "maximumHeight"
    .parameter "maxFileSizeLimit"

    .prologue
    const/4 v3, 0x0

    .line 166
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 168
    .local v1, size:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_0

    cmp-long v4, v1, p3

    if-gtz v4, :cond_0

    .line 169
    invoke-static {p0, p1, p2}, Lcom/htc/util/media/ImageUtil;->loadBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 177
    .end local v1           #size:J
    :cond_0
    :goto_0
    return-object v3

    .line 173
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static matrixResize(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "source"
    .parameter "originalWidth"
    .parameter "orginalHeight"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    const/4 v1, 0x0

    .line 426
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 427
    .local v5, matrix:Landroid/graphics/Matrix;
    int-to-float v0, p3

    int-to-float v2, p1

    div-float/2addr v0, v2

    int-to-float v2, p4

    int-to-float v3, p2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 428
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static scaledResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "source"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 419
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static view2bitmap(Landroid/view/View;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "view"
    .parameter "width"
    .parameter "height"
    .parameter "config"

    .prologue
    const/4 v2, 0x0

    .line 403
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 404
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 405
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 406
    invoke-virtual {p0, v2, v2, p1, p2}, Landroid/view/View;->layout(IIII)V

    .line 407
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 408
    return-object v0
.end method
