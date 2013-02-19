.class public Lcom/htc/painting/penmenu/action/ActionPanel;
.super Landroid/widget/FrameLayout;
.source "ActionPanel.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ActionPanel"


# instance fields
.field private mActionViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/action/ActionView;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/OnActionPerformListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/painting/penmenu/action/ActionPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/painting/penmenu/action/ActionPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mActionViewList:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mListener:Ljava/util/List;

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/painting/penmenu/action/ActionPanel;->initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method private handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    .line 243
    .local v10, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    .line 244
    .local v11, y:F
    invoke-direct {p0, v10, v11}, Lcom/htc/painting/penmenu/action/ActionPanel;->isValideArea(FF)Z

    move-result v9

    .line 246
    .local v9, ret:Z
    iget-object v12, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v12}, Lcom/htc/painting/penmenu/PenMenu;->getActionList()Ljava/util/List;

    move-result-object v2

    .line 247
    .local v2, actionList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/action/ActionItem;>;"
    const/4 v12, 0x1

    if-ne v9, v12, :cond_0

    iget-object v12, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/htc/painting/penmenu/PenMenu;->setUseTime(Z)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 248
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 277
    :cond_0
    return v9

    .line 252
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/painting/penmenu/action/ActionItem;

    .line 253
    .local v5, item:Lcom/htc/painting/penmenu/action/ActionItem;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    invoke-direct {p0, v12, v13}, Lcom/htc/painting/penmenu/action/ActionPanel;->toRadius(FF)D

    move-result-wide v7

    .line 254
    .local v7, r:D
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    invoke-direct {p0, v12, v13}, Lcom/htc/painting/penmenu/action/ActionPanel;->toAngle(FF)D

    move-result-wide v0

    .line 256
    .local v0, a:D
    double-to-float v12, v7

    double-to-float v13, v0

    invoke-virtual {v5, v12, v13}, Lcom/htc/painting/penmenu/action/ActionItem;->contain(FF)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    if-nez v12, :cond_2

    .line 263
    invoke-virtual {v5}, Lcom/htc/painting/penmenu/action/ActionItem;->isActive()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v5}, Lcom/htc/painting/penmenu/action/ActionItem;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 264
    invoke-virtual {v5}, Lcom/htc/painting/penmenu/action/ActionItem;->changeState()V

    .line 265
    invoke-virtual {v5}, Lcom/htc/painting/penmenu/action/ActionItem;->startAnim()V

    .line 266
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/action/ActionPanel;->invalidate()V

    .line 267
    iget-object v12, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mListener:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/painting/penmenu/OnActionPerformListener;

    .line 268
    .local v6, listener:Lcom/htc/painting/penmenu/OnActionPerformListener;
    invoke-virtual {v5}, Lcom/htc/painting/penmenu/action/ActionItem;->getActionId()I

    move-result v12

    invoke-interface {v6, v12}, Lcom/htc/painting/penmenu/OnActionPerformListener;->onActionPerform(I)Z

    goto :goto_0
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, -0x2

    .line 54
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x55

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 58
    .local v2, params:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/action/ActionPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x208027e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 59
    .local v0, background:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mSize:I

    .line 61
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 62
    .local v1, backgroundView:Landroid/widget/ImageView;
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    invoke-virtual {p0, v1}, Lcom/htc/painting/penmenu/action/ActionPanel;->addView(Landroid/view/View;)V

    .line 65
    return-void
.end method

