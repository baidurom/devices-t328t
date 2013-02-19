.class public Lcom/htc/painting/penmenu/action/ActionView;
.super Landroid/view/View;
.source "ActionView.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ActionView"


# instance fields
.field private mActionItem:Lcom/htc/painting/penmenu/action/ActionItem;

.field private mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

.field private mInnerRadius:I

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/painting/penmenu/action/ActionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/painting/penmenu/action/ActionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 30
    .parameter "canvas"

    .prologue
    .line 91
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 93
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 94
    new-instance v16, Landroid/graphics/PaintFlagsDrawFilter;

    const/16 v24, 0x0

    const/16 v25, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    .line 95
    .local v16, setfil:Landroid/graphics/PaintFlagsDrawFilter;
    new-instance v15, Landroid/graphics/PaintFlagsDrawFilter;

    const/16 v24, 0x2

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v15, v0, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    .line 96
    .local v15, remfil:Landroid/graphics/PaintFlagsDrawFilter;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 99
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/painting/penmenu/action/ActionView;->mSize:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/painting/penmenu/action/ActionView;->mInnerRadius:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x4000

    div-float v18, v24, v25

    .line 101
    .local v18, translate:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/action/ActionView;->mActionItem:Lcom/htc/painting/penmenu/action/ActionItem;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/action/ActionView;->mActionItem:Lcom/htc/painting/penmenu/action/ActionItem;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/painting/penmenu/action/ActionItem;->getAngleByDegree()F

    move-result v4

    .line 103
    .local v4, angle:F
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/penmenu/action/ActionView;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v26, v0

    float-to-double v0, v4

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    sub-double v20, v24, v26

    .line 104
    .local v20, x:D
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/penmenu/action/ActionView;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v26, v0

    float-to-double v0, v4

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    sub-double v22, v24, v26

    .line 107
    .local v22, y:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/action/ActionView;->mActionItem:Lcom/htc/painting/penmenu/action/ActionItem;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/painting/penmenu/action/ActionItem;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v17

    .line 108
    .local v17, tempIcon:Landroid/graphics/Bitmap;
    if-eqz v17, :cond_1

    .line 109
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    sget-object v26, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v24 .. v26}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 110
    .local v11, icon:Landroid/graphics/Bitmap;
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12}, Landroid/graphics/Canvas;-><init>()V

    .line 111
    .local v12, iconCanvas:Landroid/graphics/Canvas;
    invoke-virtual {v12, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/action/ActionView;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/painting/penmenu/action/ActionPanel;->getDockCorner()Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    move-result-object v24

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v12, v1, v2}, Lcom/htc/painting/penmenu/PenMenu;->adjustCanvasByCorner(Lcom/htc/painting/penmenu/PenMenu$DockCorner;Landroid/graphics/Canvas;II)V

    .line 115
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/action/ActionView;->mActionItem:Lcom/htc/painting/penmenu/action/ActionItem;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/painting/penmenu/action/ActionItem;->getBackgroundAlpha()I

    move-result v6

    .line 118
    .local v6, bgAlpha:I
    if-eqz v6, :cond_0

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/action/ActionView;->mActionItem:Lcom/htc/painting/penmenu/action/ActionItem;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/painting/penmenu/action/ActionItem;->getBeginAngleByDegree()F

    move-result v5

    .line 126
    .local v5, anglePressedIcon:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/painting/penmenu/action/ActionView;->mSize:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v19, v0

    .line 127
    .local v19, translatePressedIcon:F
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/penmenu/action/ActionView;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v26, v0

    float-to-double v0, v5

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    sub-double v7, v24, v26

    .line 129
    .local v7, dx:D
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/penmenu/action/ActionView;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v26, v0

    float-to-double v0, v5

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    sub-double v9, v24, v26

    .line 132
    .local v9, dy:D
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/penmenu/action/ActionView;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x208027f

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    check-cast v14, Landroid/graphics/drawable/BitmapDrawable;

    .line 135
    .local v14, pressedIcon:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 137
    double-to-float v0, v7

    move/from16 v24, v0

    double-to-float v0, v9

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 138
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 140
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 141
    .local v13, paint:Landroid/graphics/Paint;
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 142
    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 143
    new-instance v24, Landroid/graphics/PorterDuffXfermode;

    sget-object v25, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v24 .. v25}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 145
    invoke-virtual {v14}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual {v14}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v26

    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 148
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 151
    .end local v5           #anglePressedIcon:F
    .end local v7           #dx:D
    .end local v9           #dy:D
    .end local v13           #paint:Landroid/graphics/Paint;
    .end local v14           #pressedIcon:Landroid/graphics/drawable/BitmapDrawable;
    .end local v19           #translatePressedIcon:F
    :cond_0
    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    div-int/lit8 v25, v25, 0x2

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v25, v0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v25, v25, v26

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 153
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 154
    const/4 v11, 0x0

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/action/ActionView;->mActionItem:Lcom/htc/painting/penmenu/action/ActionItem;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/painting/penmenu/action/ActionItem;->isRunning()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/penmenu/action/ActionView;->postInvalidate()V

    .line 162
    .end local v4           #angle:F
    .end local v6           #bgAlpha:I
    .end local v11           #icon:Landroid/graphics/Bitmap;
    .end local v12           #iconCanvas:Landroid/graphics/Canvas;
    .end local v17           #tempIcon:Landroid/graphics/Bitmap;
    .end local v20           #x:D
    .end local v22           #y:D
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 163
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 164
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/htc/painting/penmenu/action/ActionView;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/action/ActionPanel;->getPenMenuSize()I

    move-result v0

    .line 79
    .local v0, size:I
    invoke-virtual {p0, v0, v0}, Lcom/htc/painting/penmenu/action/ActionView;->setMeasuredDimension(II)V

    .line 80
    return-void
.end method

.method setActionItem(Lcom/htc/painting/penmenu/action/ActionItem;)V
    .locals 0
    .parameter "actionItem"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/painting/penmenu/action/ActionView;->mActionItem:Lcom/htc/painting/penmenu/action/ActionItem;

    .line 62
    return-void
.end method

.method setActionPanel(Lcom/htc/painting/penmenu/action/ActionPanel;)V
    .locals 0
    .parameter "actionPanel"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/painting/penmenu/action/ActionView;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    .line 53
    return-void
.end method

.method setInnerRadius(I)V
    .locals 0
    .parameter "radius"

    .prologue
    .line 65
    iput p1, p0, Lcom/htc/painting/penmenu/action/ActionView;->mInnerRadius:I

    .line 66
    return-void
.end method

.method setSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 69
    iput p1, p0, Lcom/htc/painting/penmenu/action/ActionView;->mSize:I

    .line 70
    return-void
.end method
