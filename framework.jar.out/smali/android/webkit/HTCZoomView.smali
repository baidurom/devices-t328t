.class public Landroid/webkit/HTCZoomView;
.super Ljava/lang/Object;
.source "HTCZoomView.java"


# static fields
.field static final LOGTAG:Ljava/lang/String; = "HTCZoomView"

.field private static final ZOOM_BITS:I = 0x86


# instance fields
.field private mInAnimation:Z

.field private mIntervalScale:F

.field private mIntervalX:I

.field private mIntervalY:I

.field private mOffX:I

.field private mOffY:I

.field private mOriginalScale:F

.field private mOriginalX:I

.field private mOriginalY:I

.field private mPicture:Landroid/graphics/Picture;

.field private mStartTime:J

.field private mWebView:Landroid/webkit/WebView;

.field private mZoomDuration:I

.field private final mZoomFilter:Landroid/graphics/DrawFilter;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 4
    .parameter "webview"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v2, p0, Landroid/webkit/HTCZoomView;->mInAnimation:Z

    .line 38
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/webkit/HTCZoomView;->mStartTime:J

    .line 40
    iput-object v3, p0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    .line 42
    const/16 v0, 0x190

    iput v0, p0, Landroid/webkit/HTCZoomView;->mZoomDuration:I

    .line 45
    iput-object v3, p0, Landroid/webkit/HTCZoomView;->mPicture:Landroid/graphics/Picture;

    .line 46
    iput v2, p0, Landroid/webkit/HTCZoomView;->mOffX:I

    iput v2, p0, Landroid/webkit/HTCZoomView;->mOffY:I

    .line 52
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/16 v1, 0x86

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Landroid/webkit/HTCZoomView;->mZoomFilter:Landroid/graphics/DrawFilter;

    .line 56
    iput-object p1, p0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    .line 57
    return-void
.end method

.method private createAnimation(IIFF)V
    .locals 7
    .parameter "sx"
    .parameter "sy"
    .parameter "fromFactor"
    .parameter "toFactor"

    .prologue
    const/16 v6, 0x190

    const/high16 v5, 0x4296

    const-wide/high16 v3, 0x4010

    .line 197
    iput p3, p0, Landroid/webkit/HTCZoomView;->mOriginalScale:F

    .line 198
    sub-float v1, p4, p3

    iput v1, p0, Landroid/webkit/HTCZoomView;->mIntervalScale:F

    .line 200
    cmpl-float v1, p3, p4

    if-lez v1, :cond_1

    .line 202
    div-float v0, p3, p4

    .line 203
    .local v0, ratio:F
    float-to-double v1, v0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    .line 204
    iput v6, p0, Landroid/webkit/HTCZoomView;->mZoomDuration:I

    .line 216
    :goto_0
    const-string v1, "HTCZoomView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/webkit/HTCZoomView;->mZoomDuration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget v1, p0, Landroid/webkit/HTCZoomView;->mOffX:I

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Landroid/webkit/HTCZoomView;->mOriginalX:I

    .line 220
    iget v1, p0, Landroid/webkit/HTCZoomView;->mOffX:I

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, p4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v1, p1

    iget v2, p0, Landroid/webkit/HTCZoomView;->mOriginalX:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/HTCZoomView;->mIntervalX:I

    .line 222
    iget v1, p0, Landroid/webkit/HTCZoomView;->mOffY:I

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Landroid/webkit/HTCZoomView;->mOriginalY:I

    .line 223
    iget v1, p0, Landroid/webkit/HTCZoomView;->mOffY:I

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, p4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v1, p2

    iget v2, p0, Landroid/webkit/HTCZoomView;->mOriginalY:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/HTCZoomView;->mIntervalY:I

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/webkit/HTCZoomView;->mStartTime:J

    .line 226
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/HTCZoomView;->mInAnimation:Z

    .line 227
    iget-object v1, p0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->invalidate()V

    .line 228
    return-void

    .line 206
    :cond_0
    mul-float v1, v5, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    iput v1, p0, Landroid/webkit/HTCZoomView;->mZoomDuration:I

    goto :goto_0

    .line 210
    .end local v0           #ratio:F
    :cond_1
    div-float v0, p4, p3

    .line 211
    .restart local v0       #ratio:F
    float-to-double v1, v0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_2

    .line 212
    iput v6, p0, Landroid/webkit/HTCZoomView;->mZoomDuration:I

    goto :goto_0

    .line 214
    :cond_2
    mul-float v1, v5, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    iput v1, p0, Landroid/webkit/HTCZoomView;->mZoomDuration:I

    goto :goto_0
.end method

