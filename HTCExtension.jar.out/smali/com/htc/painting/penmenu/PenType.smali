.class public Lcom/htc/painting/penmenu/PenType;
.super Ljava/lang/Object;
.source "PenType.java"


# static fields
.field private static DEFAULT_SIZ_ARRAY:[F = null

.field private static final LOG_TAG:Ljava/lang/String; = "PenType"

.field private static final PEN_SIZE_IDS:[I

.field private static colorOptions:[I


# instance fields
.field private mColorAdjustable:Z

.field private mDefaultColor:I

.field private mDefaultSize:F

.field private mId:I

.field private mIsDefaultPen:Z

.field private mIsEraser:Z

.field private mIsRenderSupplier:Z

.field private mIsSimplePen:Z

.field private mName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPen:Lcom/htc/painting/tool/pen/Pen;

.field private mSizeAdjustable:Z

.field private mSizeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedColors:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 36
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/painting/penmenu/PenType;->PEN_SIZE_IDS:[I

    .line 42
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/painting/penmenu/PenType;->DEFAULT_SIZ_ARRAY:[F

    return-void

    .line 36
    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
    .end array-data

    .line 42
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x40t 0x40t
        0x0t 0x0t 0xc0t 0x40t
        0x0t 0x0t 0x40t 0x41t
        0x0t 0x0t 0xc0t 0x41t
        0x0t 0x0t 0x40t 0x42t
    .end array-data
.end method

.method public constructor <init>(Lcom/htc/painting/tool/pen/Pen;Landroid/content/Context;)V
    .locals 8
    .parameter "pen"
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 133
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/htc/painting/penmenu/PenType;->mSizeMap:Ljava/util/Map;

    .line 134
    if-nez p1, :cond_0

    .line 170
    :goto_0
    return-void

    .line 137
    :cond_0
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenType;->mPen:Lcom/htc/painting/tool/pen/Pen;

    .line 138
    invoke-virtual {p1}, Lcom/htc/painting/tool/pen/Pen;->getId()I

    move-result v4

    iput v4, p0, Lcom/htc/painting/penmenu/PenType;->mId:I

    .line 139
    invoke-virtual {p1}, Lcom/htc/painting/tool/pen/Pen;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/painting/penmenu/PenType;->mName:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Lcom/htc/painting/tool/pen/Pen;->getAppPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/painting/penmenu/PenType;->mPackageName:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Lcom/htc/painting/tool/pen/Pen;->getPenProps()Lcom/htc/painting/tool/pen/ReadOnlyPenProps;

    move-result-object v1

    .line 144
    .local v1, properties:Lcom/htc/painting/tool/pen/ReadOnlyPenProps;
    const-string v4, "_flags"

    invoke-virtual {v1, v4}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 145
    .local v0, flag:I
    and-int/lit8 v4, v0, 0x1

    if-ne v4, v5, :cond_2

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/htc/painting/penmenu/PenType;->mIsEraser:Z

    .line 146
    and-int/lit8 v4, v0, 0x2

    const/4 v7, 0x2

    if-ne v4, v7, :cond_3

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/htc/painting/penmenu/PenType;->mIsSimplePen:Z

    .line 147
    and-int/lit8 v4, v0, 0x8

    const/16 v7, 0x8

    if-ne v4, v7, :cond_4

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lcom/htc/painting/penmenu/PenType;->mIsDefaultPen:Z

    .line 148
    and-int/lit8 v4, v0, 0x4

    const/4 v7, 0x4

    if-ne v4, v7, :cond_5

    :goto_4
    iput-boolean v5, p0, Lcom/htc/painting/penmenu/PenType;->mIsRenderSupplier:Z

    .line 150
    const-string v4, "_color_adjustable"

    invoke-virtual {v1, v4}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/painting/penmenu/PenType;->mColorAdjustable:Z

    .line 151
    const-string v4, "_supported_color_array"

    invoke-virtual {v1, v4}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 152
    .local v3, supportedColors:[I
    invoke-direct {p0, v3}, Lcom/htc/painting/penmenu/PenType;->setSupportedColors([I)V

    .line 153
    const-string v4, "_color_default"

    invoke-virtual {v1, v4}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4, p2}, Lcom/htc/painting/penmenu/PenType;->mapToColorOptions(ILandroid/content/Context;)I

    move-result v4

    iput v4, p0, Lcom/htc/painting/penmenu/PenType;->mDefaultColor:I

    .line 155
    const-string v4, "_width_adjustable"

    invoke-virtual {v1, v4}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/painting/penmenu/PenType;->mSizeAdjustable:Z

    .line 156
    const-string v4, "_fixed_width_array"

    invoke-virtual {v1, v4}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v2

    .line 157
    .local v2, sizeArray:[F
    if-eqz v2, :cond_1

    array-length v4, v2

    sget-object v5, Lcom/htc/painting/penmenu/PenType;->DEFAULT_SIZ_ARRAY:[F

    array-length v5, v5

    if-eq v4, v5, :cond_6

    .line 158
    :cond_1
    sget-object v4, Lcom/htc/painting/penmenu/PenType;->DEFAULT_SIZ_ARRAY:[F

    invoke-direct {p0, v4}, Lcom/htc/painting/penmenu/PenType;->setPenSizes([F)V

    .line 163
    :goto_5
    const-string v4, "_width_default"

    invoke-virtual {v1, v4}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/htc/painting/penmenu/PenType;->mapToSizeOptions(F)F

    move-result v4

    iput v4, p0, Lcom/htc/painting/penmenu/PenType;->mDefaultSize:F

    goto/16 :goto_0

    .end local v2           #sizeArray:[F
    .end local v3           #supportedColors:[I
    :cond_2
    move v4, v6

    .line 145
    goto :goto_1

    :cond_3
    move v4, v6

    .line 146
    goto :goto_2

    :cond_4
    move v4, v6

    .line 147
    goto :goto_3

    :cond_5
    move v5, v6

    .line 148
    goto :goto_4

    .line 161
    .restart local v2       #sizeArray:[F
    .restart local v3       #supportedColors:[I
    :cond_6
    invoke-direct {p0, v2}, Lcom/htc/painting/penmenu/PenType;->setPenSizes([F)V

    goto :goto_5
.end method

.method private getIcon(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 200
    .local v0, icon:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private loadBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 181
    const/4 v1, 0x0

    .line 183
    .local v1, packageContext:Landroid/content/Context;
    :try_start_0
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenType;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 187
    :goto_0
    const/4 v2, 0x0

    .line 188
    .local v2, ret:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 189
    if-eqz p2, :cond_0

    .line 190
    invoke-direct {p0, v1, p2}, Lcom/htc/painting/penmenu/PenType;->getIcon(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 194
    :cond_0
    return-object v2

    .line 184
    .end local v2           #ret:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "PenType"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private mapToColorOptions(ILandroid/content/Context;)I
    .locals 8
    .parameter "color"
    .parameter "context"

    .prologue
    .line 455
    sget-object v6, Lcom/htc/painting/penmenu/PenType;->colorOptions:[I

    if-nez v6, :cond_1

    .line 456
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 457
    .local v4, res:Landroid/content/res/Resources;
    const v6, 0x2070015

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 458
    .local v0, colors:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    new-array v6, v6, [I

    sput-object v6, Lcom/htc/painting/penmenu/PenType;->colorOptions:[I

    .line 459
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 460
    sget-object v6, Lcom/htc/painting/penmenu/PenType;->colorOptions:[I

    const/high16 v7, -0x100

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    aput v7, v6, v1

    .line 459
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 462
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 465
    .end local v0           #colors:Landroid/content/res/TypedArray;
    .end local v1           #i:I
    .end local v4           #res:Landroid/content/res/Resources;
    :cond_1
    sget-object v6, Lcom/htc/painting/penmenu/PenType;->colorOptions:[I

    const/4 v7, 0x0

    aget v5, v6, v7

    .line 468
    .local v5, ret:I
    const/4 v2, 0x0

    .line 469
    .local v2, matched:Z
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    sget-object v6, Lcom/htc/painting/penmenu/PenType;->colorOptions:[I

    array-length v6, v6

    if-ge v1, v6, :cond_2

    .line 470
    sget-object v6, Lcom/htc/painting/penmenu/PenType;->colorOptions:[I

    aget v3, v6, v1

    .line 471
    .local v3, optionColor:I
    if-ne p1, v3, :cond_5

    .line 472
    move v5, p1

    .line 473
    const/4 v2, 0x1

    .line 478
    .end local v3           #optionColor:I
    :cond_2
    if-nez v2, :cond_4

    .line 481
    const/4 v1, 0x0

    :goto_2
    sget-object v6, Lcom/htc/painting/penmenu/PenType;->colorOptions:[I

    array-length v6, v6

    if-ge v1, v6, :cond_3

    .line 482
    sget-object v6, Lcom/htc/painting/penmenu/PenType;->colorOptions:[I

    aget v6, v6, v1

    invoke-virtual {p0, v6}, Lcom/htc/painting/penmenu/PenType;->isColorSupported(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 483
    sget-object v6, Lcom/htc/painting/penmenu/PenType;->colorOptions:[I

    aget v5, v6, v1

    .line 484
    const/4 v2, 0x1

    .line 489
    :cond_3
    if-eqz v2, :cond_4

    .line 504
    :cond_4
    return v5

    .line 469
    .restart local v3       #optionColor:I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 481
    .end local v3           #optionColor:I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private mapToSizeOptions(F)F
    .locals 9
    .parameter "size"

    .prologue
    .line 420
    const v2, 0x7f7fffff

    .line 421
    .local v2, minDiff:F
    sget-object v7, Lcom/htc/painting/penmenu/PenType;->PEN_SIZE_IDS:[I

    const/4 v8, 0x0

    aget v3, v7, v8

    .line 423
    .local v3, minDiffSizeId:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v7, Lcom/htc/painting/penmenu/PenType;->PEN_SIZE_IDS:[I

    array-length v7, v7

    if-ge v1, v7, :cond_2

    .line 424
    sget-object v7, Lcom/htc/painting/penmenu/PenType;->PEN_SIZE_IDS:[I

    aget v5, v7, v1

    .line 425
    .local v5, sizeId:I
    iget-object v7, p0, Lcom/htc/painting/penmenu/PenType;->mSizeMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 426
    .local v6, standardSize:F
    cmpl-float v7, p1, v6

    if-nez v7, :cond_0

    .line 443
    .end local v5           #sizeId:I
    .end local v6           #standardSize:F
    .end local p1
    :goto_1
    return p1

    .line 430
    .restart local v5       #sizeId:I
    .restart local v6       #standardSize:F
    .restart local p1
    :cond_0
    sub-float v7, p1, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 431
    .local v0, diff:F
    cmpg-float v7, v0, v2

    if-gez v7, :cond_1

    .line 432
    move v2, v0

    .line 433
    move v3, v5

    .line 423
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 438
    .end local v0           #diff:F
    .end local v5           #sizeId:I
    .end local v6           #standardSize:F
    :cond_2
    iget-object v7, p0, Lcom/htc/painting/penmenu/PenType;->mSizeMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .local v4, ret:F
    move p1, v4

    .line 443
    goto :goto_1
.end method

.method private setPenSizes([F)V
    .locals 3
    .parameter "sizes"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenType;->mSizeMap:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenType;->mSizeMap:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aget v2, p1, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenType;->mSizeMap:Ljava/util/Map;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenType;->mSizeMap:Ljava/util/Map;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aget v2, p1, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenType;->mSizeMap:Ljava/util/Map;

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aget v2, p1, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    return-void
.end method

.method private setSupportedColors([I)V
    .locals 0
    .parameter "colors"

    .prologue
    .line 347
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenType;->mSupportedColors:[I

    .line 348
    return-void
.end method


# virtual methods
.method public getBackgroud(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"

    .prologue
    .line 218
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenType;->mPen:Lcom/htc/painting/tool/pen/Pen;

    invoke-virtual {v2}, Lcom/htc/painting/tool/pen/Pen;->getPenProps()Lcom/htc/painting/tool/pen/ReadOnlyPenProps;

    move-result-object v0

    .line 219
    .local v0, properties:Lcom/htc/painting/tool/pen/ReadOnlyPenProps;
    const-string v2, "_background_resid"

    invoke-virtual {v0, v2}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 220
    .local v1, resId:I
    invoke-direct {p0, p1, v1}, Lcom/htc/painting/penmenu/PenType;->loadBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public getDefaultColor()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/htc/painting/penmenu/PenType;->mDefaultColor:I

    return v0
.end method

.method public getDefaultSize()F
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcom/htc/painting/penmenu/PenType;->mDefaultSize:F

    return v0
.end method

.method public getDisabledIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"

    .prologue
    .line 228
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenType;->mPen:Lcom/htc/painting/tool/pen/Pen;

    invoke-virtual {v2}, Lcom/htc/painting/tool/pen/Pen;->getPenProps()Lcom/htc/painting/tool/pen/ReadOnlyPenProps;

    move-result-object v0

    .line 229
    .local v0, properties:Lcom/htc/painting/tool/pen/ReadOnlyPenProps;
    const-string v2, "_pen_disable_image_resid"

    invoke-virtual {v0, v2}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 230
    .local v1, resId:I
    invoke-direct {p0, p1, v1}, Lcom/htc/painting/penmenu/PenType;->loadBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/htc/painting/penmenu/PenType;->mId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenType;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPen()Lcom/htc/painting/tool/pen/Pen;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenType;->mPen:Lcom/htc/painting/tool/pen/Pen;

    return-object v0
.end method

.method public getPenSize(I)F
    .locals 4
    .parameter "sizeId"

    .prologue
    .line 386
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenType;->mSizeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 387
    .local v0, ret:Ljava/lang/Float;
    if-nez v0, :cond_0

    .line 388
    const-string v1, "PenType"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPenSize - Can\'t find size related to sizeId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget v1, p0, Lcom/htc/painting/penmenu/PenType;->mDefaultSize:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 391
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1
.end method

.method public getPenSizeId(F)I
    .locals 6
    .parameter "size"

    .prologue
    .line 405
    sget-object v0, Lcom/htc/painting/penmenu/PenType;->PEN_SIZE_IDS:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget v2, v0, v1

    .line 406
    .local v2, id:I
    iget-object v4, p0, Lcom/htc/painting/penmenu/PenType;->mSizeMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v4, v4, p1

    if-nez v4, :cond_0

    .line 410
    .end local v2           #id:I
    :goto_1
    return v2

    .line 405
    .restart local v2       #id:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    .end local v2           #id:I
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public getThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"

    .prologue
    .line 208
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenType;->mPen:Lcom/htc/painting/tool/pen/Pen;

    invoke-virtual {v2}, Lcom/htc/painting/tool/pen/Pen;->getPenProps()Lcom/htc/painting/tool/pen/ReadOnlyPenProps;

    move-result-object v0

    .line 209
    .local v0, properties:Lcom/htc/painting/tool/pen/ReadOnlyPenProps;
    const-string v2, "_thumbnail_resid"

    invoke-virtual {v0, v2}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 210
    .local v1, resId:I
    invoke-direct {p0, p1, v1}, Lcom/htc/painting/penmenu/PenType;->loadBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public getUniqueName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenType;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenType;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isColorAdjustable()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/PenType;->mColorAdjustable:Z

    return v0
.end method

.method public isColorSupported(I)Z
    .locals 6
    .parameter "color"

    .prologue
    const/4 v4, 0x1

    .line 355
    iget-object v5, p0, Lcom/htc/painting/penmenu/PenType;->mSupportedColors:[I

    if-nez v5, :cond_1

    .line 364
    :cond_0
    :goto_0
    return v4

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenType;->mSupportedColors:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget v3, v0, v1

    .line 360
    .local v3, supportColor:I
    if-eq v3, p1, :cond_0

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 364
    .end local v3           #supportColor:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isDefaultPen()Z
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/PenType;->mIsDefaultPen:Z

    return v0
.end method

.method public isEraser()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/PenType;->mIsEraser:Z

    return v0
.end method

.method public isRenderSupplier()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/PenType;->mIsRenderSupplier:Z

    return v0
.end method

.method public isSimplePen()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/PenType;->mIsSimplePen:Z

    return v0
.end method

.method public isSizeAdjustable()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/PenType;->mSizeAdjustable:Z

    return v0
.end method
