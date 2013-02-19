.class public Lcom/htc/painting/penmenu/menu/MenuView;
.super Landroid/view/View;
.source "MenuView.java"


# static fields
.field private static final ICON_RADIUS_ADJUST:F = 6.0f

.field private static final LOG_TAG:Ljava/lang/String; = "MenuView"


# instance fields
.field private mMenuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/painting/penmenu/menu/MenuOptions",
            "<+",
            "Lcom/htc/painting/penmenu/menu/OptionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuPanel:Lcom/htc/painting/penmenu/menu/MenuPanel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/painting/penmenu/menu/MenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/painting/penmenu/menu/MenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 31
    .parameter "canvas"

    .prologue
    .line 75
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 77
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 78
    new-instance v17, Landroid/graphics/PaintFlagsDrawFilter;

    const/16 v25, 0x0

    const/16 v26, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    .line 79
    .local v17, setfil:Landroid/graphics/PaintFlagsDrawFilter;
    new-instance v16, Landroid/graphics/PaintFlagsDrawFilter;

    const/16 v25, 0x2

    const/16 v26, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    .line 80
    .local v16, remfil:Landroid/graphics/PaintFlagsDrawFilter;
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/menu/MenuView;->mMenuPanel:Lcom/htc/painting/penmenu/menu/MenuPanel;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/painting/penmenu/menu/MenuPanel;->getInnerRadius()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/menu/MenuView;->mMenuPanel:Lcom/htc/painting/penmenu/menu/MenuPanel;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/painting/penmenu/menu/MenuPanel;->getSize()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x4000

    div-float v25, v25, v26

    const/high16 v26, 0x40c0

    sub-float v19, v25, v26

    .line 84
    .local v19, translate:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/menu/MenuView;->mMenuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/menu/MenuView;->mMenuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v25

    if-eqz v25, :cond_1

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/menu/MenuView;->mMenuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v13

    .line 86
    .local v13, menuItem:Lcom/htc/painting/penmenu/menu/MenuItem;
    invoke-virtual {v13}, Lcom/htc/painting/penmenu/menu/MenuItem;->getAngleByDegree()F

    move-result v4

    .line 87
    .local v4, angle:F
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/penmenu/menu/MenuView;->getWidth()I

    move-result v25

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v27, v0

    float-to-double v0, v4

    move-wide/from16 v29, v0

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v29

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->cos(D)D

    move-result-wide v29

    mul-double v27, v27, v29

    sub-double v21, v25, v27

    .line 88
    .local v21, x:D
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/penmenu/menu/MenuView;->getHeight()I

    move-result v25

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v27, v0

    float-to-double v0, v4

    move-wide/from16 v29, v0

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v29

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->sin(D)D

    move-result-wide v29

    mul-double v27, v27, v29

    sub-double v23, v25, v27

    .line 90
    .local v23, y:D
    invoke-virtual {v13}, Lcom/htc/painting/penmenu/menu/MenuItem;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v18

    .line 91
    .local v18, tempIcon:Landroid/graphics/Bitmap;
    if-eqz v18, :cond_1

    .line 97
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    sget-object v27, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v25 .. v27}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 98
    .local v11, icon:Landroid/graphics/Bitmap;
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12}, Landroid/graphics/Canvas;-><init>()V

    .line 99
    .local v12, iconCanvas:Landroid/graphics/Canvas;
    invoke-virtual {v12, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/menu/MenuView;->mMenuPanel:Lcom/htc/painting/penmenu/menu/MenuPanel;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/painting/penmenu/menu/MenuPanel;->getCorner()Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    move-result-object v25

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v27

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v12, v1, v2}, Lcom/htc/painting/penmenu/PenMenu;->adjustCanvasByCorner(Lcom/htc/painting/penmenu/PenMenu$DockCorner;Landroid/graphics/Canvas;II)V

    .line 103
    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/penmenu/menu/MenuView;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x20802b9

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    check-cast v15, Landroid/graphics/drawable/BitmapDrawable;

    .line 107
    .local v15, pressedIcon:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v13}, Lcom/htc/painting/penmenu/menu/MenuItem;->getBackgroundAlpha()I

    move-result v6

    .line 109
    .local v6, bgAlpha:I
    if-lez v6, :cond_0

    .line 110
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 111
    invoke-virtual {v13}, Lcom/htc/painting/penmenu/menu/MenuItem;->getBeginAngleByDegree()F

    move-result v5

    .line 113
    .local v5, anglePressedIcon:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/menu/MenuView;->mMenuPanel:Lcom/htc/painting/penmenu/menu/MenuPanel;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/painting/penmenu/menu/MenuPanel;->getSize()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v20, v0

    .line 114
    .local v20, translatePressedIcon:F
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/penmenu/menu/MenuView;->getWidth()I

    move-result v25

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v27, v0

    float-to-double v0, v5

    move-wide/from16 v29, v0

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v29

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->cos(D)D

    move-result-wide v29

    mul-double v27, v27, v29

    sub-double v7, v25, v27

    .line 115
    .local v7, dx:D
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/penmenu/menu/MenuView;->getHeight()I

    move-result v25

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v27, v0

    float-to-double v0, v5

    move-wide/from16 v29, v0

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v29

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->sin(D)D

    move-result-wide v29

    mul-double v27, v27, v29

    sub-double v9, v25, v27

    .line 117
    .local v9, dy:D
    double-to-float v0, v7

    move/from16 v25, v0

    double-to-float v0, v9

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 118
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 120
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 121
    .local v14, paint:Landroid/graphics/Paint;
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    invoke-virtual {v14, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 123
    new-instance v25, Landroid/graphics/PorterDuffXfermode;

    sget-object v26, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v25 .. v26}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 125
    invoke-virtual {v15}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual {v15}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v27

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 126
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 129
    .end local v5           #anglePressedIcon:F
    .end local v7           #dx:D
    .end local v9           #dy:D
    .end local v14           #paint:Landroid/graphics/Paint;
    .end local v20           #translatePressedIcon:F
    :cond_0
    invoke-virtual {v13}, Lcom/htc/painting/penmenu/menu/MenuItem;->isEnabled()Z

    move-result v25

    if-nez v25, :cond_2

    .line 135
    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v25, v0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v25, v25, v26

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sub-float v26, v26, v27

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 143
    :goto_0
    invoke-virtual {v13}, Lcom/htc/painting/penmenu/menu/MenuItem;->isRunning()Z

    move-result v25

    if-eqz v25, :cond_1

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/penmenu/menu/MenuView;->postInvalidate()V

    .line 149
    .end local v4           #angle:F
    .end local v6           #bgAlpha:I
    .end local v11           #icon:Landroid/graphics/Bitmap;
    .end local v12           #iconCanvas:Landroid/graphics/Canvas;
    .end local v13           #menuItem:Lcom/htc/painting/penmenu/menu/MenuItem;
    .end local v15           #pressedIcon:Landroid/graphics/drawable/BitmapDrawable;
    .end local v18           #tempIcon:Landroid/graphics/Bitmap;
    .end local v21           #x:D
    .end local v23           #y:D
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 150
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 151
    return-void

    .line 139
    .restart local v4       #angle:F
    .restart local v6       #bgAlpha:I
    .restart local v11       #icon:Landroid/graphics/Bitmap;
    .restart local v12       #iconCanvas:Landroid/graphics/Canvas;
    .restart local v13       #menuItem:Lcom/htc/painting/penmenu/menu/MenuItem;
    .restart local v15       #pressedIcon:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v18       #tempIcon:Landroid/graphics/Bitmap;
    .restart local v21       #x:D
    .restart local v23       #y:D
    :cond_2
    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v25, v0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v25, v25, v26

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sub-float v26, v26, v27

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 61
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/MenuView;->mMenuPanel:Lcom/htc/painting/penmenu/menu/MenuPanel;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/MenuPanel;->getPenMenuSize()I

    move-result v0

    .line 62
    .local v0, size:I
    invoke-virtual {p0, v0, v0}, Lcom/htc/painting/penmenu/menu/MenuView;->setMeasuredDimension(II)V

    .line 63
    return-void
.end method

.method public setMenuOptions(Lcom/htc/painting/penmenu/menu/MenuOptions;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/painting/penmenu/menu/MenuOptions",
            "<+",
            "Lcom/htc/painting/penmenu/menu/OptionItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, menuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    iput-object p1, p0, Lcom/htc/painting/penmenu/menu/MenuView;->mMenuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;

    .line 52
    return-void
.end method

.method setMenuPanel(Lcom/htc/painting/penmenu/menu/MenuPanel;)V
    .locals 0
    .parameter "menuPanel"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/painting/penmenu/menu/MenuView;->mMenuPanel:Lcom/htc/painting/penmenu/menu/MenuPanel;

    .line 44
    return-void
.end method