.method private createPicture(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "oldRect"
    .parameter "newRect"

    .prologue
    const/4 v3, 0x0

    .line 178
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 179
    .local v1, drawRect:Landroid/graphics/Rect;
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 182
    iget-object v2, p0, Landroid/webkit/HTCZoomView;->mPicture:Landroid/graphics/Picture;

    if-nez v2, :cond_0

    .line 183
    new-instance v2, Landroid/graphics/Picture;

    invoke-direct {v2}, Landroid/graphics/Picture;-><init>()V

    iput-object v2, p0, Landroid/webkit/HTCZoomView;->mPicture:Landroid/graphics/Picture;

    .line 184
    :cond_0
    iget-object v2, p0, Landroid/webkit/HTCZoomView;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v0

    .line 185
    .local v0, canvas:Landroid/graphics/Canvas;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v4, v1, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 186
    iget-object v2, p0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->drawPage(Landroid/graphics/Canvas;)V

    .line 188
    iget-object v2, p0, Landroid/webkit/HTCZoomView;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v2}, Landroid/graphics/Picture;->endRecording()V

    .line 190
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    if-le v2, v4, :cond_2

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    :goto_0
    iput v2, p0, Landroid/webkit/HTCZoomView;->mOffX:I

    .line 191
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    if-le v2, v4, :cond_1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int v3, v2, v3

    :cond_1
    iput v3, p0, Landroid/webkit/HTCZoomView;->mOffY:I

    .line 193
    return-void

    :cond_2
    move v2, v3

    .line 190
    goto :goto_0
.end method


# virtual methods
.method public InAnimation()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Landroid/webkit/HTCZoomView;->mInAnimation:Z

    return v0
.end method

