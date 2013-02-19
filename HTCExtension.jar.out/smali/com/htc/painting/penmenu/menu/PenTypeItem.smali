.class public Lcom/htc/painting/penmenu/menu/PenTypeItem;
.super Lcom/htc/painting/penmenu/menu/OptionItem;
.source "PenTypeItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PenTypeItem"


# instance fields
.field private final HISTORY_ICON_SIZE:I

.field private final OPTION_ICON_SIZE:I

.field private final PEN_WIDTH:I

.field private mBackground:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mInnerRadius:I

.field private mMostRecentConfig:Lcom/htc/painting/penmenu/Pen;

.field private mOuterRadius:I

.field private mPenType:Lcom/htc/painting/penmenu/PenType;

.field private mSuppoprtedMenuIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/painting/penmenu/menu/OptionItem;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->mSuppoprtedMenuIdList:Ljava/util/List;

    .line 39
    new-instance v0, Lcom/htc/painting/penmenu/Pen;

    const/high16 v1, -0x100

    const/16 v2, 0x9

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/painting/penmenu/Pen;-><init>(IILjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->mMostRecentConfig:Lcom/htc/painting/penmenu/Pen;

    .line 50
    iput-object p1, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->mContext:Landroid/content/Context;

    .line 52
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20e00c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->PEN_WIDTH:I

    .line 53
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20e00c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->OPTION_ICON_SIZE:I

    .line 54
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20e00c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->HISTORY_ICON_SIZE:I

    .line 55
    return-void
.end method

.method private getTrimedIcon(II)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "size"
    .parameter "colorToTint"

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    .line 186
    const/4 v2, 0x0

    .line 187
    .local v2, coloredIcon:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 188
    .local v0, canvas:Landroid/graphics/Canvas;
    iget-object v5, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 189
    iget-object v5, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 190
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 191
    iget-object v5, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->mBackground:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v8, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 194
    :cond_0
    iget-object v3, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mIcon:Landroid/graphics/Bitmap;

    .line 195
    .local v3, iconBmp:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_2

    .line 196
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 197
    .local v1, colorMatrix:Landroid/graphics/ColorMatrix;
    const/16 v5, 0x14

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v9, v5, v6

    aput v8, v5, v10

    const/4 v6, 0x2

    aput v8, v5, v6

    const/4 v6, 0x3

    aput v8, v5, v6

    const/4 v6, 0x4

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    const/4 v6, 0x5

    aput v8, v5, v6

    const/4 v6, 0x6

    aput v9, v5, v6

    const/4 v6, 0x7

    aput v8, v5, v6

    const/16 v6, 0x8

    aput v8, v5, v6

    const/16 v6, 0x9

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    const/16 v6, 0xa

    aput v8, v5, v6

    const/16 v6, 0xb

    aput v8, v5, v6

    const/16 v6, 0xc

    aput v9, v5, v6

    const/16 v6, 0xd

    aput v8, v5, v6

    const/16 v6, 0xe

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    const/16 v6, 0xf

    aput v8, v5, v6

    const/16 v6, 0x10

    aput v8, v5, v6

    const/16 v6, 0x11

    aput v8, v5, v6

    const/16 v6, 0x12

    aput v9, v5, v6

    const/16 v6, 0x13

    aput v8, v5, v6

    invoke-virtual {v1, v5}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 202
    iget-object v5, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->mBackground:Landroid/graphics/Bitmap;

    if-nez v5, :cond_1

    .line 203
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 204
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 206
    :cond_1
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 207
    .local v4, paint:Landroid/graphics/Paint;
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 208
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 209
    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 210
    invoke-virtual {v0, v3, v8, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 213
    .end local v1           #colorMatrix:Landroid/graphics/ColorMatrix;
    .end local v4           #paint:Landroid/graphics/Paint;
    :cond_2
    return-object v2
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 5
    .parameter "another"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 379
    if-nez p1, :cond_1

    .line 397
    :cond_0
    :goto_0
    return v1

    .line 382
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    .line 383
    goto :goto_0

    .line 386
    :cond_2
    instance-of v3, p1, Lcom/htc/painting/penmenu/menu/PenTypeItem;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 389
    check-cast v0, Lcom/htc/painting/penmenu/menu/PenTypeItem;

    .line 390
    .local v0, obj:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getPenType()Lcom/htc/painting/penmenu/PenType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/PenType;->getID()I

    move-result v3

    iget-object v4, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->mPenType:Lcom/htc/painting/penmenu/PenType;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu/PenType;->getID()I

    move-result v4

    if-ne v3, v4, :cond_3

    move v1, v2

    .line 391
    goto :goto_0

    .line 393
    :cond_3
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getPenType()Lcom/htc/painting/penmenu/PenType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/PenType;->getID()I

    move-result v2

    iget-object v3, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->mPenType:Lcom/htc/painting/penmenu/PenType;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/PenType;->getID()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 394
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public contain(DD)Z
    .locals 23
    .parameter "x"
    .parameter "y"

    .prologue
    .line 128
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->mInnerRadius:I

    .line 129
    .local v9, inner:I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->mOuterRadius:I

    .line 131
    .local v10, outer:I
    int-to-float v0, v10

    move/from16 v16, v0

    .line 132
    .local v16, width:F
    int-to-float v8, v10

    .line 133
    .local v8, height:F
    move-wide/from16 v0, p1

    double-to-float v0, v0

    move/from16 v17, v0

    sub-float v6, v16, v17

    .line 134
    .local v6, dx:F
    move-wide/from16 v0, p3

    double-to-float v0, v0

    move/from16 v17, v0

    sub-float v7, v8, v17

    .line 135
    .local v7, dy:F
    mul-float v17, v6, v6

    mul-float v18, v7, v7

    add-float v13, v17, v18

    .line 137
    .local v13, sqrR:F
    mul-int v17, v9, v9

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v17, v13

    if-gez v17, :cond_1

    mul-int v17, v10, v10

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v13, v17

    if-gez v17, :cond_1

    .line 138
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/painting/penmenu/menu/OptionItem;->mDegree:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    .line 139
    .local v11, radian:D
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v17, v0

    sub-double v17, v17, p1

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v14, v17, v19

    .line 140
    .local v14, sx:D
    float-to-double v0, v8

    move-wide/from16 v17, v0

    sub-double v17, v17, p3

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v2, v17, v19

    .line 148
    .local v2, cy:D
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v17, v0

    sub-double v17, v17, p1

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v17, v17, v19

    float-to-double v0, v8

    move-wide/from16 v19, v0

    sub-double v19, v19, p3

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    sub-double v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 149
    .local v4, d:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->PEN_WIDTH:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    cmpg-double v17, v4, v17

    if-gez v17, :cond_0

    .line 150
    const/16 v17, 0x1

    .line 162
    .end local v2           #cy:D
    .end local v4           #d:D
    .end local v11           #radian:D
    .end local v14           #sx:D
    :goto_0
    return v17

    .line 156
    .restart local v2       #cy:D
    .restart local v4       #d:D
    .restart local v11       #radian:D
    .restart local v14       #sx:D
    :cond_0
    const/16 v17, 0x0

    goto :goto_0

    .line 162
    .end local v2           #cy:D
    .end local v4           #d:D
    .end local v11           #radian:D
    .end local v14           #sx:D
    :cond_1
    const/16 v17, 0x0

    goto :goto_0
.end method

.method public getAnimFrame(JI)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "time"
    .parameter "colorToTint"

    .prologue
    .line 233
    iget-object v9, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->mMostRecentConfig:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v9}, Lcom/htc/painting/penmenu/Pen;->getColor()I

    move-result p3

    .line 235
    iget-wide v9, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mStartAnimTime:J

    sub-long v6, p1, v9

    .line 236
    .local v6, interval:J
    const/16 v1, 0x14

    .line 237
    .local v1, duration:I
    const/16 v3, 0xa

    .line 238
    .local v3, frameCount:I
    const/16 v9, 0xc8

    int-to-long v9, v9

    cmp-long v9, v6, v9

    if-ltz v9, :cond_0

    .line 239
    const/4 v2, 0x0

    .line 255
    :goto_0
    return-object v2

    .line 241
    :cond_0
    long-to-int v9, v6

    div-int v5, v9, v1

    .line 243
    .local v5, index:I
    iget v9, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->OPTION_ICON_SIZE:I

    invoke-direct {p0, v9, p3}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getTrimedIcon(II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 244
    .local v4, icon:Landroid/graphics/Bitmap;
    iget v9, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->OPTION_ICON_SIZE:I

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 245
    .local v2, frame:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 246
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 247
    const/4 v8, 0x0

    .line 248
    .local v8, left:F
    iget-boolean v9, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mFocus:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 249
    iget v9, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->OPTION_ICON_SIZE:I

    mul-int/2addr v9, v5

    int-to-float v9, v9

    int-to-float v10, v3

    div-float v8, v9, v10

    .line 253
    :goto_1
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v4, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 251
    :cond_1
    sub-int v9, v3, v5

    add-int/lit8 v9, v9, -0x1

    iget v10, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->OPTION_ICON_SIZE:I

    mul-int/2addr v9, v10

    int-to-float v9, v9

    int-to-float v10, v3

    div-float v8, v9, v10

    goto :goto_1
.end method

.method public getBasePanelIcon(II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "colorToTint"
    .parameter "size"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->mPenType:Lcom/htc/painting/penmenu/PenType;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu/PenType;->isColorSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->mPenType:Lcom/htc/painting/penmenu/PenType;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/PenType;->getDefaultColor()I

    move-result p1

    .line 182
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getTrimedIcon(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDisabledOptionIcon()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 304
    iget-object v3, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mDisabledIcon:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    move-object v1, v2

    .line 312
    :goto_0
    return-object v1

    .line 308
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 309
    .local v0, canvas:Landroid/graphics/Canvas;
    iget v3, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->OPTION_ICON_SIZE:I

    iget-object v4, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mDisabledIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 310
    .local v1, disabledIcon:Landroid/graphics/Bitmap;
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 311
    iget-object v3, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mDisabledIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getHistoryIcon(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "colorToTint"

    .prologue
    .line 170
    iget v0, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->HISTORY_ICON_SIZE:I

    invoke-direct {p0, v0, p1}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getTrimedIcon(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getMostRecentConfig()Lcom/htc/painting/penmenu/Pen;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->mMostRecentConfig:Lcom/htc/painting/penmenu/Pen;

    return-object v0
.end method

.method public getOptionIcon(I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "colorToTint"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 266
    iget-object v4, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->mMostRecentConfig:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu/Pen;->getColor()I

    move-result p1

    .line 268
    iget-object v4, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->mPenType:Lcom/htc/painting/penmenu/PenType;

    invoke-virtual {v4, p1}, Lcom/htc/painting/penmenu/PenType;->isColorSupported(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 269
    iget-object v4, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->mPenType:Lcom/htc/painting/penmenu/PenType;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu/PenType;->getDefaultColor()I

    move-result p1

    .line 272
    :cond_0
    iget-boolean v4, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mEnabled:Z

    if-nez v4, :cond_1

    .line 273
    iget v3, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->OPTION_ICON_SIZE:I

    .line 274
    .local v3, size:I
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 275
    .local v0, canvas:Landroid/graphics/Canvas;
    const/4 v1, 0x0

    .line 276
    .local v1, optionIcon:Landroid/graphics/Bitmap;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 277
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 279
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 280
    .local v2, paint:Landroid/graphics/Paint;
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 281
    const/16 v4, 0x5a

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 286
    iget v4, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->OPTION_ICON_SIZE:I

    invoke-direct {p0, v4, p1}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getTrimedIcon(II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v4, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 295
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #optionIcon:Landroid/graphics/Bitmap;
    .end local v2           #paint:Landroid/graphics/Paint;
    .end local v3           #size:I
    :goto_0
    return-object v1

    .line 291
    :cond_1
    iget-boolean v4, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mFocus:Z

    if-eq v4, v5, :cond_2

    iget-boolean v4, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mStartAnim:Z

    if-ne v4, v5, :cond_3

    .line 292
    :cond_2
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getDisabledOptionIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 295
    :cond_3
    iget v4, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->OPTION_ICON_SIZE:I

    invoke-direct {p0, v4, p1}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getTrimedIcon(II)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public getPenType()Lcom/htc/painting/penmenu/PenType;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->mPenType:Lcom/htc/painting/penmenu/PenType;

    return-object v0
.end method

.method public getRadiusDecreasement()I
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method public getRotateDegree()F
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mDegree:F

    return v0
.end method

.method public isPlayAnim(Z)Z
    .locals 1
    .parameter "focused"

    .prologue
    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method public isSupported(I)Z
    .locals 3
    .parameter "menuId"

    .prologue
    .line 338
    iget-object v2, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->mSuppoprtedMenuIdList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 339
    .local v0, i:Ljava/lang/Integer;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v2

    if-nez v2, :cond_0

    .line 340
    const/4 v2, 0x1

    .line 343
    .end local v0           #i:Ljava/lang/Integer;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 326
    invoke-super {p0}, Lcom/htc/painting/penmenu/menu/OptionItem;->release()V

    .line 327
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->mBackground:Landroid/graphics/Bitmap;

    .line 331
    :cond_0
    return-void
.end method

.method public setInnerRadius(I)V
    .locals 0
    .parameter "radius"

    .prologue
    .line 80
    iput p1, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->mInnerRadius:I

    .line 81
    return-void
.end method

.method public setMostRecentConfig(Lcom/htc/painting/penmenu/Pen;)V
    .locals 0
    .parameter "pen"

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 63
    iput-object p1, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->mMostRecentConfig:Lcom/htc/painting/penmenu/Pen;

    .line 65
    :cond_0
    return-void
.end method

.method public setOuterRadius(I)V
    .locals 0
    .parameter "radius"

    .prologue
    .line 88
    iput p1, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->mOuterRadius:I

    .line 89
    return-void
.end method

.method public setPenType(Lcom/htc/painting/penmenu/PenType;)V
    .locals 1
    .parameter "penType"

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 112
    :goto_0
    return-void

    .line 99
    :cond_0
    iput-object p1, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->mPenType:Lcom/htc/painting/penmenu/PenType;

    .line 100
    invoke-virtual {p1}, Lcom/htc/painting/penmenu/PenType;->getID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->setId(I)V

    .line 101
    invoke-virtual {p1}, Lcom/htc/painting/penmenu/PenType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->setName(Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->setSupported(I)V

    .line 103
    invoke-virtual {p1}, Lcom/htc/painting/penmenu/PenType;->isColorAdjustable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->setSupported(I)V

    .line 106
    :cond_1
    invoke-virtual {p1}, Lcom/htc/painting/penmenu/PenType;->isSizeAdjustable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->setSupported(I)V

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/htc/painting/penmenu/PenType;->getThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mIcon:Landroid/graphics/Bitmap;

    .line 110
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/htc/painting/penmenu/PenType;->getBackgroud(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->mBackground:Landroid/graphics/Bitmap;

    .line 111
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/htc/painting/penmenu/PenType;->getDisabledIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/penmenu/menu/OptionItem;->mDisabledIcon:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setSupported(I)V
    .locals 2
    .parameter "menuId"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/PenTypeItem;->mSuppoprtedMenuIdList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    return-void
.end method