.method private isValideArea(FF)Z
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/action/ActionPanel;->getWidth()I

    move-result v7

    .line 202
    .local v7, w:I
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/action/ActionPanel;->getHeight()I

    move-result v2

    .line 208
    .local v2, h:I
    iget-object v8, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v8}, Lcom/htc/painting/penmenu/PenMenu;->getBasePanelSize()I

    move-result v8

    int-to-float v3, v8

    .line 209
    .local v3, innerRadius:F
    iget v8, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mSize:I

    int-to-float v4, v8

    .line 211
    .local v4, outerRadius:F
    int-to-float v8, v7

    sub-float/2addr v8, v4

    cmpg-float v8, p1, v8

    if-ltz v8, :cond_0

    int-to-float v8, v2

    sub-float/2addr v8, v4

    cmpg-float v8, p2, v8

    if-gez v8, :cond_2

    .line 215
    :cond_0
    const/4 v5, 0x0

    .line 232
    :cond_1
    :goto_0
    return v5

    .line 218
    :cond_2
    const/4 v5, 0x0

    .line 220
    .local v5, ret:Z
    int-to-float v8, v7

    sub-float v0, v8, p1

    .line 221
    .local v0, dx:F
    int-to-float v8, v2

    sub-float v1, v8, p2

    .line 222
    .local v1, dy:F
    mul-float v8, v0, v0

    mul-float v9, v1, v1

    add-float v6, v8, v9

    .line 224
    .local v6, rr:F
    mul-float v8, v3, v3

    cmpg-float v8, v8, v6

    if-gez v8, :cond_1

    mul-float v8, v4, v4

    cmpg-float v8, v6, v8

    if-gtz v8, :cond_1

    .line 225
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private processPenEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    :cond_0
    const-string v0, "ActionPanel"

    const-string v1, "onPenEvent - receive event after destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v0, 0x0

    .line 302
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/action/ActionPanel;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method private processTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 310
    iget-object v1, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    :cond_0
    const-string v1, "ActionPanel"

    const-string v2, "onTouchEvent - receive event after destroyed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v1, 0x0

    .line 321
    :goto_0
    return v1

    .line 315
    :cond_1
    invoke-static {p1}, Landroid/view/MotionEvent;->isPenEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 316
    .local v0, isPen:Z
    if-eqz v0, :cond_2

    .line 317
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/action/ActionPanel;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 321
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/htc/painting/penmenu/action/ActionPanel;->isValideArea(FF)Z

    move-result v1

    goto :goto_0
.end method

.method private setupActionViews()V
    .locals 15

    .prologue
    const/4 v13, -0x2

    const/high16 v14, 0x42b4

    .line 100
    iget-object v11, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    if-nez v11, :cond_1

    .line 101
    const-string v11, "ActionPanel"

    const-string v12, "setupActionViews - PenMenu not be set yet!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    return-void

    .line 106
    :cond_1
    iget-object v11, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v11}, Lcom/htc/painting/penmenu/PenMenu;->getActionList()Ljava/util/List;

    move-result-object v1

    .line 107
    .local v1, actionList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/action/ActionItem;>;"
    iget-object v11, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v11}, Lcom/htc/painting/penmenu/PenMenu;->getActionCount()I

    move-result v5

    .line 108
    .local v5, count:I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-le v5, v11, :cond_2

    .line 109
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 113
    :cond_2
    int-to-float v11, v5

    const/high16 v12, 0x4000

    mul-float/2addr v11, v12

    div-float v4, v14, v11

    .line 114
    .local v4, beginAngle:F
    int-to-float v11, v5

    div-float v3, v14, v11

    .line 115
    .local v3, angleRange:F
    move v2, v4

    .line 116
    .local v2, angle:F
    iget-object v11, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v11}, Lcom/htc/painting/penmenu/PenMenu;->getBasePanelSize()I

    move-result v7

    .line 117
    .local v7, innerRadius:I
    iget v11, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mSize:I

    sub-int v9, v11, v7

    .line 119
    .local v9, radiusRange:I
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v11, 0x55

    invoke-direct {v8, v13, v13, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 121
    .local v8, params:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v5, :cond_0

    .line 122
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu/action/ActionItem;

    .line 123
    .local v0, actionItem:Lcom/htc/painting/penmenu/action/ActionItem;
    if-eqz v0, :cond_3

    .line 126
    int-to-float v11, v7

    int-to-float v12, v9

    int-to-float v13, v6

    mul-float/2addr v13, v3

    invoke-virtual {v0, v11, v12, v13, v3}, Lcom/htc/painting/penmenu/action/ActionItem;->setPosition(FFFF)V

    .line 127
    new-instance v10, Lcom/htc/painting/penmenu/action/ActionView;

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/action/ActionPanel;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/htc/painting/penmenu/action/ActionView;-><init>(Landroid/content/Context;)V

    .line 128
    .local v10, view:Lcom/htc/painting/penmenu/action/ActionView;
    invoke-virtual {v10, p0}, Lcom/htc/painting/penmenu/action/ActionView;->setActionPanel(Lcom/htc/painting/penmenu/action/ActionPanel;)V

    .line 129
    invoke-virtual {v10, v8}, Lcom/htc/painting/penmenu/action/ActionView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    invoke-virtual {v10, v0}, Lcom/htc/painting/penmenu/action/ActionView;->setActionItem(Lcom/htc/painting/penmenu/action/ActionItem;)V

    .line 131
    iget-object v11, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v11}, Lcom/htc/painting/penmenu/PenMenu;->getBasePanelSize()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/htc/painting/penmenu/action/ActionView;->setInnerRadius(I)V

    .line 132
    iget v11, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mSize:I

    invoke-virtual {v10, v11}, Lcom/htc/painting/penmenu/action/ActionView;->setSize(I)V

    .line 133
    iget-object v11, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mActionViewList:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-virtual {p0, v10}, Lcom/htc/painting/penmenu/action/ActionPanel;->addView(Landroid/view/View;)V

    .line 137
    .end local v10           #view:Lcom/htc/painting/penmenu/action/ActionView;
    :cond_3
    int-to-float v11, v5

    div-float v11, v14, v11

    add-float/2addr v2, v11

    .line 121
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private toAngle(FF)D
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/action/ActionPanel;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v3, v4, p1

    .line 333
    .local v3, w:F
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/action/ActionPanel;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float v2, v4, p2

    .line 334
    .local v2, h:F
    div-float v4, v2, v3

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    .line 335
    .local v0, arc:D
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    return-wide v4
.end method

