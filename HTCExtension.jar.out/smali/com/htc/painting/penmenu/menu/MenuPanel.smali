.class public Lcom/htc/painting/penmenu/menu/MenuPanel;
.super Landroid/widget/FrameLayout;
.source "MenuPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/penmenu/menu/MenuPanel$State;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MenuPanel"


# instance fields
.field private mMenu:Lcom/htc/painting/penmenu/menu/Menu;

.field private mMenuViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSize:I

.field private mState:Lcom/htc/painting/penmenu/menu/MenuPanel$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 91
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/painting/penmenu/menu/MenuPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/painting/penmenu/menu/MenuPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu/menu/MenuPanel;->mMenuViewList:Ljava/util/List;

    .line 100
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/painting/penmenu/menu/MenuPanel;->initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method private handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    .line 208
    iget-object v11, p0, Lcom/htc/painting/penmenu/menu/MenuPanel;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    invoke-virtual {v11}, Lcom/htc/painting/penmenu/menu/Menu;->getState()Lcom/htc/painting/penmenu/menu/Menu$State;

    move-result-object v11

    sget-object v12, Lcom/htc/painting/penmenu/menu/Menu$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Menu$State;

    if-ne v11, v12, :cond_1

    .line 212
    const/4 v5, 0x0

    .line 259
    :cond_0
    :goto_0
    return v5

    .line 215
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    invoke-direct {p0, v11, v12}, Lcom/htc/painting/penmenu/menu/MenuPanel;->isValideArea(FF)Z

    move-result v5

    .line 217
    .local v5, inValidArea:Z
    const/4 v3, 0x0

    .line 218
    .local v3, gotFocus:Z
    const/4 v2, -0x1

    .line 220
    .local v2, focusId:I
    const/4 v11, 0x1

    if-ne v5, v11, :cond_0

    iget-object v11, p0, Lcom/htc/painting/penmenu/menu/MenuPanel;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    invoke-virtual {v11}, Lcom/htc/painting/penmenu/menu/Menu;->updateUseTime()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 221
    iget-object v11, p0, Lcom/htc/painting/penmenu/menu/MenuPanel;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    invoke-virtual {v11}, Lcom/htc/painting/penmenu/menu/Menu;->getMenuOptions()Ljava/util/List;

    move-result-object v7

    .line 222
    .local v7, menuOptions:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/painting/penmenu/menu/MenuOptions;

    .line 223
    .local v8, obj:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    invoke-virtual {v8}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v6

    .line 224
    .local v6, item:Lcom/htc/painting/penmenu/menu/MenuItem;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    invoke-direct {p0, v11, v12}, Lcom/htc/painting/penmenu/menu/MenuPanel;->toRadius(FF)D

    move-result-wide v9

    .line 225
    .local v9, r:D
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    invoke-direct {p0, v11, v12}, Lcom/htc/painting/penmenu/menu/MenuPanel;->toAngle(FF)D

    move-result-wide v0

    .line 226
    .local v0, a:D
    double-to-float v11, v9

    double-to-float v12, v0

    invoke-virtual {v6, v11, v12}, Lcom/htc/painting/penmenu/menu/MenuItem;->contain(FF)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    if-nez v11, :cond_3

    .line 233
    invoke-virtual {v6}, Lcom/htc/painting/penmenu/menu/MenuItem;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 234
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Lcom/htc/painting/penmenu/menu/MenuItem;->setFocus(Z)V

    .line 235
    invoke-virtual {v6}, Lcom/htc/painting/penmenu/menu/MenuItem;->startAnim()V

    .line 236
    iget-object v11, p0, Lcom/htc/painting/penmenu/menu/MenuPanel;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    invoke-virtual {v8}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/htc/painting/penmenu/menu/Menu;->onChange(I)V

    .line 237
    invoke-virtual {v8}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuId()I

    move-result v2

    .line 238
    const/4 v3, 0x1

    .line 241
    :cond_3
    const/4 v5, 0x1

    .line 246
    .end local v0           #a:D
    .end local v6           #item:Lcom/htc/painting/penmenu/menu/MenuItem;
    .end local v8           #obj:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    .end local v9           #r:D
    :cond_4
    const/4 v11, 0x1

    if-ne v3, v11, :cond_6

    .line 247
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/painting/penmenu/menu/MenuOptions;

    .line 248
    .restart local v8       #obj:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    invoke-virtual {v8}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v6

    .line 249
    .restart local v6       #item:Lcom/htc/painting/penmenu/menu/MenuItem;
    invoke-virtual {v6}, Lcom/htc/painting/penmenu/menu/MenuItem;->getFocus()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    invoke-virtual {v8}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuId()I

    move-result v11

    if-eq v11, v2, :cond_5

    .line 250
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/htc/painting/penmenu/menu/MenuItem;->setFocus(Z)V

    .line 251
    invoke-virtual {v6}, Lcom/htc/painting/penmenu/menu/MenuItem;->startAnim()V

    goto :goto_1

    .line 256
    .end local v6           #item:Lcom/htc/painting/penmenu/menu/MenuItem;
    .end local v8           #obj:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    :cond_6
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/MenuPanel;->invalidate()V

    goto/16 :goto_0
