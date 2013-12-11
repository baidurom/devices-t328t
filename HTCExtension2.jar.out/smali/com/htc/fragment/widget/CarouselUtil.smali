.class final Lcom/htc/fragment/widget/CarouselUtil;
.super Ljava/lang/Object;
.source "CarouselUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createSelectIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 9
    .parameter "context"
    .parameter "originalView"

    .prologue
    const/4 v8, 0x0

    .line 34
    if-nez p1, :cond_0

    .line 35
    const/4 v2, 0x0

    .line 53
    :goto_0
    return-object v2

    .line 37
    :cond_0
    invoke-static {p1}, Lcom/htc/fragment/widget/CarouselUtil;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 39
    .local v5, temp:Landroid/graphics/Bitmap;
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 40
    .local v0, c:Landroid/graphics/Bitmap$Config;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v6, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 42
    .local v4, selBitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v3, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 43
    .local v3, paint:Landroid/graphics/Paint;
    const v6, 0x2060010

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    const/16 v6, 0xa0

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 46
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 47
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v1, v6, v8, v8, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 49
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v2, v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 51
    .local v2, d:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "drawable"

    .prologue
    const/4 v5, 0x0

    .line 21
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 23
    .local v1, c:Landroid/graphics/Bitmap$Config;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 25
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 26
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 27
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 29
    return-object v0
.end method

.method public static indexForTaskColumnName(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 78
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/htc/fragment/widget/CarouselSetting;->TAKCOLUMNNAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 79
    sget-object v1, Lcom/htc/fragment/widget/CarouselSetting;->TAKCOLUMNNAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    .end local v0           #i:I
    :goto_1
    return v0

    .line 78
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static isDataStorageFull(J)Z
    .locals 7
    .parameter "requireSize"

    .prologue
    .line 62
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, FileStats:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v1, v5

    .line 64
    .local v1, blkSize:J
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    mul-long v3, v5, v1

    .line 66
    .local v3, freeMem:J
    cmp-long v5, v3, p0

    if-gez v5, :cond_0

    .line 67
    const/4 v5, 0x1

    .line 69
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method static isLiteDevice()Z
    .locals 2

    .prologue
    .line 90
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2d7

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Extra_Sense_Version:Ljava/lang/String;

    const-string v1, "4.0a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
