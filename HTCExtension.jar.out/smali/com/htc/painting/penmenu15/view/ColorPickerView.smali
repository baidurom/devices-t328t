.class public Lcom/htc/painting/penmenu15/view/ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerView.java"

# interfaces
.implements Lcom/htc/painting/penmenu15/view/Scrollable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/penmenu15/view/ColorPickerView$OnColorChangedListener;
    }
.end annotation


# static fields
.field private static final PI:F = 3.1415925f

.field private static final TAG:Ljava/lang/String; = "PenMenuNew"


# instance fields
.field private final CENTER_X:I

.field private final CENTER_Y:I

.field private final PENMENU_WIDTH:I

.field private final SLIDER_HEIGHT:I

.field private final SLIDER_WIDTH:I

.field private final SPECTRUM_INNER_RADIUS:I

.field private final SPECTRUM_MEDIUM_DIST:I

.field private final SPECTRUM_OUTER_RADIUS:I

.field private final SWATCH_HEIGHT:I

.field private final SWATCH_HEIGHT_OFFSET:I

.field private final SWATCH_RADIUS:I

.field private final SWATCH_SHADOW_WIDTH:I

.field private final SWATCH_WIDTH:I

.field private mColor:I

.field private mColorBackBmp:Landroid/graphics/Bitmap;

