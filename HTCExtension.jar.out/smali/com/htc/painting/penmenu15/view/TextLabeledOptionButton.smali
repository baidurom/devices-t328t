.class public Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;
.super Landroid/widget/LinearLayout;
.source "TextLabeledOptionButton.java"


# static fields
.field public static final RES_ID_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PenMenuNew"


# instance fields
.field protected mBackground:Landroid/graphics/drawable/Drawable;

.field protected mBkgMatrix:Landroid/graphics/Matrix;

.field private mButton:Lcom/htc/widget/HtcRimButton;

.field private mButtonArea:Landroid/graphics/RectF;

.field protected mDegree:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field protected mIconDist:I

.field protected mIconOutRect:Landroid/graphics/RectF;

.field private mInnerBorder:Z

.field private mShifts:[I

.field protected mTextDimen:[F

.field protected mTextRect:Landroid/graphics/RectF;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 3
    .parameter "context"
    .parameter "backgroundMode"
    .parameter "innerBorder"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 98
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mBkgMatrix:Landroid/graphics/Matrix;

    .line 67
    iput-object v2, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mButton:Lcom/htc/widget/HtcRimButton;

    .line 68
    iput-object v2, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mTextView:Landroid/widget/TextView;

    .line 74
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mIconOutRect:Landroid/graphics/RectF;

    .line 79
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mTextDimen:[F

    .line 84
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mTextRect:Landroid/graphics/RectF;

    .line 86
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mButtonArea:Landroid/graphics/RectF;

    .line 93
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mShifts:[I

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mInnerBorder:Z

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->init(Landroid/content/Context;IZ)V

    .line 100
    return-void
.end method

.method private computeTextDimen()[F
    .locals 5

    .prologue
    .line 401
    const/4 v2, 0x2

    new-array v0, v2, [F

    .line 402
    .local v0, result:[F
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    aput v3, v0, v2

    .line 404
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 405
    .local v1, textVal:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    aput v3, v0, v2

    .line 409
    :cond_0
    return-object v0
.end method

.method private getButtonLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 174
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 177
    .local v0, result:Landroid/widget/LinearLayout$LayoutParams;
    return-object v0
.end method

.method private init(Landroid/content/Context;IZ)V
    .locals 4
    .parameter "context"
    .parameter "backgroundMode"
    .parameter "innerBorder"

    .prologue
    const/16 v3, 0x11

    const/4 v2, 0x1

    .line 104
    iput-boolean p3, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mInnerBorder:Z

    .line 105
    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setOrientation(I)V

    .line 106
    invoke-virtual {p0, v3}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setGravity(I)V

    .line 107
    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setClickable(Z)V

    .line 108
    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setFocusable(Z)V

    .line 109
    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setFocusableInTouchMode(Z)V

    .line 111
    new-instance v0, Lcom/htc/widget/HtcRimButton;

    invoke-direct {v0, p1, p2, v2}, Lcom/htc/widget/HtcRimButton;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mButton:Lcom/htc/widget/HtcRimButton;

    .line 112
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcRimButton;->setDuplicateParentStateEnabled(Z)V

    .line 113
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcRimButton;->setGravity(I)V

    .line 114
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mButton:Lcom/htc/widget/HtcRimButton;

    const/4 v1, -0x5

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setCompoundDrawablePadding(I)V

    .line 115
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mButton:Lcom/htc/widget/HtcRimButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mButton:Lcom/htc/widget/HtcRimButton;

    new-instance v1, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton$1;

    invoke-direct {v1, p0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton$1;-><init>(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mButton:Lcom/htc/widget/HtcRimButton;

    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->getButtonLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mTextView:Landroid/widget/TextView;

    .line 130
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 131
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 132
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mTextView:Landroid/widget/TextView;

    if-ne p2, v2, :cond_0

    const v0, 0x203001c

    :goto_0
    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 140
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->getButtonLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    return-void

    .line 132
    :cond_0
    const v0, 0x203003d

    goto :goto_0
.end method


# virtual methods
.method public contains(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    .line 348
    const/4 v2, 0x0

    .line 350
    .local v2, ret:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 351
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 353
    .local v6, y:F
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->getLeft()I

    move-result v1

    .line 354
    .local v1, left:I
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->getTop()I

    move-result v4

    .line 355
    .local v4, top:I
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->getRight()I

    move-result v3

    .line 356
    .local v3, right:I
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->getBottom()I

    move-result v0

    .line 360
    .local v0, bottom:I
    int-to-float v7, v1

    cmpl-float v7, v5, v7

    if-lez v7, :cond_0

    int-to-float v7, v3

    cmpg-float v7, v5, v7

    if-gez v7, :cond_0

    int-to-float v7, v4

    cmpl-float v7, v6, v7

    if-lez v7, :cond_0

    int-to-float v7, v0

    cmpg-float v7, v6, v7

    if-gez v7, :cond_0

    .line 363
    const/4 v2, 0x1

    .line 366
    .end local v2           #ret:Z
    :cond_0
    return v2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcRimButton;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 153
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 545
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 547
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->getDrawableState()[I

    move-result-object v2

    .line 549
    .local v2, drawableState:[I
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 550
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 551
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 556
    .local v0, bkg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 557
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 559
    :cond_1
    return-void
.end method

.method public getButtonPoint()Landroid/graphics/Point;
    .locals 5

    .prologue
    .line 324
    const-string v2, "PenMenuNew"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " optionButton:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", visibility:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 327
    .local v0, location:[I
    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->getLocationOnScreen([I)V

    .line 328
    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 330
    .local v1, p:Landroid/graphics/Point;
    return-object v1
.end method

.method public getDegree()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mDegree:I

    return v0
.end method

.method public getIconCenterDist()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mIconDist:I

    return v0
.end method

.method public initialize(II)V
    .locals 0
    .parameter "degree"
    .parameter "centerDist"

    .prologue
    .line 199
    iput p1, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mDegree:I

    .line 200
    iput p2, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mIconDist:I

    .line 201
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "dr"

    .prologue
    .line 576
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mIcon:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_1

    .line 584
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->invalidate()V

    .line 588
    :goto_0
    return-void

    .line 586
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 462
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 463
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mShifts:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mShifts:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 464
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 465
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 466
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 511
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 514
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->getMeasuredWidth()I

    move-result v3

    .line 515
    .local v3, newMeasuredWidth:I
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->getMeasuredHeight()I

    move-result v2

    .line 517
    .local v2, newMeasuredHeight:I
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->getSuggestedMinimumWidth()I

    move-result v1

    .line 518
    .local v1, minWidth:I
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->getSuggestedMinimumHeight()I

    move-result v0

    .line 519
    .local v0, minHeight:I
    if-lt v3, v1, :cond_0

    if-ge v2, v0, :cond_1

    .line 521
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setMeasuredDimension(II)V

    .line 523
    :cond_1
    return-void
.end method

.method public setButtonBackgroundResource(III)V
    .locals 1
    .parameter "background_outer"
    .parameter "background_press"
    .parameter "background"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/widget/HtcRimButton;->setButtonBackgroundResource(III)V

    .line 308
    return-void
.end method

.method public setColorOn(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcRimButton;->setColorOn(Z)V

    .line 316
    return-void
.end method

.method public setDegree(I)V
    .locals 0
    .parameter "deg"

    .prologue
    .line 374
    iput p1, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mDegree:I

    .line 375
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->isEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 169
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcRimButton;->setEnabled(Z)V

    .line 170
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setLabel(II)V
    .locals 4
    .parameter "textId"
    .parameter "resId"

    .prologue
    .line 209
    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setGravity(I)V

    .line 211
    if-eqz p1, :cond_0

    .line 212
    iget-boolean v2, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mInnerBorder:Z

    if-eqz v2, :cond_2

    .line 213
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 219
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 220
    iget-boolean v2, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mInnerBorder:Z

    if-eqz v2, :cond_1

    .line 221
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 222
    .local v1, width:I
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 223
    .local v0, height:I
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcRimButton;->setWidth(I)V

    .line 224
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcRimButton;->setHeight(I)V

    .line 227
    .end local v0           #height:I
    .end local v1           #width:I
    :cond_1
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mButton:Lcom/htc/widget/HtcRimButton;

    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcRimButton;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->computeTextDimen()[F

    move-result-object v2

    iput-object v2, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mTextDimen:[F

    .line 232
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->updateMinWidthAndHeight()V

    .line 233
    return-void

    .line 215
    :cond_2
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v2, p1}, Lcom/htc/widget/HtcRimButton;->setText(I)V

    goto :goto_0
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcRimButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 159
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .parameter "fontSize"

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mInnerBorder:Z

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 398
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcRimButton;->setTextSize(F)V

    goto :goto_0
.end method

.method public setViewShifts(II)V
    .locals 2
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mShifts:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 241
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mShifts:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 242
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->invalidate()V

    .line 243
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 533
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 534
    const-string v1, " mDegree: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    iget v1, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mDegree:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected updateMinWidthAndHeight()V
    .locals 7

    .prologue
    .line 252
    const/4 v4, 0x0

    .line 253
    .local v4, width:I
    const/4 v2, 0x0

    .line 254
    .local v2, height:I
    iget-object v5, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 255
    iget-object v5, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 256
    iget-object v5, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 259
    :cond_0
    iget-boolean v5, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mInnerBorder:Z

    if-eqz v5, :cond_1

    .line 260
    iget-object v5, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mTextDimen:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    .line 261
    iget-object v5, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mTextDimen:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    float-to-int v5, v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    .line 265
    :cond_1
    iget-object v5, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    .line 266
    iget-object v5, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    mul-int/lit8 v1, v5, 0x2

    .line 267
    .local v1, bWidth:I
    iget-object v5, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    mul-int/lit8 v0, v5, 0x2

    .line 268
    .local v0, bHeight:I
    if-ge v4, v1, :cond_2

    move v4, v1

    .line 269
    :cond_2
    if-ge v2, v0, :cond_3

    move v2, v0

    .line 272
    .end local v0           #bHeight:I
    .end local v1           #bWidth:I
    :cond_3
    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setMinimumHeight(I)V

    .line 273
    invoke-virtual {p0, v4}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setMinimumWidth(I)V

    .line 274
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->requestLayout()V

    .line 275
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 276
    .local v3, parent:Landroid/view/ViewParent;
    if-eqz v3, :cond_4

    .line 277
    invoke-interface {v3}, Landroid/view/ViewParent;->requestLayout()V

    .line 280
    :cond_4
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "dr"

    .prologue
    .line 567
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
