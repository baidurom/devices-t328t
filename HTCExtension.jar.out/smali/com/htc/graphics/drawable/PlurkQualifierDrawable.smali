.class public Lcom/htc/graphics/drawable/PlurkQualifierDrawable;
.super Landroid/graphics/drawable/NinePatchDrawable;
.source "PlurkQualifierDrawable.java"


# static fields
.field private static final LOG_ENABLED:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PlurkQualifierDrawable"

.field private static final MARGIN_WIDTH:I = 0x4

.field private static final QUALIFIER_FORETEXT_COLOR:I = -0x1

.field private static sMarginHeight:I

.field private static sTextBoundLeft:I

.field private static sTextBoundRight:I


# instance fields
.field private mFontBounds:Landroid/graphics/Paint$FontMetricsInt;

.field private mFontDimension:F

.field private mFontXDimension:F

.field private mFontYDimension:F

.field private mIntrinsicBounds:Landroid/graphics/Rect;

.field private mText:Ljava/lang/String;

.field private mTextBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;F)V
    .locals 7
    .parameter "context"
    .parameter "bitmap"
    .parameter "text"
    .parameter "font_dimension"

    .prologue
    const/4 v5, 0x0

    .line 39
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;FFF)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;FFF)V
    .locals 8
    .parameter "context"
    .parameter "bitmap"
    .parameter "text"
    .parameter "font_dimension"
    .parameter "font_x_dimension"
    .parameter "font_y_dimension"

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Landroid/graphics/NinePatch;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p2, v3, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    invoke-direct {p0, v1, v2}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/NinePatch;)V

    .line 47
    iput-object p3, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mText:Ljava/lang/String;

    .line 48
    iput p4, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mFontDimension:F

    .line 49
    iput p5, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mFontXDimension:F

    .line 50
    iput p6, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mFontYDimension:F

    .line 51
    sput v6, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->sMarginHeight:I

    .line 52
    sput v5, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->sTextBoundLeft:I

    .line 53
    sput v6, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->sTextBoundRight:I

    .line 55
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 56
    .local v0, paint:Landroid/graphics/Paint;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 58
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    iget v1, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mFontDimension:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 60
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mFontBounds:Landroid/graphics/Paint$FontMetricsInt;

    .line 69
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mTextBounds:Landroid/graphics/Rect;

    .line 70
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p3, v5, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 77
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mTextBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sget v3, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->sTextBoundLeft:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mFontBounds:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sget v4, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->sMarginHeight:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mTextBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sget v5, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->sTextBoundRight:I

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mFontBounds:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sget v6, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->sMarginHeight:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mIntrinsicBounds:Landroid/graphics/Rect;

    .line 86
    iget-object v1, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mIntrinsicBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 87
    invoke-virtual {p0, v7}, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->setFilterBitmap(Z)V

    .line 88
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 98
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 99
    .local v0, paint:Landroid/graphics/Paint;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 101
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    iget v1, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mFontDimension:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 104
    iget-object v1, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mText:Ljava/lang/String;

    const/high16 v2, 0x4080

    iget v3, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mFontXDimension:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mFontYDimension:F

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 105
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mIntrinsicBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mIntrinsicBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mIntrinsicBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mIntrinsicBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0
.end method