.field private mDefaultSwatchColor:[[I

.field private mDragColorMonitor:Lcom/htc/painting/penmenu15/PenMenu$DragColorMonitor;

.field private mHSV:[F

.field private mListener:Lcom/htc/painting/penmenu15/view/ColorPickerView$OnColorChangedListener;

.field private mMarkerIndex:I

.field private mPosMarker:Landroid/graphics/Paint;

.field private mSatSliderBM:Landroid/graphics/Bitmap;

.field private mSatSliderCv:Landroid/graphics/Canvas;

.field private final mSwatchNum:I

.field private mSwatchPaint:[Landroid/graphics/Paint;

.field private mSwatchShadowBmp:Landroid/graphics/Bitmap;

.field private mTrackCord:[F

.field private mTracking:Z

.field private mValSliderBM:Landroid/graphics/Bitmap;

.field private mValSliderCv:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "c"

    .prologue
    const/4 v5, 0x3

    .line 88
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 71
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mHSV:[F

    .line 74
    const/16 v1, 0xa

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_SHADOW_WIDTH:I

    .line 82
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mMarkerIndex:I

    .line 85
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mTrackCord:[F

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 93
    .local v0, res:Landroid/content/res/Resources;
    const/16 v1, 0x38

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_WIDTH:I

    .line 94
    const/16 v1, 0x16

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_HEIGHT:I

    .line 95
    const/4 v1, 0x4

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_HEIGHT_OFFSET:I

    .line 97
    const/16 v1, 0x30e

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_INNER_RADIUS:I

    .line 98
    iget v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_INNER_RADIUS:I

    add-int/lit8 v1, v1, 0x52

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_OUTER_RADIUS:I

    .line 99
    iget v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_OUTER_RADIUS:I

    iget v2, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_INNER_RADIUS:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_MEDIUM_DIST:I

    .line 101
    iget v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_OUTER_RADIUS:I

    iget v2, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_HEIGHT:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_HEIGHT_OFFSET:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_RADIUS:I

    .line 102
    iget v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_RADIUS:I

    iget v2, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_RADIUS:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0

    add-double/2addr v1, v3

    double-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->PENMENU_WIDTH:I

    .line 110
    iget v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->PENMENU_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->CENTER_X:I

    .line 111
    iget v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->PENMENU_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->CENTER_Y:I

    .line 113
    iget v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_MEDIUM_DIST:I

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SLIDER_HEIGHT:I

    .line 114
    iput v5, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SLIDER_WIDTH:I

    .line 115
    const/16 v1, 0xc

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mSwatchNum:I

    .line 119
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/ColorPickerView;->init(Landroid/content/Context;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x3

    .line 123
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mHSV:[F

    .line 74
    const/16 v1, 0xa

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_SHADOW_WIDTH:I

    .line 82
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mMarkerIndex:I

    .line 85
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mTrackCord:[F

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 127
    .local v0, res:Landroid/content/res/Resources;
    const/16 v1, 0x38

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_WIDTH:I

    .line 128
    const/16 v1, 0x16

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_HEIGHT:I

    .line 129
    const/4 v1, 0x4

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_HEIGHT_OFFSET:I

    .line 131
    const/16 v1, 0x30e

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_INNER_RADIUS:I

    .line 132
    iget v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_INNER_RADIUS:I

    add-int/lit8 v1, v1, 0x52

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_OUTER_RADIUS:I

    .line 133
    iget v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_OUTER_RADIUS:I

    iget v2, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_INNER_RADIUS:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_MEDIUM_DIST:I

    .line 135
    iget v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_OUTER_RADIUS:I

    iget v2, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_HEIGHT:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_HEIGHT_OFFSET:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_RADIUS:I

    .line 136
    iget v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_RADIUS:I

    iget v2, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_RADIUS:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0

    add-double/2addr v1, v3

    double-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->PENMENU_WIDTH:I

    .line 144
    iget v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->PENMENU_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->CENTER_X:I

    .line 145
    iget v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->PENMENU_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->CENTER_Y:I

    .line 147
    iget v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_MEDIUM_DIST:I

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SLIDER_HEIGHT:I

    .line 148
    iput v5, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SLIDER_WIDTH:I

    .line 149
    const/16 v1, 0xc

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mSwatchNum:I

    .line 152
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/ColorPickerView;->init(Landroid/content/Context;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x3

    .line 156
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mHSV:[F

    .line 74
    const/16 v1, 0xa

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_SHADOW_WIDTH:I

    .line 82
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mMarkerIndex:I

    .line 85
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mTrackCord:[F

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 160
    .local v0, res:Landroid/content/res/Resources;
    const/16 v1, 0x38

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_WIDTH:I

    .line 161
    const/16 v1, 0x16

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_HEIGHT:I

    .line 162
    const/4 v1, 0x4

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_HEIGHT_OFFSET:I

    .line 164
    const/16 v1, 0x30e

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_INNER_RADIUS:I

    .line 165
    iget v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_INNER_RADIUS:I

    add-int/lit8 v1, v1, 0x52

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_OUTER_RADIUS:I

    .line 166
    iget v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_OUTER_RADIUS:I

    iget v2, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_INNER_RADIUS:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_MEDIUM_DIST:I

    .line 168
    iget v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_OUTER_RADIUS:I

    iget v2, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_HEIGHT:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_HEIGHT_OFFSET:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_RADIUS:I

    .line 169
    iget v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_RADIUS:I

    iget v2, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_RADIUS:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0

    add-double/2addr v1, v3

    double-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->PENMENU_WIDTH:I

    .line 177
    iget v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->PENMENU_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->CENTER_X:I

    .line 178
    iget v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->PENMENU_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->CENTER_Y:I

    .line 180
    iget v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_MEDIUM_DIST:I

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SLIDER_HEIGHT:I

    .line 181
    iput v5, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SLIDER_WIDTH:I

    .line 182
    const/16 v1, 0xc

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mSwatchNum:I

    .line 185
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/ColorPickerView;->init(Landroid/content/Context;)V

    .line 186
    return-void
.end method

.method private checkHightlightFocusSwatch(FF)I
    .locals 1
    .parameter "unit"
    .parameter "distance"

    .prologue
    .line 519
    invoke-direct {p0, p1, p2}, Lcom/htc/painting/penmenu15/view/ColorPickerView;->getSwatchIndex(FF)I

    move-result v0

    .line 522
    .local v0, index:I
    return v0
.end method

.method private getSwatchIndex(FF)I
    .locals 8
    .parameter "unit"
    .parameter "distance"

    .prologue
    const-wide v6, 0x3fb47ae147ae147bL

    .line 492
    const/4 v0, -0x1

    .line 494
    .local v0, index:I
    float-to-double v2, p1

    cmpl-double v2, v2, v6

    if-ltz v2, :cond_0

    float-to-double v2, p1

    const-wide v4, 0x3fdae147ae147ae1L

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_0

    .line 495
    const/4 v2, -0x1

    .line 506
    :goto_0
    return v2

    .line 496
    :cond_0
    float-to-double v2, p1

    cmpg-double v2, v2, v6

    if-gtz v2, :cond_1

    .line 497
    const/high16 v2, 0x3f80

    add-float/2addr p1, v2

    .line 499
    :cond_1
    const v2, 0x3f28f5c4

    iget v3, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mSwatchNum:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 500
    .local v1, interval:F
    const v2, 0x3ed70a3d

    sub-float v2, p1, v2

    div-float/2addr v2, v1

    float-to-int v0, v2

    .line 503
    if-ltz v0, :cond_2

    iget v2, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mSwatchNum:I

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_3

    .line 504
    :cond_2
    const/4 v0, -0x1

    :cond_3
    move v2, v0

    .line 506
    goto :goto_0
.end method

.method private hightlightFocusSwatch(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 367
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 368
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_WIDTH:I

    iget v2, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_HEIGHT:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 369
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 370
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_WIDTH:I

    add-int/lit8 v1, v1, -0x2

    iget v2, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_HEIGHT:I

    add-int/lit8 v2, v2, -0x2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 372
    return-void
.end method

.method private htcInterpColor(FF)I
    .locals 9
    .parameter "unit"
    .parameter "distance"

    .prologue
    .line 451
    const/4 v5, 0x3

    new-array v2, v5, [F

    .line 452
    .local v2, hsv:[F
    const/4 v1, 0x0

    .line 453
    .local v1, h:F
    const/high16 v3, 0x3f80

    .line 454
    .local v3, s:F
    const/high16 v4, 0x3f80

    .line 456
    .local v4, v:F
    iget v5, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_INNER_RADIUS:I

    int-to-float v5, v5

    cmpg-float v5, p2, v5

    if-gez v5, :cond_0

    .line 457
    iget v5, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mColor:I

    .line 488
    :goto_0
    return v5

    .line 458
    :cond_0
    iget v5, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_OUTER_RADIUS:I

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-lez v5, :cond_1

    .line 459
    iget v5, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mColor:I

    goto :goto_0

    .line 461
    :cond_1
    float-to-double v5, p1

    const-wide v7, 0x3fb47ae147ae147bL

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_2

    float-to-double v5, p1

    const-wide v7, 0x3fdae147ae147ae1L

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_2

    .line 462
    iget v5, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mColor:I

    goto :goto_0

    .line 463
    :cond_2
    float-to-double v5, p1

    const-wide v7, 0x3fb47ae147ae147bL

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_3

    .line 464
    const/high16 v5, 0x3f80

    add-float/2addr p1, v5

    .line 467
    :cond_3
    const v5, 0x3ed70a3d

    sub-float v5, p1, v5

    const v6, 0x3f28f5c2

    div-float/2addr v5, v6

    const/high16 v6, 0x43b4

    mul-float v1, v5, v6

    .line 470
    iget v5, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_INNER_RADIUS:I

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_5

    iget v5, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_INNER_RADIUS:I

    iget v6, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_MEDIUM_DIST:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_5

    .line 471
    iget v5, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_INNER_RADIUS:I

    int-to-float v5, v5

    sub-float v5, p2, v5

    iget v6, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_MEDIUM_DIST:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 476
    :cond_4
    :goto_1
    const/4 v5, 0x0

    aput v1, v2, v5

    .line 477
    const/4 v5, 0x1

    aput v3, v2, v5

    .line 478
    const/4 v5, 0x2

    aput v4, v2, v5

    .line 480
    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 483
    .local v0, c:I
    const-string v5, "PenMenuNew"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " radius:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " h:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget v7, v2, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " s:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget v7, v2, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " v:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    aget v7, v2, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const-string v5, "PenMenuNew"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " r: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " g: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " b: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    goto/16 :goto_0

    .line 472
    .end local v0           #c:I
    :cond_5
    iget v5, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_OUTER_RADIUS:I

    int-to-float v5, v5

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_4

    iget v5, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_OUTER_RADIUS:I

    iget v6, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_MEDIUM_DIST:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_4

    .line 473
    iget v5, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_OUTER_RADIUS:I

    int-to-float v5, v5

    sub-float/2addr v5, p2

    iget v6, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_MEDIUM_DIST:I

    int-to-float v6, v6

    div-float v3, v5, v6

    goto/16 :goto_1
.end method

.method private htcSwatchColor(FF)I
    .locals 2
    .parameter "unit"
    .parameter "distance"

    .prologue
    .line 510
    invoke-direct {p0, p1, p2}, Lcom/htc/painting/penmenu15/view/ColorPickerView;->getSwatchIndex(FF)I

    move-result v0

    .line 512
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 513
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mSwatchPaint:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    .line 515
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mColor:I

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 13
    .parameter "c"

    .prologue
    const/high16 v12, 0x3f80

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v7, 0x3

    .line 190
    iget v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mSwatchNum:I

    new-array v4, v4, [Landroid/graphics/Paint;

    iput-object v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mSwatchPaint:[Landroid/graphics/Paint;

    .line 191
    iget v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mSwatchNum:I

    filled-new-array {v4, v7}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    iput-object v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mDefaultSwatchColor:[[I

    .line 197
    const/16 v4, 0xc

    new-array v4, v4, [[I

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    aput-object v5, v4, v10

    new-array v5, v7, [I

    fill-array-data v5, :array_1

    aput-object v5, v4, v9

    const/4 v5, 0x2

    new-array v6, v7, [I

    fill-array-data v6, :array_2

    aput-object v6, v4, v5

    new-array v5, v7, [I

    fill-array-data v5, :array_3

    aput-object v5, v4, v7

    const/4 v5, 0x4

    new-array v6, v7, [I

    fill-array-data v6, :array_4

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-array v6, v7, [I

    fill-array-data v6, :array_5

    aput-object v6, v4, v5

    const/4 v5, 0x6

    new-array v6, v7, [I

    fill-array-data v6, :array_6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    new-array v6, v7, [I

    fill-array-data v6, :array_7

    aput-object v6, v4, v5

    const/16 v5, 0x8

    new-array v6, v7, [I

    fill-array-data v6, :array_8

    aput-object v6, v4, v5

    const/16 v5, 0x9

    new-array v6, v7, [I

    fill-array-data v6, :array_9

    aput-object v6, v4, v5

    const/16 v5, 0xa

    new-array v6, v7, [I

    fill-array-data v6, :array_a

    aput-object v6, v4, v5

    const/16 v5, 0xb

    new-array v6, v7, [I

    fill-array-data v6, :array_b

    aput-object v6, v4, v5

    iput-object v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mDefaultSwatchColor:[[I

    .line 211
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mSwatchNum:I

    if-ge v2, v4, :cond_0

    .line 212
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mSwatchPaint:[Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v9}, Landroid/graphics/Paint;-><init>(I)V

    aput-object v5, v4, v2

    .line 213
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mSwatchPaint:[Landroid/graphics/Paint;

    aget-object v4, v4, v2

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 214
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mSwatchPaint:[Landroid/graphics/Paint;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mDefaultSwatchColor:[[I

    aget-object v5, v5, v2

    aget v5, v5, v10

    iget-object v6, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mDefaultSwatchColor:[[I

    aget-object v6, v6, v2

    aget v6, v6, v9

    iget-object v7, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mDefaultSwatchColor:[[I

    aget-object v7, v7, v2

    const/4 v8, 0x2

    aget v7, v7, v8

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    :cond_0
    iget v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SLIDER_WIDTH:I

    iget v5, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SLIDER_HEIGHT:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mSatSliderBM:Landroid/graphics/Bitmap;

    .line 218
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mSatSliderBM:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mSatSliderCv:Landroid/graphics/Canvas;

    .line 221
    iget v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SLIDER_WIDTH:I

    iget v5, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SLIDER_HEIGHT:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mValSliderBM:Landroid/graphics/Bitmap;

    .line 222
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mValSliderBM:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mValSliderCv:Landroid/graphics/Canvas;

    .line 225
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    .line 226
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 227
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 229
    const/high16 v4, -0x1

    iput v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mColor:I

    .line 230
    iput-boolean v10, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mTracking:Z

    .line 233
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mColorBackBmp:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    .line 235
    iget v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->PENMENU_WIDTH:I

    iget v5, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->PENMENU_WIDTH:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mColorBackBmp:Landroid/graphics/Bitmap;

    .line 236
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mColorBackBmp:Landroid/graphics/Bitmap;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 238
    .local v1, canvas:Landroid/graphics/Canvas;
    iget v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->CENTER_X:I

    int-to-float v4, v4

    iget v5, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->CENTER_Y:I

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 240
    iget v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SLIDER_WIDTH:I

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_OUTER_RADIUS:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 241
    const/high16 v4, -0x3d10

    iget v5, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SLIDER_WIDTH:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_OUTER_RADIUS:I

    int-to-float v6, v6

    invoke-virtual {v1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 242
    const/16 v3, 0x104

    .line 243
    .local v3, sliderNum:I
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v9}, Landroid/graphics/Paint;-><init>(I)V

    .line 244
    .local v0, aliasPaint:Landroid/graphics/Paint;
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    .line 245
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mHSV:[F

    const/high16 v5, 0x43b4

    int-to-float v6, v3

    div-float/2addr v5, v6

    int-to-float v6, v2

    mul-float/2addr v5, v6

    aput v5, v4, v10

    .line 246
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mHSV:[F

    aput v12, v4, v9

    .line 247
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mHSV:[F

    const/4 v5, 0x2

    aput v12, v4, v5

    .line 249
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/ColorPickerView;->setValSlider()V

    .line 250
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/ColorPickerView;->setSatSlider()V

    .line 251
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mSatSliderBM:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v4, v11, v11, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 252
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mValSliderBM:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_MEDIUM_DIST:I

    int-to-float v5, v5

    invoke-virtual {v1, v4, v11, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 253
    const/high16 v4, 0x4370

    int-to-float v5, v3

    div-float/2addr v4, v5

    iget v5, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SLIDER_WIDTH:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_OUTER_RADIUS:I

    int-to-float v6, v6

    invoke-virtual {v1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 244
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 258
    .end local v0           #aliasPaint:Landroid/graphics/Paint;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v3           #sliderNum:I
    :cond_1
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mSwatchShadowBmp:Landroid/graphics/Bitmap;

    if-nez v4, :cond_2

    .line 259
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/ColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20802c4

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mSwatchShadowBmp:Landroid/graphics/Bitmap;

    .line 262
    :cond_2
    return-void

    .line 197
    :array_0
    .array-data 0x4
        0x6et 0x0t 0x0t 0x0t
        0xb0t 0x0t 0x0t 0x0t
        0x4bt 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x91t 0x0t 0x0t 0x0t
        0x58t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xbbt 0x0t 0x0t 0x0t
        0xc1t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x11t 0x0t 0x0t 0x0t
        0x82t 0x0t 0x0t 0x0t
        0xc4t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x21t 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x87t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x55t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x7et 0x0t 0x0t 0x0t
        0x53t 0x0t 0x0t 0x0t
        0xa6t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0xc1t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0xf1t 0x0t 0x0t 0x0t
        0x4ct 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0xf5t 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0xf3t 0x0t 0x0t 0x0t
        0x92t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private markNowColorCircle(Landroid/graphics/Canvas;)V
    .locals 17
    .parameter "canvas"

    .prologue
    .line 386
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mTracking:Z

    if-eqz v12, :cond_0

    .line 387
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mTrackCord:[F

    const/4 v13, 0x0

    aget v7, v12, v13

    .line 388
    .local v7, markerPosX:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mTrackCord:[F

    const/4 v13, 0x1

    aget v8, v12, v13

    .line 422
    .local v8, markerPosY:F
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    const/high16 v13, -0x100

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 423
    new-instance v12, Landroid/graphics/RectF;

    const/high16 v13, 0x4040

    sub-float v13, v7, v13

    const/high16 v14, 0x4040

    sub-float v14, v8, v14

    const/high16 v15, 0x4040

    add-float/2addr v15, v7

    const/high16 v16, 0x4040

    add-float v16, v16, v8

    invoke-direct/range {v12 .. v16}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 425
    new-instance v12, Landroid/graphics/RectF;

    const/high16 v13, 0x3f80

    sub-float v13, v7, v13

    const/high16 v14, 0x3f80

    sub-float v14, v8, v14

    const/high16 v15, 0x3f80

    add-float/2addr v15, v7

    const/high16 v16, 0x3f80

    add-float v16, v16, v8

    invoke-direct/range {v12 .. v16}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 426
    return-void

    .line 391
    .end local v7           #markerPosX:F
    .end local v8           #markerPosY:F
    :cond_0
    const/4 v12, 0x3

    new-array v6, v12, [F

    .line 392
    .local v6, hsv:[F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mColor:I

    invoke-static {v12, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 399
    const/4 v12, 0x0

    aget v12, v6, v12

    const/high16 v13, 0x43b4

    div-float/2addr v12, v13

    const v13, 0x3f28f5c2

    mul-float/2addr v12, v13

    const v13, 0x3ed70a3d

    add-float v9, v12, v13

    .line 400
    .local v9, unit:F
    float-to-double v12, v9

    const-wide/high16 v14, 0x3fe0

    cmpg-double v12, v12, v14

    if-gez v12, :cond_1

    .line 401
    const/high16 v12, 0x3f80

    sub-float/2addr v9, v12

    .line 403
    :cond_1
    const/4 v12, 0x1

    aget v12, v6, v12

    const/high16 v13, 0x3f80

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2

    .line 404
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_OUTER_RADIUS:I

    int-to-float v12, v12

    const/4 v13, 0x1

    aget v13, v6, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_MEDIUM_DIST:I

    int-to-float v14, v14

    mul-float/2addr v13, v14

    sub-float v5, v12, v13

    .line 408
    .local v5, distance:F
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v5}, Lcom/htc/painting/penmenu15/view/ColorPickerView;->htcInterpColor(FF)I

    move-result v2

    .line 411
    .local v2, c:I
    const v12, 0x40c90fda

    mul-float v1, v9, v12

    .line 412
    .local v1, angle:F
    float-to-double v3, v1

    .line 414
    .local v3, d:D
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float v10, v5, v12

    .line 415
    .local v10, x:F
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float v11, v5, v12

    .line 419
    .local v11, y:F
    move v7, v10

    .line 420
    .restart local v7       #markerPosX:F
    move v8, v11

    .restart local v8       #markerPosY:F
    goto/16 :goto_0

    .line 406
    .end local v1           #angle:F
    .end local v2           #c:I
    .end local v3           #d:D
    .end local v5           #distance:F
    .end local v7           #markerPosX:F
    .end local v8           #markerPosY:F
    .end local v10           #x:F
    .end local v11           #y:F
    :cond_2
    const/4 v12, 0x2

    aget v12, v6, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_MEDIUM_DIST:I

    int-to-float v13, v13

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_INNER_RADIUS:I

    int-to-float v13, v13

    add-float v5, v12, v13

    .restart local v5       #distance:F
    goto :goto_1
.end method

.method private setSatSlider()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 346
    const/4 v5, 0x3

    new-array v4, v5, [F

    .line 347
    .local v4, hsv:[F
    iget-object v5, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mHSV:[F

    aget v5, v5, v7

    aput v5, v4, v7

    .line 348
    const/4 v5, 0x0

    aput v5, v4, v8

    .line 349
    iget-object v5, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mHSV:[F

    aget v5, v5, v6

    aput v5, v4, v6

    .line 350
    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 351
    .local v0, col1:I
    iget-object v5, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mHSV:[F

    aget v5, v5, v7

    aput v5, v4, v7

    .line 352
    const/high16 v5, 0x3f80

    aput v5, v4, v8

    .line 353
    iget-object v5, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mHSV:[F

    aget v5, v5, v6

    aput v5, v4, v6

    .line 354
    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    .line 356
    .local v1, col2:I
    new-array v2, v6, [I

    .line 357
    .local v2, colors:[I
    aput v0, v2, v7

    .line 358
    aput v1, v2, v8

    .line 359
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v3, v5, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 360
    .local v3, gradDraw:Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v3, v8}, Landroid/graphics/drawable/GradientDrawable;->setDither(Z)V

    .line 361
    const/16 v5, 0x2710

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setLevel(I)Z

    .line 362
    iget v5, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SLIDER_WIDTH:I

    iget v6, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SLIDER_HEIGHT:I

    invoke-virtual {v3, v7, v7, v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 363
    iget-object v5, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mSatSliderCv:Landroid/graphics/Canvas;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 364
    return-void
.end method

.method private setSwatchColor(FFI)I
    .locals 2
    .parameter "unit"
    .parameter "distance"
    .parameter "color"

    .prologue
    .line 526
    invoke-direct {p0, p1, p2}, Lcom/htc/painting/penmenu15/view/ColorPickerView;->getSwatchIndex(FF)I

    move-result v0

    .line 529
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 530
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mSwatchPaint:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 532
    :cond_0
    return v0
.end method

.method private setValSlider()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 329
    const/4 v4, 0x3

    new-array v3, v4, [F

    .line 330
    .local v3, hsv:[F
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mHSV:[F

    aget v4, v4, v6

    aput v4, v3, v6

    .line 331
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mHSV:[F

    aget v4, v4, v5

    aput v4, v3, v5

    .line 332
    const/high16 v4, 0x3f80

    aput v4, v3, v7

    .line 333
    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 335
    .local v0, col:I
    new-array v1, v7, [I

    .line 336
    .local v1, colors:[I
    aput v0, v1, v6

    .line 337
    const/high16 v4, -0x100

    aput v4, v1, v5

    .line 338
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v2, v4, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 339
    .local v2, gradDraw:Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setDither(Z)V

    .line 340
    const/16 v4, 0x2710

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setLevel(I)Z

    .line 341
    iget v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SLIDER_WIDTH:I

    iget v5, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SLIDER_HEIGHT:I

    invoke-virtual {v2, v6, v6, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 342
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mValSliderCv:Landroid/graphics/Canvas;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 343
    return-void
.end method


# virtual methods
.method public colorChoose(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    .line 716
    const/4 v3, 0x0

    .line 721
    .local v3, ret:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->CENTER_X:I

    int-to-float v8, v8

    sub-float v5, v7, v8

    .line 722
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->CENTER_Y:I

    int-to-float v8, v8

    sub-float v6, v7, v8

    .line 724
    .local v6, y:F
    mul-float v7, v5, v5

    mul-float v8, v6, v6

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v2, v7

    .line 725
    .local v2, r:F
    float-to-double v7, v6

    float-to-double v9, v5

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    double-to-float v0, v7

    .line 727
    .local v0, angle:F
    const v7, 0x40c90fda

    div-float v4, v0, v7

    .line 728
    .local v4, unit:F
    const/4 v7, 0x0

    cmpg-float v7, v4, v7

    if-gez v7, :cond_0

    .line 729
    const/high16 v7, 0x3f80

    add-float/2addr v4, v7

    .line 732
    :cond_0
    invoke-direct {p0, v4, v2}, Lcom/htc/painting/penmenu15/view/ColorPickerView;->htcInterpColor(FF)I

    move-result v1

    .line 733
    .local v1, color:I
    iget v7, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mColor:I

    if-eq v7, v1, :cond_1

    .line 734
    iget-object v7, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mTrackCord:[F

    const/4 v8, 0x0

    aput v5, v7, v8

    .line 735
    iget-object v7, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mTrackCord:[F

    const/4 v8, 0x1

    aput v6, v7, v8

    .line 736
    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mColor:I

    .line 737
    iget-object v7, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mListener:Lcom/htc/painting/penmenu15/view/ColorPickerView$OnColorChangedListener;

    iget v8, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mColor:I

    invoke-interface {v7, v8}, Lcom/htc/painting/penmenu15/view/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 738
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/ColorPickerView;->invalidate()V

    .line 739
    const/4 v3, 0x1

    .line 741
    :cond_1
    const-string v7, "PenMenuNew"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " colorChoose ret:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    return v3
.end method

.method public getProposedLayOutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 542
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 544
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    return-object v0
.end method

.method protected getSwatchColors()[I
    .locals 3

    .prologue
    .line 761
    iget v2, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mSwatchNum:I

    new-array v0, v2, [I

    .line 762
    .local v0, colors:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mSwatchNum:I

    if-ge v1, v2, :cond_0

    .line 763
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mSwatchPaint:[Landroid/graphics/Paint;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    aput v2, v0, v1

    .line 762
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 766
    :cond_0
    return-object v0
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 753
    iget-boolean v0, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mTracking:Z

    return v0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    const/4 v11, -0x1

    .line 628
    const/4 v3, 0x0

    .line 630
    .local v3, result:Z
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v7

    iget v8, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->CENTER_X:I

    int-to-float v8, v8

    sub-float v5, v7, v8

    .line 631
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v7

    iget v8, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->CENTER_Y:I

    int-to-float v8, v8

    sub-float v6, v7, v8

    .line 632
    .local v6, y:F
    mul-float v7, v5, v5

    mul-float v8, v6, v6

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v2, v7

    .line 633
    .local v2, r:F
    float-to-double v7, v6

    float-to-double v9, v5

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    double-to-float v0, v7

    .line 635
    .local v0, angle:F
    const v7, 0x40c90fda

    div-float v4, v0, v7

    .line 636
    .local v4, unit:F
    const/4 v7, 0x0

    cmpg-float v7, v4, v7

    if-gez v7, :cond_0

    .line 637
    const/high16 v7, 0x3f80

    add-float/2addr v4, v7

    .line 641
    :cond_0
    iget v7, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mMarkerIndex:I

    if-eq v7, v11, :cond_1

    .line 642
    iput v11, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mMarkerIndex:I

    .line 643
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/ColorPickerView;->invalidate()V

    .line 646
    :cond_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 647
    const-string v7, "PenMenuNew"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Drag started, event="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const/4 v3, 0x1

    .line 697
    :cond_2
    :goto_0
    return v3

    .line 654
    :cond_3
    iget v7, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_OUTER_RADIUS:I

    int-to-float v7, v7

    cmpl-float v7, v2, v7

    if-lez v7, :cond_2

    iget v7, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_RADIUS:I

    int-to-float v7, v7

    cmpg-float v7, v2, v7

    if-gtz v7, :cond_2

    float-to-double v7, v4

    const-wide v9, 0x3fb47ae147ae147bL

    cmpg-double v7, v7, v9

    if-lez v7, :cond_4

    float-to-double v7, v4

    const-wide v9, 0x3fdae147ae147ae1L

    cmpl-double v7, v7, v9

    if-ltz v7, :cond_2

    .line 655
    :cond_4
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 692
    const-string v7, "PenMenuNew"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "other drag event: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 657
    :pswitch_0
    const-string v7, "PenMenuNew"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Drag started, event="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const/4 v3, 0x1

    .line 660
    goto :goto_0

    .line 663
    :pswitch_1
    const-string v7, "PenMenuNew"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Drag ended. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 668
    :pswitch_2
    invoke-direct {p0, v4, v2}, Lcom/htc/painting/penmenu15/view/ColorPickerView;->checkHightlightFocusSwatch(FF)I

    move-result v7

    iput v7, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mMarkerIndex:I

    .line 669
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/ColorPickerView;->invalidate()V

    goto :goto_0

    .line 674
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    .line 675
    .local v1, container:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;
    const-string v7, "PenMenuNew"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got a drop!   object ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const-string v7, "PenMenuNew"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " color "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->getColor()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->getColor()I

    move-result v7

    invoke-direct {p0, v4, v2, v7}, Lcom/htc/painting/penmenu15/view/ColorPickerView;->setSwatchColor(FFI)I

    .line 678
    iget-object v7, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mDragColorMonitor:Lcom/htc/painting/penmenu15/PenMenu$DragColorMonitor;

    if-eqz v7, :cond_5

    .line 679
    iget-object v7, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mDragColorMonitor:Lcom/htc/painting/penmenu15/PenMenu$DragColorMonitor;

    invoke-interface {v7}, Lcom/htc/painting/penmenu15/PenMenu$DragColorMonitor;->onDragColor()V

    .line 680
    :cond_5
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/ColorPickerView;->invalidate()V

    goto/16 :goto_0

    .line 684
    .end local v1           #container:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;
    :pswitch_4
    const-string v7, "PenMenuNew"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Entered ColorPickerView @ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 688
    :pswitch_5
    const-string v7, "PenMenuNew"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exited ColorPickerView @ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 655
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 292
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 293
    iget v0, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->CENTER_X:I

    int-to-float v0, v0

    iget v2, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->CENTER_Y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 296
    iget v0, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_WIDTH:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_RADIUS:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 297
    const/high16 v0, 0x42dc

    iget v2, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_RADIUS:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 298
    iget v0, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mSwatchNum:I

    add-int/lit8 v6, v0, -0x1

    .local v6, i:I
    :goto_0
    if-ltz v6, :cond_1

    .line 299
    iget v0, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_WIDTH:I

    int-to-float v3, v0

    iget v0, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_HEIGHT:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mSwatchPaint:[Landroid/graphics/Paint;

    aget-object v5, v0, v6

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 302
    new-instance v7, Landroid/graphics/Rect;

    iget v0, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_WIDTH:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_WIDTH:I

    add-int/lit8 v3, v3, 0xa

    iget v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_HEIGHT:I

    invoke-direct {v7, v0, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 303
    .local v7, shadowRect:Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mSwatchShadowBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v8, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 304
    iget v0, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mMarkerIndex:I

    if-ne v0, v6, :cond_0

    .line 305
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/ColorPickerView;->hightlightFocusSwatch(Landroid/graphics/Canvas;)V

    .line 308
    :cond_0
    const/high16 v0, -0x3e60

    iget v2, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_RADIUS:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 298
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 313
    .end local v7           #shadowRect:Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 316
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mColorBackBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 319
    iget v0, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->CENTER_X:I

    int-to-float v0, v0

    iget v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->CENTER_Y:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 321
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/ColorPickerView;->markNowColorCircle(Landroid/graphics/Canvas;)V

    .line 323
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 434
    iget v0, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->PENMENU_WIDTH:I

    iget v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->PENMENU_WIDTH:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/painting/penmenu15/view/ColorPickerView;->setMeasuredDimension(II)V

    .line 435
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 555
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget v9, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->CENTER_X:I

    int-to-float v9, v9

    sub-float v4, v8, v9

    .line 556
    .local v4, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->CENTER_Y:I

    int-to-float v9, v9

    sub-float v5, v8, v9

    .line 558
    .local v5, y:F
    mul-float v8, v4, v4

    mul-float v9, v5, v5

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v2, v8

    .line 559
    .local v2, r:F
    float-to-double v8, v5

    float-to-double v10, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    double-to-float v0, v8

    .line 561
    .local v0, angle:F
    const v8, 0x40c90fda

    div-float v3, v0, v8

    .line 562
    .local v3, unit:F
    const/4 v8, 0x0

    cmpg-float v8, v3, v8

    if-gez v8, :cond_0

    .line 563
    const/high16 v8, 0x3f80

    add-float/2addr v3, v8

    .line 567
    :cond_0
    iget v8, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_OUTER_RADIUS:I

    int-to-float v8, v8

    cmpl-float v8, v2, v8

    if-lez v8, :cond_2

    iget v8, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SWATCH_RADIUS:I

    int-to-float v8, v8

    cmpg-float v8, v2, v8

    if-gtz v8, :cond_2

    .line 568
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_2

    .line 570
    invoke-direct {p0, v3, v2}, Lcom/htc/painting/penmenu15/view/ColorPickerView;->htcSwatchColor(FF)I

    move-result v1

    .line 571
    .local v1, color:I
    iget v7, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mColor:I

    if-eq v7, v1, :cond_1

    .line 572
    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mColor:I

    .line 573
    iget-object v7, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mListener:Lcom/htc/painting/penmenu15/view/ColorPickerView$OnColorChangedListener;

    iget v8, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mColor:I

    invoke-interface {v7, v8}, Lcom/htc/painting/penmenu15/view/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 574
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/ColorPickerView;->invalidate()V

    .line 616
    .end local v1           #color:I
    :cond_1
    :goto_0
    return v6

    .line 579
    :cond_2
    iget v8, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_INNER_RADIUS:I

    int-to-float v8, v8

    cmpg-float v8, v2, v8

    if-gez v8, :cond_3

    .line 580
    const-string v8, "PenMenuNew"

    const-string v9, "  INNER_RADIUS : "

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_3
    iget-boolean v8, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mTracking:Z

    if-nez v8, :cond_6

    .line 586
    iget v8, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_INNER_RADIUS:I

    int-to-float v8, v8

    cmpg-float v8, v2, v8

    if-ltz v8, :cond_4

    iget v8, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->SPECTRUM_OUTER_RADIUS:I

    int-to-float v8, v8

    cmpl-float v8, v2, v8

    if-lez v8, :cond_5

    .line 587
    :cond_4
    iput-boolean v7, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mTracking:Z

    move v6, v7

    .line 588
    goto :goto_0

    .line 591
    :cond_5
    float-to-double v8, v3

    const-wide v10, 0x3fb47ae147ae147bL

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_6

    float-to-double v8, v3

    const-wide v10, 0x3fdae147ae147ae1L

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_6

    .line 592
    iput-boolean v7, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mTracking:Z

    move v6, v7

    .line 593
    goto :goto_0

    .line 597
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_7

    .line 598
    iput-boolean v6, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mTracking:Z

    goto :goto_0

    .line 601
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_8

    .line 602
    iput-boolean v6, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mTracking:Z

    .line 603
    invoke-direct {p0, v3, v2}, Lcom/htc/painting/penmenu15/view/ColorPickerView;->htcInterpColor(FF)I

    move-result v1

    .line 604
    .restart local v1       #color:I
    iget v8, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mColor:I

    if-eq v8, v1, :cond_1

    .line 605
    iget-object v8, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mTrackCord:[F

    aput v4, v8, v7

    .line 606
    iget-object v7, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mTrackCord:[F

    aput v5, v7, v6

    .line 607
    iput v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mColor:I

    .line 608
    iget-object v7, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mListener:Lcom/htc/painting/penmenu15/view/ColorPickerView$OnColorChangedListener;

    iget v8, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mColor:I

    invoke-interface {v7, v8}, Lcom/htc/painting/penmenu15/view/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 609
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/ColorPickerView;->invalidate()V

    goto :goto_0

    .line 612
    .end local v1           #color:I
    :cond_8
    iput-boolean v7, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mTracking:Z

    goto :goto_0
.end method

.method public setCurrentColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 269
    iput p1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mColor:I

    .line 270
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/ColorPickerView;->invalidate()V

    .line 271
    return-void
.end method

.method public setDragColorMonitor(Lcom/htc/painting/penmenu15/PenMenu$DragColorMonitor;)V
    .locals 0
    .parameter "monitor"

    .prologue
    .line 706
    iput-object p1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mDragColorMonitor:Lcom/htc/painting/penmenu15/PenMenu$DragColorMonitor;

    .line 707
    return-void
.end method

.method public setOnColorChangeListener(Lcom/htc/painting/penmenu15/view/ColorPickerView$OnColorChangedListener;)V
    .locals 0
    .parameter "list"

    .prologue
    .line 278
    iput-object p1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mListener:Lcom/htc/painting/penmenu15/view/ColorPickerView$OnColorChangedListener;

    .line 279
    return-void
.end method

.method protected setSwatchColors([I)Z
    .locals 4
    .parameter "colors"

    .prologue
    const/4 v1, 0x0

    .line 775
    if-nez p1, :cond_0

    .line 777
    const-string v2, "PenMenuNew"

    const-string v3, " history colors null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/ColorPickerView;->setSwatchDefaultColors()Z

    .line 791
    :goto_0
    return v1

    .line 781
    :cond_0
    array-length v2, p1

    iget v3, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mSwatchNum:I

    if-eq v2, v3, :cond_1

    .line 782
    const-string v2, "PenMenuNew"

    const-string v3, " history colors num not match swatch colors num"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 786
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mSwatchNum:I

    if-ge v0, v1, :cond_2

    .line 787
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mSwatchPaint:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 786
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 789
    :cond_2
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/ColorPickerView;->invalidate()V

    .line 791
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected setSwatchDefaultColors()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 801
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mSwatchNum:I

    if-ge v0, v1, :cond_0

    .line 802
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mSwatchPaint:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mDefaultSwatchColor:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mDefaultSwatchColor:[[I

    aget-object v3, v3, v0

    aget v3, v3, v6

    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/ColorPickerView;->mDefaultSwatchColor:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 801
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 804
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/ColorPickerView;->invalidate()V

    .line 806
    return v6
.end method
