.class public Lcom/htc/widget/HtcIconButton;
.super Lcom/htc/widget/HtcButton;
.source "HtcIconButton.java"


# instance fields
.field private mContentShift:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcButton;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcIconButton;->mContentShift:I

    .line 16
    invoke-direct {p0}, Lcom/htc/widget/HtcIconButton;->init()V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1
    .parameter "context"
    .parameter "backgroundMode"
    .parameter "isContentMultiply"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcButton;-><init>(Landroid/content/Context;IZ)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcIconButton;->mContentShift:I

    .line 21
    invoke-direct {p0}, Lcom/htc/widget/HtcIconButton;->init()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZI)V
    .locals 1
    .parameter "context"
    .parameter "backgroundMode"
    .parameter "isContentMultiply"
    .parameter "extAnimationMode"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcButton;-><init>(Landroid/content/Context;IZI)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcIconButton;->mContentShift:I

    .line 26
    invoke-direct {p0}, Lcom/htc/widget/HtcIconButton;->init()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcIconButton;->mContentShift:I

    .line 31
    invoke-direct {p0}, Lcom/htc/widget/HtcIconButton;->init()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcIconButton;->mContentShift:I

    .line 36
    invoke-direct {p0}, Lcom/htc/widget/HtcIconButton;->init()V

    .line 37
    return-void
.end method

.method private computeShift()I
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 44
    invoke-virtual {p0}, Lcom/htc/widget/HtcIconButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 45
    .local v4, dr:[Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/htc/widget/HtcIconButton;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .line 46
    .local v5, layout:Landroid/text/Layout;
    const/4 v3, 0x0

    .line 48
    .local v3, contentHeight:I
    aget-object v9, v4, v10

    if-eqz v9, :cond_0

    .line 49
    aget-object v9, v4, v10

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    add-int/2addr v3, v9

    .line 50
    invoke-virtual {p0}, Lcom/htc/widget/HtcIconButton;->getCompoundDrawablePadding()I

    move-result v9

    add-int/2addr v3, v9

    .line 52
    :cond_0
    if-eqz v5, :cond_2

    .line 53
    invoke-virtual {p0}, Lcom/htc/widget/HtcIconButton;->getExtendedPaddingTop()I

    move-result v9

    invoke-virtual {p0}, Lcom/htc/widget/HtcIconButton;->getScrollY()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v2, v9

    .line 54
    .local v2, clipTop:F
    invoke-virtual {p0}, Lcom/htc/widget/HtcIconButton;->getBottom()I

    move-result v9

    invoke-virtual {p0}, Lcom/htc/widget/HtcIconButton;->getTop()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/htc/widget/HtcIconButton;->getExtendedPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/htc/widget/HtcIconButton;->getScrollY()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v1, v9

    .line 56
    .local v1, clipBottom:F
    invoke-virtual {p0}, Lcom/htc/widget/HtcIconButton;->getLineCount()I

    move-result v7

    .line 57
    .local v7, lines:I
    invoke-virtual {v5}, Landroid/text/Layout;->getSpacingAdd()F

    move-result v6

    .line 58
    .local v6, lineSpacingAdd:F
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v5, v9}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v9

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    sub-float v0, v9, v6

    .line 60
    .local v0, allLineHeight:F
    invoke-virtual {p0}, Lcom/htc/widget/HtcIconButton;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 61
    const/4 v7, 0x0

    .line 62
    const/4 v0, 0x0

    .line 65
    :cond_1
    int-to-float v9, v3

    sub-float v10, v1, v2

    invoke-static {v0, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    add-float/2addr v9, v10

    float-to-int v3, v9

    .line 67
    .end local v0           #allLineHeight:F
    .end local v1           #clipBottom:F
    .end local v2           #clipTop:F
    .end local v6           #lineSpacingAdd:F
    .end local v7           #lines:I
    :cond_2
    if-nez v3, :cond_3

    .line 69
    .local v8, shift:I
    :goto_0
    return v8

    .line 67
    .end local v8           #shift:I
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcIconButton;->getHeight()I

    move-result v9

    sub-int/2addr v9, v3

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0}, Lcom/htc/widget/HtcIconButton;->getPaddingTop()I

    move-result v10

    sub-int v8, v9, v10

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcIconButton;->setGravity(I)V

    .line 41
    return-void
.end method

.method private setGravityByDrawable(I)V
    .locals 1
    .parameter "top"

    .prologue
    .line 124
    if-nez p1, :cond_0

    const/16 v0, 0x11

    invoke-super {p0, v0}, Lcom/htc/widget/HtcButton;->setGravity(I)V

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    const/16 v0, 0x31

    invoke-super {p0, v0}, Lcom/htc/widget/HtcButton;->setGravity(I)V

    goto :goto_0