.end method

.method private isValideArea(FF)Z
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    .line 180
    const/4 v5, 0x0

    .line 182
    .local v5, ret:Z
    iget-object v8, p0, Lcom/htc/painting/penmenu/menu/MenuPanel;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    invoke-virtual {v8}, Lcom/htc/painting/penmenu/menu/Menu;->getInnerRadius()I

    move-result v8

    int-to-float v3, v8

    .line 183
    .local v3, innerRadius:F
    iget v8, p0, Lcom/htc/painting/penmenu/menu/MenuPanel;->mSize:I

    int-to-float v4, v8

    .line 184
    .local v4, outerRadius:F
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/MenuPanel;->getWidth()I

    move-result v7

    .line 185
    .local v7, w:I
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/MenuPanel;->getHeight()I

    move-result v2

    .line 192
    .local v2, h:I
    int-to-float v8, v7

    sub-float v0, v8, p1

    .line 193
    .local v0, dx:F
    int-to-float v8, v2

    sub-float v1, v8, p2

    .line 194
    .local v1, dy:F
    mul-float v8, v0, v0

    mul-float v9, v1, v1

    add-float v6, v8, v9

    .line 196
    .local v6, rr:F
    mul-float v8, v3, v3

    cmpg-float v8, v8, v6

    if-gez v8, :cond_0

    mul-float v8, v4, v4

    cmpg-float v8, v6, v8

    if-gez v8, :cond_0

    .line 197
    const/4 v5, 0x1

    .line 204
    :cond_0
    return v5
.end method

.method private processPenEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 277
    const-string v0, "MenuPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPenEvent x: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/MenuPanel;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/MenuPanel;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/Menu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    :cond_0
    const-string v0, "MenuPanel"

    const-string v1, "onPenEvent receive event after destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v0, 0x0

    .line 282
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/menu/MenuPanel;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method private processTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 287
    const-string v1, "MenuPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent x: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/MenuPanel;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/MenuPanel;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/Menu;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    :cond_0
    const-string v1, "MenuPanel"

    const-string v2, "onTouchEvent receive event after destroyed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v1, 0x0

    .line 298
    :goto_0
    return v1

    .line 293
    :cond_1
    invoke-static {p1}, Landroid/view/MotionEvent;->isPenEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 294
    .local v0, isPen:Z
    if-eqz v0, :cond_2

    .line 295
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/menu/MenuPanel;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 298
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/htc/painting/penmenu/menu/MenuPanel;->isValideArea(FF)Z

    move-result v1

    goto :goto_0
.end method

