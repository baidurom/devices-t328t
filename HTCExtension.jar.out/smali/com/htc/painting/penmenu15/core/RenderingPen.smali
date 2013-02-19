.class public Lcom/htc/painting/penmenu15/core/RenderingPen;
.super Ljava/lang/Object;
.source "RenderingPen.java"

# interfaces
.implements Lcom/htc/painting/penmenu15/core/PenRepresentation;


# static fields
.field private static final SEPARATOR_TOKEN:Ljava/lang/String; = ","


# instance fields
.field private final CURRENT_PEN_ICON_SIZE:I

.field private final OPTION_ICON_SIZE:I

.field private mBackground:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mFocusedIcon:Landroid/graphics/Bitmap;

.field private mIcon:Landroid/graphics/Bitmap;

.field private mMostRecentConfig:Lcom/htc/painting/penmenu15/core/PenConfiguration;

.field private mObserver:Lcom/htc/painting/penmenu15/core/PenRepresentation$PenRepresentationObserver;

.field private final mPenType:Lcom/htc/painting/penmenu15/core/PenType;

.field private mUsedTime:J


# direct methods
.method public constructor <init>(Lcom/htc/painting/penmenu15/core/PenType;Landroid/content/Context;II)V
    .locals 4
    .parameter "pentype"
    .parameter "ctx"
    .parameter "optionIconSize"
    .parameter "curPenIconSize"

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mEnabled:Z

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mUsedTime:J

    .line 34
    iput-object v2, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mObserver:Lcom/htc/painting/penmenu15/core/PenRepresentation$PenRepresentationObserver;

    .line 35
    iput-object v2, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mContext:Landroid/content/Context;

    .line 40
    iput-object p1, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mPenType:Lcom/htc/painting/penmenu15/core/PenType;

    .line 41
    invoke-direct {p0, p2}, Lcom/htc/painting/penmenu15/core/RenderingPen;->updatePenTypeInfo(Landroid/content/Context;)V

    .line 42
    iput p3, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->OPTION_ICON_SIZE:I

    .line 43
    iput p4, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->CURRENT_PEN_ICON_SIZE:I

    .line 44
    new-instance v0, Lcom/htc/painting/penmenu15/core/PenConfiguration;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mPenType:Lcom/htc/painting/penmenu15/core/PenType;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/core/PenType;->getDefaultColor()I

    move-result v1

    iget-object v2, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mPenType:Lcom/htc/painting/penmenu15/core/PenType;

    iget-object v3, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mPenType:Lcom/htc/painting/penmenu15/core/PenType;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu15/core/PenType;->getDefaultSize()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu15/core/PenType;->getPenSizeId(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/htc/painting/penmenu15/core/PenConfiguration;-><init>(II)V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mMostRecentConfig:Lcom/htc/painting/penmenu15/core/PenConfiguration;

    .line 45
    return-void
.end method

.method private static copy(Lcom/htc/painting/penmenu15/core/RenderingPen;Lcom/htc/painting/penmenu15/core/RenderingPen;)V
    .locals 2
    .parameter "from"
    .parameter "to"

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mEnabled:Z

    iput-boolean v0, p1, Lcom/htc/painting/penmenu15/core/RenderingPen;->mEnabled:Z

    .line 212
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mFocusedIcon:Landroid/graphics/Bitmap;

    iput-object v0, p1, Lcom/htc/painting/penmenu15/core/RenderingPen;->mFocusedIcon:Landroid/graphics/Bitmap;

    .line 213
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mMostRecentConfig:Lcom/htc/painting/penmenu15/core/PenConfiguration;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/core/PenConfiguration;->clone()Lcom/htc/painting/penmenu15/core/PenConfiguration;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/painting/penmenu15/core/RenderingPen;->mMostRecentConfig:Lcom/htc/painting/penmenu15/core/PenConfiguration;

    .line 214
    iget-wide v0, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mUsedTime:J

    iput-wide v0, p1, Lcom/htc/painting/penmenu15/core/RenderingPen;->mUsedTime:J

    .line 215
    return-void
.end method

.method private getOptionIcon(II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "colorToTint"
    .parameter "iconSize"

    .prologue
    const/4 v5, 0x0

    .line 104
    iget-object v4, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mMostRecentConfig:Lcom/htc/painting/penmenu15/core/PenConfiguration;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu15/core/PenConfiguration;->getColor()I

    move-result p1

    .line 107
    iget-boolean v4, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mEnabled:Z

    if-nez v4, :cond_0

    .line 108
    move v3, p2

    .line 109
    .local v3, size:I
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 110
    .local v0, canvas:Landroid/graphics/Canvas;
    const/4 v1, 0x0

    .line 111
    .local v1, optionIcon:Landroid/graphics/Bitmap;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 114
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 115
    .local v2, paint:Landroid/graphics/Paint;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 116
    const/16 v4, 0x5a

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 118
    invoke-direct {p0, p2, p1}, Lcom/htc/painting/penmenu15/core/RenderingPen;->getTrimedIcon(II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v4, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 124
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #optionIcon:Landroid/graphics/Bitmap;
    .end local v2           #paint:Landroid/graphics/Paint;
    .end local v3           #size:I
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/htc/painting/penmenu15/core/RenderingPen;->getTrimedIcon(II)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method private getTrimedIcon(II)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "size"
    .parameter "colorToTint"

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x4334

    const/high16 v8, 0x3f80

    const/4 v7, 0x0

    .line 129
    const/4 v2, 0x0

    .line 130
    .local v2, coloredIcon:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 131
    .local v0, canvas:Landroid/graphics/Canvas;
    iget-object v4, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 132
    iget-object v4, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 133
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 134
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v0, v9, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 135
    iget-object v4, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mBackground:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v7, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 138
    :cond_0
    iget-object v4, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    .line 139
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 140
    .local v1, colorMatrix:Landroid/graphics/ColorMatrix;
    const/16 v4, 0x14

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v8, v4, v5

    aput v7, v4, v10

    const/4 v5, 0x2

    aput v7, v4, v5

    const/4 v5, 0x3

    aput v7, v4, v5

    const/4 v5, 0x4

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    const/4 v5, 0x5

    aput v7, v4, v5

    const/4 v5, 0x6

    aput v8, v4, v5

    const/4 v5, 0x7

    aput v7, v4, v5

    const/16 v5, 0x8

    aput v7, v4, v5

    const/16 v5, 0x9

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    const/16 v5, 0xa

    aput v7, v4, v5

    const/16 v5, 0xb

    aput v7, v4, v5

    const/16 v5, 0xc

    aput v8, v4, v5

    const/16 v5, 0xd

    aput v7, v4, v5

    const/16 v5, 0xe

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    const/16 v5, 0xf

    aput v7, v4, v5

    const/16 v5, 0x10

    aput v7, v4, v5

    const/16 v5, 0x11

    aput v7, v4, v5

    const/16 v5, 0x12

    aput v8, v4, v5

    const/16 v5, 0x13

    aput v7, v4, v5

    invoke-virtual {v1, v4}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 145
    iget-object v4, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mBackground:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    .line 146
    iget-object v4, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 147
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 148
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v0, v9, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 150
    :cond_1
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 151
    .local v3, paint:Landroid/graphics/Paint;
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 152
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 153
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 154
    iget-object v4, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4, v7, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 157
    .end local v1           #colorMatrix:Landroid/graphics/ColorMatrix;
    .end local v3           #paint:Landroid/graphics/Paint;
    :cond_2
    return-object v2
.end method

.method private notifyChange(Ljava/lang/String;Lcom/htc/painting/penmenu15/core/PenRepresentation;)V
    .locals 1
    .parameter "key"
    .parameter "before"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mObserver:Lcom/htc/painting/penmenu15/core/PenRepresentation$PenRepresentationObserver;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mObserver:Lcom/htc/painting/penmenu15/core/PenRepresentation$PenRepresentationObserver;

    invoke-interface {v0, p1, p2}, Lcom/htc/painting/penmenu15/core/PenRepresentation$PenRepresentationObserver;->onPenConfigChanged(Ljava/lang/String;Lcom/htc/painting/penmenu15/core/PenRepresentation;)V

    .line 303
    :cond_0
    return-void
.end method

.method private unmarkLastUsed()V
    .locals 2

    .prologue
    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mUsedTime:J

    .line 73
    return-void
.end method

.method private updatePenTypeInfo(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mPenType:Lcom/htc/painting/penmenu15/core/PenType;

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mPenType:Lcom/htc/painting/penmenu15/core/PenType;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu15/core/PenType;->getThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mIcon:Landroid/graphics/Bitmap;

    .line 81
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mPenType:Lcom/htc/painting/penmenu15/core/PenType;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu15/core/PenType;->getBackgroud(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mBackground:Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic clone(Landroid/content/Context;)Lcom/htc/painting/penmenu15/core/PenRepresentation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/htc/painting/penmenu15/core/RenderingPen;->clone(Landroid/content/Context;)Lcom/htc/painting/penmenu15/core/RenderingPen;

    move-result-object v0

    return-object v0
.end method

.method public clone(Landroid/content/Context;)Lcom/htc/painting/penmenu15/core/RenderingPen;
    .locals 4
    .parameter "ctx"

    .prologue
    .line 203
    new-instance v0, Lcom/htc/painting/penmenu15/core/RenderingPen;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mPenType:Lcom/htc/painting/penmenu15/core/PenType;

    iget v2, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->OPTION_ICON_SIZE:I

    iget v3, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->CURRENT_PEN_ICON_SIZE:I

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/htc/painting/penmenu15/core/RenderingPen;-><init>(Lcom/htc/painting/penmenu15/core/PenType;Landroid/content/Context;II)V

    .line 204
    .local v0, result:Lcom/htc/painting/penmenu15/core/RenderingPen;
    invoke-static {p0, v0}, Lcom/htc/painting/penmenu15/core/RenderingPen;->copy(Lcom/htc/painting/penmenu15/core/RenderingPen;Lcom/htc/painting/penmenu15/core/RenderingPen;)V

    .line 206
    return-object v0
.end method

.method public copyFrom(Lcom/htc/painting/penmenu15/core/PenRepresentation;)Z
    .locals 3
    .parameter "source"

    .prologue
    .line 285
    const/4 v0, 0x0

    .line 287
    .local v0, copyOK:Z
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/htc/painting/penmenu15/core/RenderingPen;

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/painting/penmenu15/core/RenderingPen;->samePenType(Lcom/htc/painting/penmenu15/core/PenRepresentation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    iget-object v2, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu15/core/RenderingPen;->clone(Landroid/content/Context;)Lcom/htc/painting/penmenu15/core/RenderingPen;

    move-result-object v1

    .line 291
    .local v1, old:Lcom/htc/painting/penmenu15/core/RenderingPen;
    check-cast p1, Lcom/htc/painting/penmenu15/core/RenderingPen;

    .end local p1
    invoke-static {p1, p0}, Lcom/htc/painting/penmenu15/core/RenderingPen;->copy(Lcom/htc/painting/penmenu15/core/RenderingPen;Lcom/htc/painting/penmenu15/core/RenderingPen;)V

    .line 292
    const/4 v0, 0x1

    .line 293
    const-string v2, "all"

    invoke-direct {p0, v2, v1}, Lcom/htc/painting/penmenu15/core/RenderingPen;->notifyChange(Ljava/lang/String;Lcom/htc/painting/penmenu15/core/PenRepresentation;)V

    .line 296
    .end local v1           #old:Lcom/htc/painting/penmenu15/core/RenderingPen;
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "other"

    .prologue
    .line 255
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/htc/painting/penmenu15/core/RenderingPen;

    if-eqz v0, :cond_0

    .line 256
    check-cast p1, Lcom/htc/painting/penmenu15/core/RenderingPen;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/painting/penmenu15/core/RenderingPen;->exactSamePen(Lcom/htc/painting/penmenu15/core/PenRepresentation;)Z

    move-result v0

    .line 258
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public exactSamePen(Lcom/htc/painting/penmenu15/core/PenRepresentation;)Z
    .locals 3
    .parameter "other"

    .prologue
    const/4 v0, 0x1

    .line 223
    if-ne p0, p1, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v0

    .line 224
    :cond_1
    if-eqz p1, :cond_2

    instance-of v1, p1, Lcom/htc/painting/penmenu15/core/RenderingPen;

    if-eqz v1, :cond_2

    .line 225
    invoke-virtual {p0, p1}, Lcom/htc/painting/penmenu15/core/RenderingPen;->samePenType(Lcom/htc/painting/penmenu15/core/PenRepresentation;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/core/RenderingPen;->getSize()I

    move-result v1

    invoke-interface {p1}, Lcom/htc/painting/penmenu15/core/PenRepresentation;->getSize()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/core/RenderingPen;->getColor()I

    move-result v1

    invoke-interface {p1}, Lcom/htc/painting/penmenu15/core/PenRepresentation;->getColor()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 231
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mMostRecentConfig:Lcom/htc/painting/penmenu15/core/PenConfiguration;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/core/PenConfiguration;->getColor()I

    move-result v0

    return v0
.end method

.method public getCurrentPenIcon()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mMostRecentConfig:Lcom/htc/painting/penmenu15/core/PenConfiguration;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/core/PenConfiguration;->getColor()I

    move-result v0

    iget v1, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->CURRENT_PEN_ICON_SIZE:I

    invoke-direct {p0, v0, v1}, Lcom/htc/painting/penmenu15/core/RenderingPen;->getOptionIcon(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getLastUsedTime()J
    .locals 2

    .prologue
    .line 276
    iget-wide v0, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mUsedTime:J

    return-wide v0
.end method

.method public getOptionIcon()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mMostRecentConfig:Lcom/htc/painting/penmenu15/core/PenConfiguration;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/core/PenConfiguration;->getColor()I

    move-result v0

    iget v1, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->OPTION_ICON_SIZE:I

    invoke-direct {p0, v0, v1}, Lcom/htc/painting/penmenu15/core/RenderingPen;->getOptionIcon(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getPenType()Lcom/htc/painting/penmenu15/core/PenType;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mPenType:Lcom/htc/painting/penmenu15/core/PenType;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/core/RenderingPen;->getPenType()Lcom/htc/painting/penmenu15/core/PenType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/core/PenType;->isHighlighter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const/16 v0, 0x28

    .line 168
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mMostRecentConfig:Lcom/htc/painting/penmenu15/core/PenConfiguration;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/core/PenConfiguration;->getSize()I

    move-result v0

    goto :goto_0
.end method

.method public markLastUsed(J)V
    .locals 0
    .parameter "usedTime"

    .prologue
    .line 267
    iput-wide p1, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mUsedTime:J

    .line 268
    return-void
.end method

.method public samePenType(Lcom/htc/painting/penmenu15/core/PenRepresentation;)Z
    .locals 3
    .parameter "other"

    .prologue
    const/4 v0, 0x1

    .line 239
    if-ne p0, p1, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v0

    .line 240
    :cond_1
    if-eqz p1, :cond_2

    instance-of v1, p1, Lcom/htc/painting/penmenu15/core/RenderingPen;

    if-eqz v1, :cond_2

    .line 241
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/core/RenderingPen;->getPenType()Lcom/htc/painting/penmenu15/core/PenType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/core/PenType;->getUniqueName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/htc/painting/penmenu15/core/PenRepresentation;->getPenType()Lcom/htc/painting/penmenu15/core/PenType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/painting/penmenu15/core/PenType;->getUniqueName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 52
    iget-object v1, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/htc/painting/penmenu15/core/RenderingPen;->clone(Landroid/content/Context;)Lcom/htc/painting/penmenu15/core/RenderingPen;

    move-result-object v0

    .line 54
    .local v0, old:Lcom/htc/painting/penmenu15/core/RenderingPen;
    iget-object v1, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mMostRecentConfig:Lcom/htc/painting/penmenu15/core/PenConfiguration;

    invoke-virtual {v1, p1}, Lcom/htc/painting/penmenu15/core/PenConfiguration;->setColor(I)V

    .line 55
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/core/RenderingPen;->unmarkLastUsed()V

    .line 56
    const-string v1, "color"

    invoke-direct {p0, v1, v0}, Lcom/htc/painting/penmenu15/core/RenderingPen;->notifyChange(Ljava/lang/String;Lcom/htc/painting/penmenu15/core/PenRepresentation;)V

    .line 57
    return-void
.end method

.method public setObserver(Lcom/htc/painting/penmenu15/core/PenRepresentation$PenRepresentationObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 311
    iput-object p1, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mObserver:Lcom/htc/painting/penmenu15/core/PenRepresentation$PenRepresentationObserver;

    .line 312
    return-void
.end method

.method public setPenSize(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 64
    iget-object v1, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/htc/painting/penmenu15/core/RenderingPen;->clone(Landroid/content/Context;)Lcom/htc/painting/penmenu15/core/RenderingPen;

    move-result-object v0

    .line 66
    .local v0, old:Lcom/htc/painting/penmenu15/core/RenderingPen;
    iget-object v1, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mMostRecentConfig:Lcom/htc/painting/penmenu15/core/PenConfiguration;

    invoke-virtual {v1, p1}, Lcom/htc/painting/penmenu15/core/PenConfiguration;->setSize(I)V

    .line 67
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/core/RenderingPen;->unmarkLastUsed()V

    .line 68
    const-string v1, "size"

    invoke-direct {p0, v1, v0}, Lcom/htc/painting/penmenu15/core/RenderingPen;->notifyChange(Ljava/lang/String;Lcom/htc/painting/penmenu15/core/PenRepresentation;)V

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mMostRecentConfig:Lcom/htc/painting/penmenu15/core/PenConfiguration;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/core/PenConfiguration;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mMostRecentConfig:Lcom/htc/painting/penmenu15/core/PenConfiguration;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/core/PenConfiguration;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/painting/penmenu15/core/RenderingPen;->mPenType:Lcom/htc/painting/penmenu15/core/PenType;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/core/PenType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