.method public StartAnimationZoom(Landroid/graphics/Rect;FF)V
    .locals 29
    .parameter "nodeRect"
    .parameter "fromFactor"
    .parameter "toFactor"

    .prologue
    .line 61
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/WebView;->getScrollX()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v24, p2

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 62
    .local v8, ContentScrollX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/WebView;->getScrollY()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v25

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v24, p2

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 63
    .local v9, ContentScrollY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v23

    .line 64
    .local v23, viewwidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v22

    .line 65
    .local v22, viewheight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v13

    .line 66
    .local v13, contentwidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v12

    .line 71
    .local v12, contentheight:I
    if-nez p1, :cond_0

    .line 72
    const-string v24, "HTCZoomView"

    const-string/jumbo v25, "nodeRect is NULL"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v24

    sub-int v5, v24, v8

    .line 77
    .local v5, CenterX:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v24

    sub-int v6, v24, v9

    .line 78
    .local v6, CenterY:I
    const/16 v20, 0x0

    .local v20, sx:I
    const/16 v21, 0x0

    .line 79
    .local v21, sy:I
    shr-int/lit8 v24, v23, 0x1

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v24, p3

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 80
    .local v15, halfNewW:I
    shr-int/lit8 v24, v22, 0x1

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v24, p3

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 82
    .local v14, halfNewH:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v24

    move/from16 v0, v24

    if-ge v0, v15, :cond_3

    .line 83
    move/from16 v20, v8

    .line 96
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v24, p3

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 97
    .local v11, TitleH:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v24

    sub-int v24, v24, v14

    add-int/lit8 v25, v11, -0x5

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_5

    .line 98
    add-int v21, v9, v11

    .line 116
    :cond_2
    :goto_2
    new-instance v19, Landroid/graphics/Rect;

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, p2

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v24

    add-int v24, v24, v8

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, p2

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->round(F)I

    move-result v25

    add-int v25, v25, v9

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v8, v9, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 118
    .local v19, oldRect:Landroid/graphics/Rect;
    new-instance v16, Landroid/graphics/Rect;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v24, v24, v20

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v25, v25, v21

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    sub-int v26, v26, v20

    shl-int/lit8 v27, v15, 0x1

    add-int v26, v26, v27

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    sub-int v27, v27, v21

    shl-int/lit8 v28, v14, 0x1

    add-int v27, v27, v28

    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 119
    .local v16, newRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/webkit/HTCZoomView;->createPicture(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 124
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, p3

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v20

    .line 125
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, p3

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v21

    .line 127
    const-string v24, "HTCZoomView"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "shift x = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", shift y = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/HTCZoomView;->createAnimation(IIFF)V

    goto/16 :goto_0

    .line 86
    .end local v11           #TitleH:I
    .end local v16           #newRect:Landroid/graphics/Rect;
    .end local v19           #oldRect:Landroid/graphics/Rect;
    :cond_3
    sub-int v20, v15, v5

    .line 87
    move/from16 v0, v23

    if-lt v13, v0, :cond_4

    move v10, v13

    .line 88
    .local v10, ContentWidth:I
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v24

    sub-int v17, v10, v24

    .line 89
    .local v17, offsetx:I
    move/from16 v0, v17

    if-ge v0, v15, :cond_1

    .line 91
    sub-int v24, v15, v17

    add-int v20, v20, v24

    .line 92
    const-string v24, "HTCZoomView"

    const-string/jumbo v25, "over scroll x"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v10           #ContentWidth:I
    .end local v17           #offsetx:I
    :cond_4
    move/from16 v10, v23

    .line 87
    goto :goto_3

    .line 102
    .restart local v11       #TitleH:I
    :cond_5
    sub-int v21, v14, v6

    .line 103
    move/from16 v0, v22

    if-lt v12, v0, :cond_6

    move v7, v12

    .line 104
    .local v7, ContentHeight:I
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v24

    sub-int v18, v7, v24

    .line 105
    .local v18, offsety:I
    move/from16 v0, v18

    if-ge v0, v14, :cond_2

    .line 107
    sub-int v24, v14, v18

    add-int v21, v21, v24

    .line 108
    const-string v24, "HTCZoomView"

    const-string/jumbo v25, "over scroll y"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v7           #ContentHeight:I
    .end local v18           #offsety:I
    :cond_6
    move/from16 v7, v22

    .line 103
    goto :goto_4
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v10, 0x0

    .line 133
    iget-boolean v6, p0, Landroid/webkit/HTCZoomView;->mInAnimation:Z

    if-eqz v6, :cond_0

    .line 135
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 136
    iget-object v6, p0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getScrollY()I

    move-result v7

    iget-object v8, p0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/webkit/HTCZoomView;->mStartTime:J

    sub-long v2, v6, v8

    .line 141
    .local v2, timeInterval:J
    iget v6, p0, Landroid/webkit/HTCZoomView;->mZoomDuration:I

    int-to-long v6, v6

    cmp-long v6, v2, v6

    if-gtz v6, :cond_1

    .line 143
    long-to-float v6, v2

    iget v7, p0, Landroid/webkit/HTCZoomView;->mZoomDuration:I

    int-to-float v7, v7

    div-float v0, v6, v7

    .line 144
    .local v0, r:F
    iget v6, p0, Landroid/webkit/HTCZoomView;->mOriginalX:I

    iget v7, p0, Landroid/webkit/HTCZoomView;->mIntervalX:I

    int-to-float v7, v7

    mul-float/2addr v7, v0

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int v4, v6, v7

    .line 145
    .local v4, x:I
    iget v6, p0, Landroid/webkit/HTCZoomView;->mOriginalY:I

    iget v7, p0, Landroid/webkit/HTCZoomView;->mIntervalY:I

    int-to-float v7, v7

    mul-float/2addr v7, v0

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int v5, v6, v7

    .line 146
    .local v5, y:I
    iget v6, p0, Landroid/webkit/HTCZoomView;->mOriginalScale:F

    iget v7, p0, Landroid/webkit/HTCZoomView;->mIntervalScale:F

    mul-float/2addr v7, v0

    add-float v1, v6, v7

    .line 156
    .end local v0           #r:F
    .local v1, scale:F
    :goto_0
    int-to-float v6, v4

    int-to-float v7, v5

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 157
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 159
    iget-object v6, p0, Landroid/webkit/HTCZoomView;->mZoomFilter:Landroid/graphics/DrawFilter;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 160
    iget-object v6, p0, Landroid/webkit/HTCZoomView;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 161
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 162
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 164
    iget-boolean v6, p0, Landroid/webkit/HTCZoomView;->mInAnimation:Z

    if-eqz v6, :cond_2

    .line 165
    iget-object v6, p0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->invalidate()V

    .line 174
    .end local v1           #scale:F
    .end local v2           #timeInterval:J
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_0
    :goto_1
    return-void

    .line 150
    .restart local v2       #timeInterval:J
    :cond_1
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/webkit/HTCZoomView;->mInAnimation:Z

    .line 151
    iget v6, p0, Landroid/webkit/HTCZoomView;->mOriginalX:I

    iget v7, p0, Landroid/webkit/HTCZoomView;->mIntervalX:I

    add-int v4, v6, v7

    .line 152
    .restart local v4       #x:I
    iget v6, p0, Landroid/webkit/HTCZoomView;->mOriginalY:I

    iget v7, p0, Landroid/webkit/HTCZoomView;->mIntervalY:I

    add-int v5, v6, v7

    .line 153
    .restart local v5       #y:I
    iget v6, p0, Landroid/webkit/HTCZoomView;->mOriginalScale:F

    iget v7, p0, Landroid/webkit/HTCZoomView;->mIntervalScale:F

    add-float v1, v6, v7

    .restart local v1       #scale:F
    goto :goto_0

    .line 168
    :cond_2
    iput-object v10, p0, Landroid/webkit/HTCZoomView;->mPicture:Landroid/graphics/Picture;

    .line 170
    iget-object v6, p0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebViewCore;->contentDraw()V

    .line 171
    iget-object v6, p0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->viewInvalidate()V

    goto :goto_1
.end method