.method private toAngle(FF)D
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/MenuPanel;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v3, v4, p1

    .line 303
    .local v3, w:F
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/MenuPanel;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float v2, v4, p2

    .line 304
    .local v2, h:F
    div-float v4, v2, v3

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    .line 305
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
    .line 309
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/MenuPanel;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float v1, v2, p1

    .line 310
    .local v1, w:F
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/MenuPanel;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v2, p2

    .line 311
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
.method public display()V
    .locals 3

    .prologue
    .line 82
    sget-object v2, Lcom/htc/painting/penmenu/menu/MenuPanel$State;->FULL:Lcom/htc/painting/penmenu/menu/MenuPanel$State;

    iput-object v2, p0, Lcom/htc/painting/penmenu/menu/MenuPanel;->mState:Lcom/htc/painting/penmenu/menu/MenuPanel$State;

    .line 84
    iget-object v2, p0, Lcom/htc/painting/penmenu/menu/MenuPanel;->mMenuViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 85
    .local v1, view:Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 87
    .end local v1           #view:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/MenuPanel;->invalidate()V

    .line 88
    return-void
.end method

.method getCorner()Lcom/htc/painting/penmenu/PenMenu$DockCorner;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/MenuPanel;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/Menu;->getCorner()Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    move-result-object v0

    return-object v0
.end method

.method getInnerRadius()I
    .locals 2

    .prologue
    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, size:I
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/MenuPanel;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    if-eqz v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/MenuPanel;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/Menu;->getInnerRadius()I

    move-result v0

    .line 319
    :cond_0
    return v0
.end method

.method public getPenMenuSize()I
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/MenuPanel;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/MenuPanel;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/Menu;->getOptionPanelSize()I

    move-result v0

    .line 334
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getSize()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/htc/painting/penmenu/menu/MenuPanel;->mSize:I

    return v0
.end method

