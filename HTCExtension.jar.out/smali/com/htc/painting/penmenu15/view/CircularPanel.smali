.class public Lcom/htc/painting/penmenu15/view/CircularPanel;
.super Landroid/widget/FrameLayout;
.source "CircularPanel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CircularPanel"


# instance fields
.field private mButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/CircularPanel;->mButtons:Ljava/util/ArrayList;

    .line 31
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/CircularPanel;->init(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/CircularPanel;->mButtons:Ljava/util/ArrayList;

    .line 36
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/CircularPanel;->init(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/CircularPanel;->mButtons:Ljava/util/ArrayList;

    .line 41
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/CircularPanel;->init(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 47
    return-void
.end method


# virtual methods
.method public addButton(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .parameter "button"
    .parameter "params"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/CircularPanel;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/htc/painting/penmenu15/view/CircularPanel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    return-void
.end method

.method protected getLayOutParamFor(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 6
    .parameter "button"

    .prologue
    const/4 v3, -0x2

    .line 90
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x33

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 93
    .local v1, params:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/CircularPanel;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/CircularPanel;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/CircularPanel;->getRight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/CircularPanel;->getBottom()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 94
    .local v0, drawingRect:Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 95
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 96
    return-object v1
.end method

.method public makeButton(Landroid/content/Context;IIIII)Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;
    .locals 9
    .parameter "context"
    .parameter "id"
    .parameter "deg"
    .parameter "dist"
    .parameter "texRes"
    .parameter "iconRes"

    .prologue
    .line 56
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/htc/painting/penmenu15/view/CircularPanel;->makeButton(Landroid/content/Context;IIIIIIZ)Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    move-result-object v0

    return-object v0
.end method

.method public makeButton(Landroid/content/Context;IIIIIIZ)Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;
    .locals 1
    .parameter "context"
    .parameter "id"
    .parameter "deg"
    .parameter "dist"
    .parameter "texRes"
    .parameter "iconRes"
    .parameter "bkgMode"
    .parameter "innerBorder"

    .prologue
    .line 67
    new-instance v0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-direct {v0, p1, p7, p8}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;-><init>(Landroid/content/Context;IZ)V

    .line 68
    .local v0, button:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;
    invoke-virtual {v0, p3, p4}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->initialize(II)V

    .line 69
    invoke-virtual {v0, p2}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setId(I)V

    .line 70
    invoke-virtual {v0, p5, p6}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setLabel(II)V

    .line 72
    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/penmenu15/view/CircularPanel;->getChildCount()I

    move-result v8

    .line 108
    .local v8, count:I
    new-instance v14, Landroid/graphics/RectF;

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 110
    .local v14, drawingRect:Landroid/graphics/RectF;
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v8, :cond_1

    .line 111
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu15/view/CircularPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 112
    .local v7, child:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 113
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout$LayoutParams;

    .line 115
    .local v17, lp:Landroid/widget/FrameLayout$LayoutParams;
    instance-of v0, v7, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 116
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 117
    .local v18, width:I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .local v15, height:I
    move-object v6, v7

    .line 119
    check-cast v6, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 121
    .local v6, button:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;
    invoke-virtual {v6}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->getIconCenterDist()I

    move-result v13

    .line 123
    .local v13, dist:I
    invoke-virtual {v6}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->getDegree()I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 124
    .local v4, angle:D
    int-to-double v0, v13

    move-wide/from16 v19, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    mul-double v9, v19, v21

    .line 125
    .local v9, deltaX:D
    int-to-double v0, v13

    move-wide/from16 v19, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    mul-double v11, v19, v21

    .line 126
    .local v11, deltaY:D
    invoke-virtual {v14}, Landroid/graphics/RectF;->centerX()F

    move-result v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    add-double v19, v19, v9

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v19, v0

    div-int/lit8 v20, v18, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 127
    invoke-virtual {v14}, Landroid/graphics/RectF;->centerY()F

    move-result v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    sub-double v19, v19, v11

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v19, v0

    div-int/lit8 v20, v15, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 110
    .end local v4           #angle:D
    .end local v6           #button:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;
    .end local v9           #deltaX:D
    .end local v11           #deltaY:D
    .end local v13           #dist:I
    .end local v15           #height:I
    .end local v17           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v18           #width:I
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 136
    .end local v7           #child:Landroid/view/View;
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 137
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "d"

    .prologue
    .line 144
    if-eqz p1, :cond_0

    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 145
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 146
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v1, Lcom/htc/painting/penmenu15/drawable/NoScaleBitmapDrawable;

    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/CircularPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/htc/painting/penmenu15/drawable/NoScaleBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 147
    .local v1, noScale:Lcom/htc/painting/penmenu15/drawable/NoScaleBitmapDrawable;
    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #noScale:Lcom/htc/painting/penmenu15/drawable/NoScaleBitmapDrawable;
    :cond_0
    return-void
.end method
