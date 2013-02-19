.class public Lcom/htc/painting/penmenu15/core/PenType;
.super Ljava/lang/Object;
.source "PenType.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PenType"

.field private static colorOptions:[I


# instance fields
.field private mColorAdjustable:Z

.field private mDefaultColor:I

.field private mDefaultSize:F

.field private mId:I

.field private mIsDefaultPen:Z

.field private mIsEraser:Z

.field private mIsHighlighter:Z

.field private mIsRenderSupplier:Z

.field private mIsSimplePen:Z

.field private mName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mRawPen:Lcom/htc/painting/tool/pen/Pen;

.field private mSizeAdjustable:Z

.field private mSizeMax:F

.field private mSizeMin:F

.field private mSupportedColors:[I


# direct methods
.method public constructor <init>(Lcom/htc/painting/tool/pen/Pen;Landroid/content/Context;)V
    .locals 7
    .parameter "pen"
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 115
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/htc/painting/penmenu15/core/PenType;->mRawPen:Lcom/htc/painting/tool/pen/Pen;

    .line 117
    invoke-virtual {p1}, Lcom/htc/painting/tool/pen/Pen;->getId()I

    move-result v3

    iput v3, p0, Lcom/htc/painting/penmenu15/core/PenType;->mId:I

    .line 118
    invoke-virtual {p1}, Lcom/htc/painting/tool/pen/Pen;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/painting/penmenu15/core/PenType;->mName:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Lcom/htc/painting/tool/pen/Pen;->getAppPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/painting/penmenu15/core/PenType;->mPackageName:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Lcom/htc/painting/tool/pen/Pen;->getPenProps()Lcom/htc/painting/tool/pen/ReadOnlyPenProps;

    move-result-object v1

    .line 123
    .local v1, properties:Lcom/htc/painting/tool/pen/ReadOnlyPenProps;
    const-string v3, "_flags"

    invoke-virtual {v1, v3}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 124
    .local v0, flag:I
    and-int/lit8 v3, v0, 0x1

    if-ne v3, v4, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/htc/painting/penmenu15/core/PenType;->mIsEraser:Z

    .line 125
    and-int/lit8 v3, v0, 0x10

    const/16 v6, 0x10

    if-ne v3, v6, :cond_1

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/htc/painting/penmenu15/core/PenType;->mIsHighlighter:Z

    .line 126
    and-int/lit8 v3, v0, 0x2

    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/htc/painting/penmenu15/core/PenType;->mIsSimplePen:Z

    .line 127
    and-int/lit8 v3, v0, 0x8

    const/16 v6, 0x8

    if-ne v3, v6, :cond_3

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/htc/painting/penmenu15/core/PenType;->mIsDefaultPen:Z

    .line 128
    and-int/lit8 v3, v0, 0x4

    const/4 v6, 0x4

    if-ne v3, v6, :cond_4

    :goto_4
    iput-boolean v4, p0, Lcom/htc/painting/penmenu15/core/PenType;->mIsRenderSupplier:Z

    .line 130
    const-string v3, "_color_adjustable"

    invoke-virtual {v1, v3}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/painting/penmenu15/core/PenType;->mColorAdjustable:Z

    .line 131
    const-string v3, "_supported_color_array"

    invoke-virtual {v1, v3}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 132
    .local v2, supportedColors:[I
    invoke-direct {p0, v2}, Lcom/htc/painting/penmenu15/core/PenType;->setSupportedColors([I)V

    .line 133
    const-string v3, "_color_default"

    invoke-virtual {v1, v3}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3, p2}, Lcom/htc/painting/penmenu15/core/PenType;->mapToColorOptions(ILandroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/htc/painting/penmenu15/core/PenType;->mDefaultColor:I

    .line 135
    const-string v3, "_width_adjustable"

    invoke-virtual {v1, v3}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/painting/penmenu15/core/PenType;->mSizeAdjustable:Z

    .line 137
    const/16 v3, 0x1f5

    invoke-static {p2, v3}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getPropertyDimen(Landroid/content/Context;I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/htc/painting/penmenu15/core/PenType;->mSizeMax:F

    .line 138
    const/16 v3, 0x1f4

    invoke-static {p2, v3}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getPropertyDimen(Landroid/content/Context;I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/htc/painting/penmenu15/core/PenType;->mSizeMin:F

    .line 140
    const-string v3, "_width_default"

    invoke-virtual {v1, v3}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/htc/painting/penmenu15/core/PenType;->mDefaultSize:F

    .line 143
    const-string v3, "PenType"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pen id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/painting/penmenu15/core/PenType;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/painting/penmenu15/core/PenType;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/painting/penmenu15/core/PenType;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isEraser: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/painting/penmenu15/core/PenType;->mIsEraser:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isSimplePen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/painting/penmenu15/core/PenType;->mIsSimplePen:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", default size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/painting/penmenu15/core/PenType;->mDefaultSize:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", defaulot color: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/painting/penmenu15/core/PenType;->mDefaultColor:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void

    .end local v2           #supportedColors:[I
    :cond_0
    move v3, v5

    .line 124
    goto/16 :goto_0

    :cond_1
    move v3, v5

    .line 125
    goto/16 :goto_1

    :cond_2
    move v3, v5

    .line 126
    goto/16 :goto_2

    :cond_3
    move v3, v5

    .line 127
    goto/16 :goto_3

    :cond_4
    move v4, v5

    .line 128
    goto/16 :goto_4
.end method

.method private getIcon(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 188
    .local v0, icon:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public static getPenTypeList(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/tool/pen/Pen;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/core/PenType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/tool/pen/Pen;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v2, result:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/core/PenType;>;"
    if-eqz p0, :cond_0

    .line 154
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/tool/pen/Pen;

    .line 155
    .local v1, pen:Lcom/htc/painting/tool/pen/Pen;
    new-instance v3, Lcom/htc/painting/penmenu15/core/PenType;

    invoke-direct {v3, v1, p1}, Lcom/htc/painting/penmenu15/core/PenType;-><init>(Lcom/htc/painting/tool/pen/Pen;Landroid/content/Context;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #pen:Lcom/htc/painting/tool/pen/Pen;
    :cond_0
    return-object v2
.end method

.method private loadBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 171
    .local v1, packageContext:Landroid/content/Context;
    :try_start_0
    iget-object v3, p0, Lcom/htc/painting/penmenu15/core/PenType;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 175
    :goto_0
    const/4 v2, 0x0

    .line 176
    .local v2, ret:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 177
    if-eqz p2, :cond_0

    .line 178
    invoke-direct {p0, v1, p2}, Lcom/htc/painting/penmenu15/core/PenType;->getIcon(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 182
    :cond_0
    return-object v2

    .line 172
    .end local v2           #ret:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 173
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

    invoke-static {v3, v4}, Lcom/htc/painting/penmenu15/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private mapToColorOptions(ILandroid/content/Context;)I
    .locals 9
    .parameter "color"
    .parameter "context"

    .prologue
    .line 413
    sget-object v6, Lcom/htc/painting/penmenu15/core/PenType;->colorOptions:[I

    if-nez v6, :cond_1

    .line 414
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 415
    .local v4, res:Landroid/content/res/Resources;
    const v6, 0x2070015

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 416
    .local v0, colors:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    new-array v6, v6, [I

    sput-object v6, Lcom/htc/painting/penmenu15/core/PenType;->colorOptions:[I

    .line 417
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 418
    sget-object v6, Lcom/htc/painting/penmenu15/core/PenType;->colorOptions:[I

    const/high16 v7, -0x100

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    aput v7, v6, v1

    .line 417
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 420
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 423
    .end local v0           #colors:Landroid/content/res/TypedArray;
    .end local v1           #i:I
    .end local v4           #res:Landroid/content/res/Resources;
    :cond_1
    sget-object v6, Lcom/htc/painting/penmenu15/core/PenType;->colorOptions:[I

    const/4 v7, 0x0

    aget v5, v6, v7

    .line 426
    .local v5, ret:I
    const/4 v2, 0x0

    .line 427
    .local v2, matched:Z
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    sget-object v6, Lcom/htc/painting/penmenu15/core/PenType;->colorOptions:[I

    array-length v6, v6

    if-ge v1, v6, :cond_2

    .line 428
    sget-object v6, Lcom/htc/painting/penmenu15/core/PenType;->colorOptions:[I

    aget v3, v6, v1

    .line 429
    .local v3, optionColor:I
    if-ne p1, v3, :cond_5

    .line 430
    move v5, p1

    .line 431
    const/4 v2, 0x1

    .line 436
    .end local v3           #optionColor:I
    :cond_2
    if-nez v2, :cond_4

    .line 439
    const/4 v1, 0x0

    :goto_2
    sget-object v6, Lcom/htc/painting/penmenu15/core/PenType;->colorOptions:[I

    array-length v6, v6

    if-ge v1, v6, :cond_3

    .line 440
    sget-object v6, Lcom/htc/painting/penmenu15/core/PenType;->colorOptions:[I

    aget v6, v6, v1

    invoke-virtual {p0, v6}, Lcom/htc/painting/penmenu15/core/PenType;->isColorSupported(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 441
    sget-object v6, Lcom/htc/painting/penmenu15/core/PenType;->colorOptions:[I

    aget v5, v6, v1

    .line 442
    const/4 v2, 0x1

    .line 447
    :cond_3
    if-eqz v2, :cond_7

    .line 449
    const-string v6, "PenType"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mapToColorOptions - can\'t map default color("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") to color options, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "use first supported color("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") instead."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_4
    :goto_3
    return v5

    .line 427
    .restart local v3       #optionColor:I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 439
    .end local v3           #optionColor:I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 455
    :cond_7
    const-string v6, "PenType"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mapToColorOptions - can\'t map default color("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") to color options, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "and no supported colors matched color options, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "use first color option ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") instead."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private setSupportedColors([I)V
    .locals 0
    .parameter "colors"

    .prologue
    .line 350
    iput-object p1, p0, Lcom/htc/painting/penmenu15/core/PenType;->mSupportedColors:[I

    .line 351
    return-void
.end method


# virtual methods
.method public getBackgroud(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"

    .prologue
    .line 206
    iget-object v2, p0, Lcom/htc/painting/penmenu15/core/PenType;->mRawPen:Lcom/htc/painting/tool/pen/Pen;

    invoke-virtual {v2}, Lcom/htc/painting/tool/pen/Pen;->getPenProps()Lcom/htc/painting/tool/pen/ReadOnlyPenProps;

    move-result-object v0

    .line 207
    .local v0, properties:Lcom/htc/painting/tool/pen/ReadOnlyPenProps;
    const-string v2, "_background_resid"

    invoke-virtual {v0, v2}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 208
    .local v1, resId:I
    invoke-direct {p0, p1, v1}, Lcom/htc/painting/penmenu15/core/PenType;->loadBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public getDefaultColor()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/htc/painting/penmenu15/core/PenType;->mDefaultColor:I

    return v0
.end method

.method public getDefaultSize()F
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lcom/htc/painting/penmenu15/core/PenType;->mDefaultSize:F

    return v0
.end method

.method public getDisabledIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"

    .prologue
    .line 216
    iget-object v2, p0, Lcom/htc/painting/penmenu15/core/PenType;->mRawPen:Lcom/htc/painting/tool/pen/Pen;

    invoke-virtual {v2}, Lcom/htc/painting/tool/pen/Pen;->getPenProps()Lcom/htc/painting/tool/pen/ReadOnlyPenProps;

    move-result-object v0

    .line 217
    .local v0, properties:Lcom/htc/painting/tool/pen/ReadOnlyPenProps;
    const-string v2, "_pen_disable_image_resid"

    invoke-virtual {v0, v2}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 218
    .local v1, resId:I
    invoke-direct {p0, p1, v1}, Lcom/htc/painting/penmenu15/core/PenType;->loadBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/htc/painting/penmenu15/core/PenType;->mId:I

    return v0
.end method

.method public getMaxSize()F
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Lcom/htc/painting/penmenu15/core/PenType;->mSizeMax:F

    return v0
.end method

.method public getMinSize()F
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/htc/painting/penmenu15/core/PenType;->mSizeMin:F

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/PenType;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPenSizeId(F)I
    .locals 1
    .parameter "size"

    .prologue
    .line 399
    float-to-int v0, p1

    return v0
.end method

.method public getRawPen()Lcom/htc/painting/tool/pen/Pen;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/PenType;->mRawPen:Lcom/htc/painting/tool/pen/Pen;

    return-object v0
.end method

.method public getThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"

    .prologue
    .line 196
    iget-object v2, p0, Lcom/htc/painting/penmenu15/core/PenType;->mRawPen:Lcom/htc/painting/tool/pen/Pen;

    invoke-virtual {v2}, Lcom/htc/painting/tool/pen/Pen;->getPenProps()Lcom/htc/painting/tool/pen/ReadOnlyPenProps;

    move-result-object v0

    .line 197
    .local v0, properties:Lcom/htc/painting/tool/pen/ReadOnlyPenProps;
    const-string v2, "_thumbnail_resid"

    invoke-virtual {v0, v2}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 198
    .local v1, resId:I
    invoke-direct {p0, p1, v1}, Lcom/htc/painting/penmenu15/core/PenType;->loadBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public getUniqueName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/painting/penmenu15/core/PenType;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/painting/penmenu15/core/PenType;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isColorAdjustable()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/htc/painting/penmenu15/core/PenType;->mColorAdjustable:Z

    return v0
.end method

.method public isColorSupported(I)Z
    .locals 6
    .parameter "color"

    .prologue
    const/4 v4, 0x1

    .line 358
    iget-object v5, p0, Lcom/htc/painting/penmenu15/core/PenType;->mSupportedColors:[I

    if-nez v5, :cond_1

    .line 367
    :cond_0
    :goto_0
    return v4

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/PenType;->mSupportedColors:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget v3, v0, v1

    .line 363
    .local v3, supportColor:I
    if-eq v3, p1, :cond_0

    .line 362
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 367
    .end local v3           #supportColor:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isDefaultPen()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/htc/painting/penmenu15/core/PenType;->mIsDefaultPen:Z

    return v0
.end method

.method public isEraser()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/htc/painting/penmenu15/core/PenType;->mIsEraser:Z

    return v0
.end method

.method public isHighlighter()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/htc/painting/penmenu15/core/PenType;->mIsHighlighter:Z

    return v0
.end method

.method public isRenderSupplier()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/htc/painting/penmenu15/core/PenType;->mIsRenderSupplier:Z

    return v0
.end method

.method public isSimplePen()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/htc/painting/penmenu15/core/PenType;->mIsSimplePen:Z

    return v0
.end method

.method public isSizeAdjustable()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/htc/painting/penmenu15/core/PenType;->mSizeAdjustable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/painting/penmenu15/core/PenType;->mRawPen:Lcom/htc/painting/tool/pen/Pen;

    invoke-virtual {v2}, Lcom/htc/painting/tool/pen/Pen;->getAppPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/painting/penmenu15/core/PenType;->mRawPen:Lcom/htc/painting/tool/pen/Pen;

    invoke-virtual {v2}, Lcom/htc/painting/tool/pen/Pen;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, str:Ljava/lang/String;
    return-object v0
.end method