.method private toRadius(FF)D
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/action/ActionPanel;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float v1, v2, p1

    .line 347
    .local v1, w:F
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/action/ActionPanel;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v2, p2

    .line 348
    .local v0, h:F
    mul-float v2, v1, v1

    mul-float v3, v0, v0

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    return-wide v2
.end method


# virtual methods
.method public addOnActionClickListener(Lcom/htc/painting/penmenu/OnActionPerformListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    return-void
.end method

.method public getDockCorner()Lcom/htc/painting/penmenu/PenMenu$DockCorner;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/PenMenu;->getCorner()Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->RIGHT_BOTTOM:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    goto :goto_0
.end method

.method public getPenMenuSize()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/PenMenu;->getSize()I

    move-result v0

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mSize:I

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 286
    invoke-static {p1}, Landroid/view/MotionEvent;->isPenEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/action/ActionPanel;->processPenEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 289
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/action/ActionPanel;->processTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public releaseResources()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mActionViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 357
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/action/ActionPanel;->removeAllViews()V

    .line 358
    iget-object v0, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 359
    return-void
.end method

.method public resetActions()V
    .locals 6

    .prologue
    .line 146
    iget-object v4, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    if-nez v4, :cond_1

    .line 147
    const-string v4, "ActionPanel"

    const-string v5, "resetActions - PenMenu not be set yet!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v4, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu/PenMenu;->getActionList()Ljava/util/List;

    move-result-object v1

    .line 152
    .local v1, actionList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/action/ActionItem;>;"
    iget-object v4, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu/PenMenu;->getActionCount()I

    move-result v2

    .line 153
    .local v2, count:I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v2, v4, :cond_2

    .line 154
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 157
    :cond_2
    iget-object v4, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mActionViewList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_4

    .line 159
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v4, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mActionViewList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 160
    iget-object v4, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mActionViewList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/htc/painting/penmenu/action/ActionPanel;->removeView(Landroid/view/View;)V

    .line 159
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 162
    :cond_3
    iget-object v4, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mActionViewList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 163
    invoke-direct {p0}, Lcom/htc/painting/penmenu/action/ActionPanel;->setupActionViews()V

    goto :goto_0

    .line 167
    .end local v3           #i:I
    :cond_4
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    iget-object v4, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mActionViewList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 168
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu/action/ActionItem;

    .line 169
    .local v0, actionItem:Lcom/htc/painting/penmenu/action/ActionItem;
    iget-object v4, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mActionViewList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/penmenu/action/ActionView;

    invoke-virtual {v4, v0}, Lcom/htc/painting/penmenu/action/ActionView;->setActionItem(Lcom/htc/painting/penmenu/action/ActionItem;)V

    .line 167
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public setPenMenu(Lcom/htc/painting/penmenu/PenMenu;)V
    .locals 0
    .parameter "penMenu"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    .line 182
    invoke-direct {p0}, Lcom/htc/painting/penmenu/action/ActionPanel;->setupActionViews()V

    .line 183
    return-void
.end method
