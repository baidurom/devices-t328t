.class public Lcom/htc/painting/penmenu/menu/OptionPanel;
.super Landroid/view/View;
.source "OptionPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/penmenu/menu/OptionPanel$State;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "OptionPanel"


# instance fields
.field private mHiddenMenu:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOption:Lcom/htc/painting/penmenu/menu/Option;

.field private mSize:I

.field private mState:Lcom/htc/painting/penmenu/menu/OptionPanel$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 41
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/painting/penmenu/menu/OptionPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/painting/penmenu/menu/OptionPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu/menu/OptionPanel;->mHiddenMenu:Ljava/util/Set;

    .line 50
    invoke-direct {p0}, Lcom/htc/painting/penmenu/menu/OptionPanel;->initView()V

    .line 51
    return-void
.end method

.method private getNonIgnoredItemCount(Ljava/util/List;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/htc/painting/penmenu/menu/OptionItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, optionItems:Ljava/util/List;,"Ljava/util/List<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 203
    :cond_0
    const/4 v2, 0x0

    .line 211
    :cond_1
    return v2

    .line 205
    :cond_2
    const/4 v2, 0x0

    .line 206
    .local v2, ret:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu/menu/OptionItem;

    .line 207
    .local v1, item:Lcom/htc/painting/penmenu/menu/OptionItem;
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/OptionItem;->isIgnored()Z

    move-result v3

    if-nez v3, :cond_3

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x1

    .line 215
    iget-object v7, p0, Lcom/htc/painting/penmenu/menu/OptionPanel;->mState:Lcom/htc/painting/penmenu/menu/OptionPanel$State;

    sget-object v8, Lcom/htc/painting/penmenu/menu/OptionPanel$State;->FULL:Lcom/htc/painting/penmenu/menu/OptionPanel$State;

    if-eq v7, v8, :cond_1

    move v3, v6

    .line 279
    :cond_0
    :goto_0
    return v3

    .line 223
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/htc/painting/penmenu/menu/OptionPanel;->isValideArea(FF)Z

    move-result v3

    .line 224
    .local v3, inValidArea:Z
    if-nez v3, :cond_2

    move v3, v6

    .line 225
    goto :goto_0

    .line 229
    :cond_2
    iget-object v7, p0, Lcom/htc/painting/penmenu/menu/OptionPanel;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    invoke-virtual {v7}, Lcom/htc/painting/penmenu/menu/Option;->getOptionItemsCopy()Ljava/util/List;

    move-result-object v5

    .line 230
    .local v5, optionItemsCopy:Ljava/util/List;,"Ljava/util/List<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    if-eqz v5, :cond_0

    .line 234
    const/4 v1, 0x0

    .line 235
    .local v1, gotFocus:Z
    const/4 v0, -0x1

    .line 237
    .local v0, focusId:I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/penmenu/menu/OptionItem;

    .line 238
    .local v4, item:Lcom/htc/painting/penmenu/menu/OptionItem;
    invoke-virtual {v4}, Lcom/htc/painting/penmenu/menu/OptionItem;->isIgnored()Z

    move-result v7

    if-nez v7, :cond_3

    .line 241
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-double v9, v9

    invoke-virtual {v4, v7, v8, v9, v10}, Lcom/htc/painting/penmenu/menu/OptionItem;->contain(DD)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 242
    iget-object v7, p0, Lcom/htc/painting/penmenu/menu/OptionPanel;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    invoke-virtual {v7}, Lcom/htc/painting/penmenu/menu/Option;->updateUseTime()Z

    move-result v7

    if-ne v7, v11, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_4

    .line 247
    invoke-virtual {v4}, Lcom/htc/painting/penmenu/menu/OptionItem;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 248
    invoke-virtual {v4, v11}, Lcom/htc/painting/penmenu/menu/OptionItem;->setFocus(Z)V

    .line 249
    const/4 v1, 0x1

    .line 250
    invoke-virtual {v4}, Lcom/htc/painting/penmenu/menu/OptionItem;->getId()I

    move-result v0

    .line 252
    invoke-virtual {v4, v11}, Lcom/htc/painting/penmenu/menu/OptionItem;->isPlayAnim(Z)Z

    move-result v7

    if-ne v7, v11, :cond_4

    .line 253
    invoke-virtual {v4}, Lcom/htc/painting/penmenu/menu/OptionItem;->startAnim()V

    .line 257
    :cond_4
    const/4 v3, 0x1

    .line 262
    .end local v4           #item:Lcom/htc/painting/penmenu/menu/OptionItem;
    :cond_5
    if-ne v1, v11, :cond_8

    .line 263
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/penmenu/menu/OptionItem;

    .line 264
    .restart local v4       #item:Lcom/htc/painting/penmenu/menu/OptionItem;
    invoke-virtual {v4}, Lcom/htc/painting/penmenu/menu/OptionItem;->getFocus()Z

    move-result v7

    if-ne v7, v11, :cond_6

    invoke-virtual {v4}, Lcom/htc/painting/penmenu/menu/OptionItem;->getId()I

    move-result v7

    if-eq v7, v0, :cond_6

    .line 265
    invoke-virtual {v4, v6}, Lcom/htc/painting/penmenu/menu/OptionItem;->setFocus(Z)V

    .line 266
    invoke-virtual {v4, v6}, Lcom/htc/painting/penmenu/menu/OptionItem;->isPlayAnim(Z)Z

    move-result v7

    if-ne v7, v11, :cond_6

    .line 267
    invoke-virtual {v4}, Lcom/htc/painting/penmenu/menu/OptionItem;->startAnim()V

    goto :goto_1

    .line 271
    .end local v4           #item:Lcom/htc/painting/penmenu/menu/OptionItem;
    :cond_7
    iget-object v6, p0, Lcom/htc/painting/penmenu/menu/OptionPanel;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    invoke-virtual {v6, v0}, Lcom/htc/painting/penmenu/menu/Option;->onChange(I)V

    .line 274
    :cond_8
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/OptionPanel;->invalidate()V

    goto/16 :goto_0
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 62
    sget-object v1, Lcom/htc/painting/penmenu/menu/OptionPanel$State;->SHRINK:Lcom/htc/painting/penmenu/menu/OptionPanel$State;

    iput-object v1, p0, Lcom/htc/painting/penmenu/menu/OptionPanel;->mState:Lcom/htc/painting/penmenu/menu/OptionPanel$State;

    .line 64
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/OptionPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20802ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 65
    .local v0, background:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/htc/painting/penmenu/menu/OptionPanel;->mSize:I

    .line 67
    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/menu/OptionPanel;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    return-void
.end method

.method private isValideArea(FF)Z
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 190
    iget-object v5, p0, Lcom/htc/painting/penmenu/menu/OptionPanel;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    invoke-virtual {v5}, Lcom/htc/painting/penmenu/menu/Option;->getInnerRadius()I

    move-result v5

    int-to-float v2, v5

    .line 191
    .local v2, innerRadius:F
    iget v5, p0, Lcom/htc/painting/penmenu/menu/OptionPanel;->mSize:I

    int-to-float v3, v5

    .line 192
    .local v3, outerRadius:F
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/OptionPanel;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float v0, v5, p1

    .line 193
    .local v0, dx:F
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/OptionPanel;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float v1, v5, p2

    .line 194
    .local v1, dy:F
    mul-float v5, v0, v0

    mul-float v6, v1, v1

    add-float v4, v5, v6

    .line 195
    .local v4, rr:F
    mul-float v5, v2, v2

    cmpg-float v5, v5, v4

    if-gez v5, :cond_0

    mul-float v5, v3, v3

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_0

    .line 196
    const/4 v5, 0x1

    .line 198
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private processPenEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/OptionPanel;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/OptionPanel;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/Option;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    :cond_0
    const-string v0, "OptionPanel"

    const-string v1, "onPenEvent receive event after destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v0, 0x0

    .line 304
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/menu/OptionPanel;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method private processTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 313
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/OptionPanel;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/OptionPanel;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/Option;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    :cond_0
    const-string v1, "OptionPanel"

    const-string v2, "onTouchEvent receive event after destroyed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v1, 0x0

    .line 323
    :goto_0
    return v1

    .line 318
    :cond_1
    invoke-static {p1}, Landroid/view/MotionEvent;->isPenEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 319
    .local v0, isPen:Z
    if-eqz v0, :cond_2

    .line 320
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/menu/OptionPanel;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 323
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/htc/painting/penmenu/menu/OptionPanel;->isValideArea(FF)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public display()V
    .locals 1

    .prologue
    .line 348
    sget-object v0, Lcom/htc/painting/penmenu/menu/OptionPanel$State;->FULL:Lcom/htc/painting/penmenu/menu/OptionPanel$State;

    iput-object v0, p0, Lcom/htc/painting/penmenu/menu/OptionPanel;->mState:Lcom/htc/painting/penmenu/menu/OptionPanel$State;

    .line 349
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/menu/OptionPanel;->setVisibility(I)V

    .line 350
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/OptionPanel;->invalidate()V

    .line 351
    return-void
.end method

.method getSize()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lcom/htc/painting/penmenu/menu/OptionPanel;->mSize:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 29
    .parameter "canvas"

    .prologue
    .line 89
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/menu/OptionPanel;->mHiddenMenu:Ljava/util/Set;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/menu/OptionPanel;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/painting/penmenu/menu/Option;->getMenuId()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/menu/OptionPanel;->mState:Lcom/htc/painting/penmenu/menu/OptionPanel$State;

    move-object/from16 v23, v0

    sget-object v24, Lcom/htc/painting/penmenu/menu/OptionPanel$State;->SHRINK:Lcom/htc/painting/penmenu/menu/OptionPanel$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 99
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 100
    .local v7, clipBounds:Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_0

    .line 104
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 106
    new-instance v16, Landroid/graphics/PaintFlagsDrawFilter;

    const/16 v23, 0x0

    const/16 v24, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    .line 107
    .local v16, setfil:Landroid/graphics/PaintFlagsDrawFilter;
    new-instance v15, Landroid/graphics/PaintFlagsDrawFilter;

    const/16 v23, 0x2

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v15, v0, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    .line 108
    .local v15, remfil:Landroid/graphics/PaintFlagsDrawFilter;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/menu/OptionPanel;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/painting/penmenu/menu/Option;->getInnerRadius()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/painting/penmenu/menu/OptionPanel;->mSize:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x4000

    div-float v4, v23, v24

    .line 113
    .local v4, ICON_ORBIT_RADIUS:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/menu/OptionPanel;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/painting/penmenu/menu/Option;->getOptionItemsCopy()Ljava/util/List;

    move-result-object v13

    .line 114
    .local v13, optionItemsCopy:Ljava/util/List;,"Ljava/util/List<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    if-eqz v13, :cond_6

    .line 115
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/painting/penmenu/menu/OptionPanel;->getNonIgnoredItemCount(Ljava/util/List;)I

    move-result v8

    .line 121
    .local v8, count:I
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 122
    .local v14, paint:Landroid/graphics/Paint;
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 124
    const/high16 v23, 0x42b4

    int-to-float v0, v8

    move/from16 v24, v0

    const/high16 v25, 0x4000

    mul-float v24, v24, v25

    div-float v6, v23, v24

    .line 125
    .local v6, beginAngle:F
    move v5, v6

    .line 127
    .local v5, angle:F
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v10, v0, :cond_6

    .line 128
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/painting/penmenu/menu/OptionItem;

    .line 129
    .local v12, item:Lcom/htc/painting/penmenu/menu/OptionItem;
    invoke-virtual {v12}, Lcom/htc/painting/penmenu/menu/OptionItem;->isIgnored()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 127
    :cond_2
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 132
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/penmenu/menu/OptionPanel;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    float-to-double v0, v4

    move-wide/from16 v25, v0

    float-to-double v0, v5

    move-wide/from16 v27, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    move-result-wide v27

    mul-double v25, v25, v27

    sub-double v19, v23, v25

    .line 133
    .local v19, x:D
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/penmenu/menu/OptionPanel;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    float-to-double v0, v4

    move-wide/from16 v25, v0

    float-to-double v0, v5

    move-wide/from16 v27, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sin(D)D

    move-result-wide v27

    mul-double v25, v25, v27

    sub-double v21, v23, v25

    .line 134
    .local v21, y:D
    const-string v23, "OptionPanel"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "onDraw - item: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", angle:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", (x, y)=("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    move-wide/from16 v0, v19

    move-wide/from16 v2, v21

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/htc/painting/penmenu/menu/OptionItem;->setCenter(DD)V

    .line 136
    invoke-virtual {v12, v5}, Lcom/htc/painting/penmenu/menu/OptionItem;->setDegree(F)V

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/penmenu/menu/OptionPanel;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual {v12}, Lcom/htc/painting/penmenu/menu/OptionItem;->getRadiusDecreasement()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v4, v24

    float-to-double v0, v5

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-float v0, v0

    move/from16 v25, v0

    mul-float v24, v24, v25

    sub-float v17, v23, v24

    .line 139
    .local v17, tx:F
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/penmenu/menu/OptionPanel;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual {v12}, Lcom/htc/painting/penmenu/menu/OptionItem;->getRadiusDecreasement()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v4, v24

    float-to-double v0, v5

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-float v0, v0

    move/from16 v25, v0

    mul-float v24, v24, v25

    sub-float v18, v23, v24

    .line 141
    .local v18, ty:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/menu/OptionPanel;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/painting/penmenu/menu/Option;->getCurrentColor()I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/htc/painting/penmenu/menu/OptionItem;->getOptionIcon(I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 142
    .local v11, icon:Landroid/graphics/Bitmap;
    if-eqz v11, :cond_2

    .line 154
    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 155
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 156
    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 157
    invoke-virtual {v12}, Lcom/htc/painting/penmenu/menu/OptionItem;->getRotateDegree()F

    move-result v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 158
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v11, v1, v2, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 160
    invoke-virtual {v12}, Lcom/htc/painting/penmenu/menu/OptionItem;->isRunning()Z

    move-result v23

    if-eqz v23, :cond_4

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/menu/OptionPanel;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/painting/penmenu/menu/Option;->getCurrentColor()I

    move-result v25

    move-wide/from16 v0, v23

    move/from16 v2, v25

    invoke-virtual {v12, v0, v1, v2}, Lcom/htc/painting/penmenu/menu/OptionItem;->getAnimFrame(JI)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 163
    .local v9, frame:Landroid/graphics/Bitmap;
    if-nez v9, :cond_5

    .line 164
    invoke-virtual {v12}, Lcom/htc/painting/penmenu/menu/OptionItem;->stopAnim()V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/menu/OptionPanel;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/painting/penmenu/menu/Option;->getCurrentColor()I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/htc/painting/penmenu/menu/OptionItem;->getOptionIcon(I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 166
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v11, v1, v2, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 176
    .end local v9           #frame:Landroid/graphics/Bitmap;
    :cond_4
    :goto_3
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 177
    const/4 v11, 0x0

    .line 179
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 180
    const/high16 v23, 0x42b4

    int-to-float v0, v8

    move/from16 v24, v0

    div-float v23, v23, v24

    add-float v5, v5, v23

    goto/16 :goto_2

    .line 168
    .restart local v9       #frame:Landroid/graphics/Bitmap;
    :cond_5
    new-instance v23, Landroid/graphics/PorterDuffXfermode;

    sget-object v24, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v23 .. v24}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 169
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v9, v1, v2, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/penmenu/menu/OptionPanel;->postInvalidate()V

    .line 171
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3

    .line 183
    .end local v5           #angle:F
    .end local v6           #beginAngle:F
    .end local v8           #count:I
    .end local v9           #frame:Landroid/graphics/Bitmap;
    .end local v10           #i:I
    .end local v11           #icon:Landroid/graphics/Bitmap;
    .end local v12           #item:Lcom/htc/painting/penmenu/menu/OptionItem;
    .end local v14           #paint:Landroid/graphics/Paint;
    .end local v17           #tx:F
    .end local v18           #ty:F
    .end local v19           #x:D
    .end local v21           #y:D
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 184
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 76
    iget v0, p0, Lcom/htc/painting/penmenu/menu/OptionPanel;->mSize:I

    iget v1, p0, Lcom/htc/painting/penmenu/menu/OptionPanel;->mSize:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/painting/penmenu/menu/OptionPanel;->setMeasuredDimension(II)V

    .line 77
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 289
    invoke-static {p1}, Landroid/view/MotionEvent;->isPenEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/menu/OptionPanel;->processPenEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 292
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/menu/OptionPanel;->processTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setMenuHidden(ZI)V
    .locals 2
    .parameter "enable"
    .parameter "menuId"

    .prologue
    .line 377
    if-eqz p1, :cond_0

    .line 378
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/OptionPanel;->mHiddenMenu:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 382
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/OptionPanel;->mHiddenMenu:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setOption(Lcom/htc/painting/penmenu/menu/Option;)V
    .locals 0
    .parameter "option"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/htc/painting/penmenu/menu/OptionPanel;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    .line 59
    return-void
.end method

.method public setState(Lcom/htc/painting/penmenu/menu/OptionPanel$State;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 358
    iput-object p1, p0, Lcom/htc/painting/penmenu/menu/OptionPanel;->mState:Lcom/htc/painting/penmenu/menu/OptionPanel$State;

    .line 359
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/OptionPanel;->mState:Lcom/htc/painting/penmenu/menu/OptionPanel$State;

    sget-object v1, Lcom/htc/painting/penmenu/menu/OptionPanel$State;->SHRINK:Lcom/htc/painting/penmenu/menu/OptionPanel$State;

    if-ne v0, v1, :cond_0

    .line 360
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/menu/OptionPanel;->setVisibility(I)V

    .line 365
    :goto_0
    return-void

    .line 363
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/menu/OptionPanel;->setVisibility(I)V

    goto :goto_0
.end method

.method public shrink()V
    .locals 1

    .prologue
    .line 335
    sget-object v0, Lcom/htc/painting/penmenu/menu/OptionPanel$State;->SHRINK:Lcom/htc/painting/penmenu/menu/OptionPanel$State;

    iput-object v0, p0, Lcom/htc/painting/penmenu/menu/OptionPanel;->mState:Lcom/htc/painting/penmenu/menu/OptionPanel$State;

    .line 336
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/menu/OptionPanel;->setVisibility(I)V

    .line 337
    return-void
.end method