.end method

.method private setGravityByDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "top"

    .prologue
    .line 119
    if-nez p1, :cond_0

    const/16 v0, 0x11

    invoke-super {p0, v0}, Lcom/htc/widget/HtcButton;->setGravity(I)V

    .line 121
    :goto_0
    return-void

    .line 120
    :cond_0
    const/16 v0, 0x31

    invoke-super {p0, v0}, Lcom/htc/widget/HtcButton;->setGravity(I)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/widget/HtcIconButton;->computeShift()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcIconButton;->mContentShift:I

    .line 76
    invoke-super {p0, p1}, Lcom/htc/widget/HtcButton;->draw(Landroid/graphics/Canvas;)V

    .line 77
    return-void
.end method

.method protected getFadeTop(Z)I
    .locals 3
    .parameter "offsetRequired"

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/htc/widget/HtcIconButton;->getGravity()I

    move-result v0

    .line 81
    .local v0, gravity:I
    and-int/lit8 v1, v0, 0x70

    const/16 v2, 0x30

    if-ne v1, v2, :cond_0

    .line 82
    invoke-super {p0, p1}, Lcom/htc/widget/HtcButton;->getFadeTop(Z)I

    move-result v1

    iget v2, p0, Lcom/htc/widget/HtcIconButton;->mContentShift:I

    add-int/2addr v1, v2

    .line 84
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcButton;->getFadeTop(Z)I

    move-result v1

    goto :goto_0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/htc/widget/HtcButton;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/htc/widget/HtcIconButton;->invalidate()V

    .line 111
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/16 v3, 0x30

    const/4 v2, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/htc/widget/HtcIconButton;->getGravity()I

    move-result v0

    .line 93
    .local v0, gravity:I
    and-int/lit8 v1, v0, 0x70

    if-ne v1, v3, :cond_0

    .line 94
    iget v1, p0, Lcom/htc/widget/HtcIconButton;->mContentShift:I

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 96
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 97
    and-int/lit8 v1, v0, 0x70

    if-ne v1, v3, :cond_1

    .line 98
    iget v1, p0, Lcom/htc/widget/HtcIconButton;->mContentShift:I

    rsub-int/lit8 v1, v1, 0x0

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 100
    :cond_1
    return-void
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcButton;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcButton;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/htc/widget/HtcButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic performClick()Z
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/htc/widget/HtcButton;->performClick()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic performLongClick()Z
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/htc/widget/HtcButton;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setColorOn(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/htc/widget/HtcButton;->setColorOn(Z)V

    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-direct {p0, p2}, Lcom/htc/widget/HtcIconButton;->setGravityByDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    invoke-super {p0, v0, p2, v0, v0}, Lcom/htc/widget/HtcButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 132
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, p2}, Lcom/htc/widget/HtcIconButton;->setGravityByDrawable(I)V

    .line 140
    invoke-super {p0, v0, p2, v0, v0}, Lcom/htc/widget/HtcButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 141
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, p2}, Lcom/htc/widget/HtcIconButton;->setGravityByDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    invoke-super {p0, v0, p2, v0, v0}, Lcom/htc/widget/HtcButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 147
    return-void
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/htc/widget/HtcButton;->setEnabled(Z)V

    return-void
.end method

.method public setGravity(I)V
    .locals 2
    .parameter "gravity"

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/htc/widget/HtcIconButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 115
    .local v0, d:[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcIconButton;->setGravityByDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcIconButton;->setGravityByDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    invoke-super {p0, v0, p1, v0, v0}, Lcom/htc/widget/HtcButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 152
    return-void
.end method

.method public setIconResource(I)V
    .locals 1
    .parameter "icon"

    .prologue
    const/4 v0, 0x0

    .line 155
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcIconButton;->setGravityByDrawable(I)V

    .line 156
    invoke-super {p0, v0, p1, v0, v0}, Lcom/htc/widget/HtcButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 157
    return-void
.end method

.method public bridge synthetic setLayerType(ILandroid/graphics/Paint;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcButton;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public bridge synthetic setShadowLayer(FFFI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 12
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcButton;->setShadowLayer(FFFI)V

    return-void
.end method

.method public bridge synthetic setTextColor(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/htc/widget/HtcButton;->setTextColor(I)V

    return-void
.end method

.method public bridge synthetic setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/htc/widget/HtcButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic stayInPress(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/htc/widget/HtcButton;->stayInPress(Z)V

    return-void
.end method
