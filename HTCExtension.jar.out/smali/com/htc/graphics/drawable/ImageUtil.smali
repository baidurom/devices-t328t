.class Lcom/htc/graphics/drawable/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Opensense_ImageUtil"

.field private static final mEmptySize:[I

.field private static useScaledResize:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/graphics/drawable/ImageUtil;->useScaledResize:Z

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/graphics/drawable/ImageUtil;->mEmptySize:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
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

    .line 342
    :try_start_0
    sget-object v1, Lcom/htc/graphics/drawable/ImageUtil;->mEmptySize:[I

    .line 344
    .local v1, newSize:[I
    if-ne p1, v4, :cond_1

    if-ne p2, v4, :cond_1

    .line 365
    .end local v1           #newSize:[I
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 347
    .restart local v1       #newSize:[I
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 348
    .local v3, originalWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 351
    .local v2, originalHeight:I
    invoke-static {v3, v2, p1, p2}, Lcom/htc/graphics/drawable/ImageUtil;->countNewSize(IIII)[I

    move-result-object v1

    .line 353
    const/4 v4, 0x0

    aget v4, v1, v4

    if-ne v4, v3, :cond_2

    const/4 v4, 0x1

    aget v4, v1, v4

    if-eq v4, v2, :cond_0

    .line 354
    :cond_2
    sget-boolean v4, Lcom/htc/graphics/drawable/ImageUtil;->useScaledResize:Z

    if-eqz v4, :cond_3

    .line 355
    const/4 v4, 0x0

    aget v4, v1, v4

    const/4 v5, 0x1

    aget v5, v1, v5

    invoke-static {p0, v4, v5}, Lcom/htc/graphics/drawable/ImageUtil;->scaledResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 357
    :cond_3
    const/4 v4, 0x0

    aget v4, v1, v4

    const/4 v5, 0x1

    aget v5, v1, v5

    invoke-static {p0, v3, v2, v4, v5}, Lcom/htc/graphics/drawable/ImageUtil;->matrixResize(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 363
    .end local v1           #newSize:[I
    .end local v2           #originalHeight:I
    .end local v3           #originalWidth:I
    :catch_0
    move-exception v0

    .line 364
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Opensense_ImageUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/htc/opensense/widget/SNLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 365
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
    .line 36
    move v1, p0

    .line 37
    .local v1, nW:I
    move v0, p1

    .line 39
    .local v0, nH:I
    :cond_0
    :goto_0
    if-gt v1, p2, :cond_1

    if-le v0, p3, :cond_3

    .line 40
    :cond_1
    if-le v1, p2, :cond_2

    .line 41
    mul-int v2, v0, p2

    div-int v0, v2, v1

    .line 42
    move v1, p2

    .line 44
    :cond_2
    if-le v0, p3, :cond_0

    .line 45
    mul-int v2, v1, p3

    div-int v1, v2, v0

    .line 46
    move v0, p3

    goto :goto_0

    .line 50
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
    .line 66
    const/4 v0, 0x1

    .line 68
    .local v0, sample:I
    :goto_0
    shr-int/lit8 v1, p0, 0x1

    if-gt v1, p2, :cond_0

    shr-int/lit8 v1, p1, 0x1

    if-le v1, p3, :cond_1

    .line 69
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 70
    shr-int/lit8 p0, p0, 0x1

    .line 71
    shr-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 74
    :cond_1
    return v0
.end method

.method public static getOriginalSize(Landroid/content/res/Resources;I)[I
    .locals 6
    .parameter "resources"
    .parameter "resourceId"

    .prologue
    const/4 v5, 0x2

    .line 230
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 231
    .local v1, option:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 232
    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 233
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

    .line 236
    .end local v1           #option:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v2

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Opensense_ImageUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/htc/opensense/widget/SNLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    new-array v2, v5, [I

    fill-array-data v2, :array_0

    goto :goto_0

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

    .line 93
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 94
    .local v1, option:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 95
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 96
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

    .line 99
    .end local v1           #option:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v2

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Opensense_ImageUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/htc/opensense/widget/SNLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    new-array v2, v5, [I

    fill-array-data v2, :array_0

    goto :goto_0

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

    .line 251
    invoke-static {p0, p1, v0, v0}, Lcom/htc/graphics/drawable/ImageUtil;->loadBitmap(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

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

    .line 268
    :try_start_0
    sget-object v8, Lcom/htc/graphics/drawable/ImageUtil;->mEmptySize:[I

    .line 269
    .local v8, originalSize:[I
    sget-object v7, Lcom/htc/graphics/drawable/ImageUtil;->mEmptySize:[I

    .line 271
    .local v7, newSize:[I
    if-ne p2, v0, :cond_0

    if-ne p3, v0, :cond_0

    .line 272
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 287
    .end local v7           #newSize:[I
    .end local v8           #originalSize:[I
    :goto_0
    return-object v0

    .line 275
    .restart local v7       #newSize:[I
    .restart local v8       #originalSize:[I
    :cond_0
    invoke-static {p0, p1}, Lcom/htc/graphics/drawable/ImageUtil;->getOriginalSize(Landroid/content/res/Resources;I)[I

    move-result-object v8

    .line 276
    const/4 v0, 0x0

    aget v0, v8, v0

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    aget v0, v8, v0

    if-ge v0, v1, :cond_2

    :cond_1
    move-object v0, v9

    .line 277
    goto :goto_0

    .line 281
    :cond_2
    const/4 v0, 0x0

    aget v0, v8, v0

    const/4 v1, 0x1

    aget v1, v8, v1

    invoke-static {v0, v1, p2, p3}, Lcom/htc/graphics/drawable/ImageUtil;->countNewSize(IIII)[I

    move-result-object v7

    .line 283
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

    invoke-static/range {v0 .. v5}, Lcom/htc/graphics/drawable/ImageUtil;->loadBitmap(Landroid/content/res/Resources;IIIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 285
    .end local v7           #newSize:[I
    .end local v8           #originalSize:[I
    :catch_0
    move-exception v6

    .line 286
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "Opensense_ImageUtil"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/htc/opensense/widget/SNLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v9

    .line 287
    goto :goto_0
.end method

.method public static loadBitmap(Landroid/content/res/Resources;IIIII)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "resources"
    .parameter "resourceId"
    .parameter "originalWidth"
    .parameter "originalHeight"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 307
    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 308
    .local v4, option:Landroid/graphics/BitmapFactory$Options;
    invoke-static {p2, p3, p4, p5}, Lcom/htc/graphics/drawable/ImageUtil;->countSampleValue(IIII)I

    move-result v5

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 309
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 310
    .local v2, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 311
    .local v1, afterSameplWidth:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 312
    .local v0, afterSameplHeight:I
    if-ne v1, p4, :cond_0

    if-eq v0, p5, :cond_1

    .line 313
    :cond_0
    sget-boolean v5, Lcom/htc/graphics/drawable/ImageUtil;->useScaledResize:Z

    if-eqz v5, :cond_2

    .line 314
    invoke-static {v2, p4, p5}, Lcom/htc/graphics/drawable/ImageUtil;->scaledResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 322
    .end local v0           #afterSameplHeight:I
    .end local v1           #afterSameplWidth:I
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #option:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_0
    return-object v2

    .line 316
    .restart local v0       #afterSameplHeight:I
    .restart local v1       #afterSameplWidth:I
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    .restart local v4       #option:Landroid/graphics/BitmapFactory$Options;
    :cond_2
    invoke-static {v2, v1, v0, p4, p5}, Lcom/htc/graphics/drawable/ImageUtil;->matrixResize(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 320
    .end local v0           #afterSameplHeight:I
    .end local v1           #afterSameplWidth:I
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #option:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v3

    .line 321
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "Opensense_ImageUtil"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/htc/opensense/widget/SNLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 322
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "imagePath"

    .prologue
    const v0, 0x7fffffff

    .line 113
    invoke-static {p0, v0, v0}, Lcom/htc/graphics/drawable/ImageUtil;->loadBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

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

    .line 129
    :try_start_0
    sget-object v2, Lcom/htc/graphics/drawable/ImageUtil;->mEmptySize:[I

    .line 130
    .local v2, originalSize:[I
    sget-object v1, Lcom/htc/graphics/drawable/ImageUtil;->mEmptySize:[I

    .line 132
    .local v1, newSize:[I
    if-ne p1, v4, :cond_1

    if-ne p2, v4, :cond_1

    .line 133
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 148
    .end local v1           #newSize:[I
    .end local v2           #originalSize:[I
    :cond_0
    :goto_0
    return-object v3

    .line 136
    .restart local v1       #newSize:[I
    .restart local v2       #originalSize:[I
    :cond_1
    invoke-static {p0}, Lcom/htc/graphics/drawable/ImageUtil;->getOriginalSize(Ljava/lang/String;)[I

    move-result-object v2

    .line 137
    const/4 v4, 0x0

    aget v4, v2, v4

    if-lt v4, v5, :cond_0

    const/4 v4, 0x1

    aget v4, v2, v4

    if-lt v4, v5, :cond_0

    .line 142
    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x1

    aget v5, v2, v5

    invoke-static {v4, v5, p1, p2}, Lcom/htc/graphics/drawable/ImageUtil;->countNewSize(IIII)[I

    move-result-object v1

    .line 144
    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x1

    aget v5, v2, v5

    const/4 v6, 0x0

    aget v6, v1, v6

    const/4 v7, 0x1

    aget v7, v1, v7

    invoke-static {p0, v4, v5, v6, v7}, Lcom/htc/graphics/drawable/ImageUtil;->loadBitmap(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 146
    .end local v1           #newSize:[I
    .end local v2           #originalSize:[I
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Opensense_ImageUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/htc/opensense/widget/SNLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static loadBitmap(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "imagePath"
    .parameter "originalWidth"
    .parameter "originalHeight"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 194
    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 195
    .local v4, option:Landroid/graphics/BitmapFactory$Options;
    invoke-static {p1, p2, p3, p4}, Lcom/htc/graphics/drawable/ImageUtil;->countSampleValue(IIII)I

    move-result v5

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 196
    invoke-static {p0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 197
    .local v2, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 198
    .local v1, afterSameplWidth:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 199
    .local v0, afterSameplHeight:I
    if-ne v1, p3, :cond_0

    if-eq v0, p4, :cond_1

    .line 200
    :cond_0
    sget-boolean v5, Lcom/htc/graphics/drawable/ImageUtil;->useScaledResize:Z

    if-eqz v5, :cond_2

    .line 201
    invoke-static {v2, p3, p4}, Lcom/htc/graphics/drawable/ImageUtil;->scaledResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 209
    .end local v0           #afterSameplHeight:I
    .end local v1           #afterSameplWidth:I
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #option:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_0
    return-object v2

    .line 203
    .restart local v0       #afterSameplHeight:I
    .restart local v1       #afterSameplWidth:I
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    .restart local v4       #option:Landroid/graphics/BitmapFactory$Options;
    :cond_2
    invoke-static {v2, v1, v0, p3, p4}, Lcom/htc/graphics/drawable/ImageUtil;->matrixResize(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 207
    .end local v0           #afterSameplHeight:I
    .end local v1           #afterSameplWidth:I
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #option:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v3

    .line 208
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "Opensense_ImageUtil"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/htc/opensense/widget/SNLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
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
    invoke-static {p0, p1, p2}, Lcom/htc/graphics/drawable/ImageUtil;->loadBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 175
    .end local v1           #size:J
    :cond_0
    :goto_0
    return-object v3

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Opensense_ImageUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/htc/opensense/widget/SNLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

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

    .line 399
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 400
    .local v5, matrix:Landroid/graphics/Matrix;
    int-to-float v0, p3

    int-to-float v2, p1

    div-float/2addr v0, v2

    int-to-float v2, p4

    int-to-float v3, p2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 401
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
    .line 395
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

    .line 382
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 383
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 384
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 385
    invoke-virtual {p0, v2, v2, p1, p2}, Landroid/view/View;->layout(IIII)V

    .line 386
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 387
    return-object v0
.end method