.method protected initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, -0x2

    .line 117
    sget-object v3, Lcom/htc/painting/penmenu/menu/MenuPanel$State;->SHRINK:Lcom/htc/painting/penmenu/menu/MenuPanel$State;

    iput-object v3, p0, Lcom/htc/painting/penmenu/menu/MenuPanel;->mState:Lcom/htc/painting/penmenu/menu/MenuPanel$State;

    .line 119
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/MenuPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20802b8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 120
    .local v0, background:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Lcom/htc/painting/penmenu/menu/MenuPanel;->mSize:I

    .line 122
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x55

    invoke-direct {v2, v5, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 124
    .local v2, params:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 125
    .local v1, backgroundView:Landroid/widget/ImageView;
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    invoke-virtual {p0, v1}, Lcom/htc/painting/penmenu/menu/MenuPanel;->addView(Landroid/view/View;)V

    .line 128
    iget-object v3, p0, Lcom/htc/painting/penmenu/menu/MenuPanel;->mMenuViewList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 269
    invoke-static {p1}, Landroid/view/MotionEvent;->isPenEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/menu/MenuPanel;->processPenEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 272
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/menu/MenuPanel;->processTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public releaseIcon()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/MenuPanel;->mMenuViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 109
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/MenuPanel;->removeAllViews()V

    .line 110
    return-void
.end method

.method public setMenu(Lcom/htc/painting/penmenu/menu/Menu;)V
    .locals 14
    .parameter "menu"

    .prologue
    const/4 v11, -0x2

    const/high16 v13, 0x42b4

    .line 143
    iput-object p1, p0, Lcom/htc/painting/penmenu/menu/MenuPanel;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    .line 145
    iget-object v10, p0, Lcom/htc/painting/penmenu/menu/MenuPanel;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    invoke-virtual {v10}, Lcom/htc/painting/penmenu/menu/Menu;->getMenuOptions()Ljava/util/List;

    move-result-object v6

    .line 146
    .local v6, menuOptionsList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;>;"
    iget-object v10, p0, Lcom/htc/painting/penmenu/menu/MenuPanel;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    invoke-virtual {v10}, Lcom/htc/painting/penmenu/menu/Menu;->getMenuCount()I

    move-result v3

    .line 148
    .local v3, count:I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-le v3, v10, :cond_0

    .line 149
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 152
    :cond_0
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v10, 0x55

    invoke-direct {v7, v11, v11, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 155
    .local v7, params:Landroid/widget/FrameLayout$LayoutParams;
    int-to-float v10, v3

    const/high16 v11, 0x4000

    mul-float/2addr v10, v11

    div-float v2, v13, v10

    .line 156
    .local v2, beginAngle:F
    int-to-float v10, v3

    div-float v1, v13, v10

    .line 157
    .local v1, angleRange:F
    move v0, v2

    .line 158
    .local v0, angle:F
    iget v10, p0, Lcom/htc/painting/penmenu/menu/MenuPanel;->mSize:I

    iget-object v11, p0, Lcom/htc/painting/penmenu/menu/MenuPanel;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    invoke-virtual {v11}, Lcom/htc/painting/penmenu/menu/Menu;->getInnerRadius()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v9, v10

    .line 160
    .local v9, width:F
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 161
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/painting/penmenu/menu/MenuOptions;

    .line 162
    .local v5, menuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 164
    invoke-virtual {v5}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/painting/penmenu/menu/MenuPanel;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    invoke-virtual {v11}, Lcom/htc/painting/penmenu/menu/Menu;->getInnerRadius()I

    move-result v11

    int-to-float v11, v11

    int-to-float v12, v4

    mul-float/2addr v12, v1

    invoke-virtual {v10, v11, v9, v12, v1}, Lcom/htc/painting/penmenu/menu/MenuItem;->setPosition(FFFF)V

    .line 167
    new-instance v8, Lcom/htc/painting/penmenu/menu/MenuView;

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/MenuPanel;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/htc/painting/penmenu/menu/MenuView;-><init>(Landroid/content/Context;)V

    .line 168
    .local v8, view:Lcom/htc/painting/penmenu/menu/MenuView;
    invoke-virtual {v8, v7}, Lcom/htc/painting/penmenu/menu/MenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    invoke-virtual {v8, v5}, Lcom/htc/painting/penmenu/menu/MenuView;->setMenuOptions(Lcom/htc/painting/penmenu/menu/MenuOptions;)V

    .line 170
    invoke-virtual {v8, p0}, Lcom/htc/painting/penmenu/menu/MenuView;->setMenuPanel(Lcom/htc/painting/penmenu/menu/MenuPanel;)V

    .line 171
    invoke-virtual {p0, v8}, Lcom/htc/painting/penmenu/menu/MenuPanel;->addView(Landroid/view/View;)V

    .line 172
    iget-object v10, p0, Lcom/htc/painting/penmenu/menu/MenuPanel;->mMenuViewList:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    .end local v8           #view:Lcom/htc/painting/penmenu/menu/MenuView;
    :cond_1
    int-to-float v10, v3

    div-float v10, v13, v10

    add-float/2addr v0, v10

    .line 160
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 177
    .end local v5           #menuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    :cond_2
    return-void
.end method

.method public setState(Lcom/htc/painting/penmenu/menu/MenuPanel$State;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/htc/painting/penmenu/menu/MenuPanel;->mState:Lcom/htc/painting/penmenu/menu/MenuPanel$State;

    .line 46
    iget-object v2, p0, Lcom/htc/painting/penmenu/menu/MenuPanel;->mMenuViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 47
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/htc/painting/penmenu/menu/MenuPanel;->mState:Lcom/htc/painting/penmenu/menu/MenuPanel$State;

    sget-object v3, Lcom/htc/painting/penmenu/menu/MenuPanel$State;->SHRINK:Lcom/htc/painting/penmenu/menu/MenuPanel$State;

    if-ne v2, v3, :cond_0

    .line 48
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 51
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 54
    .end local v1           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public shrink()V
    .locals 3

    .prologue
    .line 65
    sget-object v2, Lcom/htc/painting/penmenu/menu/MenuPanel$State;->SHRINK:Lcom/htc/painting/penmenu/menu/MenuPanel$State;

    iput-object v2, p0, Lcom/htc/painting/penmenu/menu/MenuPanel;->mState:Lcom/htc/painting/penmenu/menu/MenuPanel$State;

    .line 67
    iget-object v2, p0, Lcom/htc/painting/penmenu/menu/MenuPanel;->mMenuViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 68
    .local v1, view:Landroid/view/View;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 70
    .end local v1           #view:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/MenuPanel;->invalidate()V

    .line 71
    return-void
.end method
