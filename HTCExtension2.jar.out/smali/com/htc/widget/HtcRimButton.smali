.class public Lcom/htc/widget/HtcRimButton;
.super Lcom/htc/widget/HtcIconButton;
.source "HtcRimButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcRimButton$BackgroundDrawable;
    }
.end annotation


# instance fields
.field mBackground:Lcom/htc/widget/HtcRimButton$BackgroundDrawable;

.field private mCenterX:I

.field private mCenterY:I

.field private mCurrentScaleHeight:F

.field private mCurrentScaleWidth:F

.field private mIsPaddingSetInXML:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcIconButton;-><init>(Landroid/content/Context;)V

    .line 21
    iput v0, p0, Lcom/htc/widget/HtcRimButton;->mCenterX:I

    .line 22
    iput v0, p0, Lcom/htc/widget/HtcRimButton;->mCenterY:I

    .line 24
    iput-boolean v0, p0, Lcom/htc/widget/HtcRimButton;->mIsPaddingSetInXML:Z

    .line 28
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcRimButton;->init(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1
    .parameter "context"
    .parameter "backgroundMode"
    .parameter "isContentMultiply"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcIconButton;-><init>(Landroid/content/Context;IZ)V

    .line 21
    iput v0, p0, Lcom/htc/widget/HtcRimButton;->mCenterX:I

    .line 22
    iput v0, p0, Lcom/htc/widget/HtcRimButton;->mCenterY:I

    .line 24
    iput-boolean v0, p0, Lcom/htc/widget/HtcRimButton;->mIsPaddingSetInXML:Z

    .line 34
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcRimButton;->init(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZI)V
    .locals 1
    .parameter "context"
    .parameter "backgroundMode"
    .parameter "isContentMultiply"
    .parameter "extAnimationMode"

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcIconButton;-><init>(Landroid/content/Context;IZI)V

    .line 21
    iput v0, p0, Lcom/htc/widget/HtcRimButton;->mCenterX:I

    .line 22
    iput v0, p0, Lcom/htc/widget/HtcRimButton;->mCenterY:I

    .line 24
    iput-boolean v0, p0, Lcom/htc/widget/HtcRimButton;->mIsPaddingSetInXML:Z

    .line 40
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcRimButton;->init(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcIconButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput v0, p0, Lcom/htc/widget/HtcRimButton;->mCenterX:I

    .line 22
    iput v0, p0, Lcom/htc/widget/HtcRimButton;->mCenterY:I

    .line 24
    iput-boolean v0, p0, Lcom/htc/widget/HtcRimButton;->mIsPaddingSetInXML:Z

    .line 46
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcRimButton;->init(Landroid/content/Context;)V

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcRimButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcIconButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iput v0, p0, Lcom/htc/widget/HtcRimButton;->mCenterX:I

    .line 22
    iput v0, p0, Lcom/htc/widget/HtcRimButton;->mCenterY:I

    .line 24
    iput-boolean v0, p0, Lcom/htc/widget/HtcRimButton;->mIsPaddingSetInXML:Z

    .line 53
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcRimButton;->init(Landroid/content/Context;)V

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcRimButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 86
    new-instance v0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;

    invoke-direct {v0, p0, p1}, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;-><init>(Lcom/htc/widget/HtcRimButton;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcRimButton;->mBackground:Lcom/htc/widget/HtcRimButton$BackgroundDrawable;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcButton;->mUseDynamicScale:Z

    .line 88
    iget-object v0, p0, Lcom/htc/widget/HtcRimButton;->mBackground:Lcom/htc/widget/HtcRimButton$BackgroundDrawable;

    invoke-super {p0, v0}, Lcom/htc/widget/HtcIconButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, 0x0

    const/4 v8, -0x1

    .line 58
    sget-object v7, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, p2, v7, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v7, 0xd

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 62
    .local v3, padding:I
    const/16 v7, 0xe

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 63
    .local v2, leftPadding:I
    const/16 v7, 0xf

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 64
    .local v5, topPadding:I
    const/16 v7, 0x10

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 65
    .local v4, rightPadding:I
    const/16 v7, 0x11

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 67
    .local v1, bottomPadding:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    if-ne v3, v8, :cond_0

    if-ne v2, v8, :cond_0

    if-ne v5, v8, :cond_0

    if-ne v4, v8, :cond_0

    if-eq v1, v8, :cond_1

    :cond_0
    const/4 v6, 0x1

    :cond_1
    iput-boolean v6, p0, Lcom/htc/widget/HtcRimButton;->mIsPaddingSetInXML:Z

    .line 71
    if-ltz v3, :cond_2

    .line 72
    move v2, v3

    .line 73
    move v5, v3

    .line 74
    move v4, v3

    .line 75
    move v1, v3

    .line 78
    :cond_2
    if-ltz v2, :cond_3

    .end local v2           #leftPadding:I
    :goto_0
    if-ltz v5, :cond_4

    .end local v5           #topPadding:I
    :goto_1
    if-ltz v4, :cond_5

    .end local v4           #rightPadding:I
    :goto_2
    if-ltz v1, :cond_6

    .end local v1           #bottomPadding:I
    :goto_3
    invoke-virtual {p0, v2, v5, v4, v1}, Lcom/htc/widget/HtcRimButton;->setPadding(IIII)V

    .line 82
    return-void

    .line 78
    .restart local v1       #bottomPadding:I
    .restart local v2       #leftPadding:I
    .restart local v4       #rightPadding:I
    .restart local v5       #topPadding:I
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcRimButton;->getPaddingLeft()I

    move-result v2

    goto :goto_0

    .end local v2           #leftPadding:I
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcRimButton;->getPaddingTop()I

    move-result v5

    goto :goto_1

    .end local v5           #topPadding:I
    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/HtcRimButton;->getPaddingRight()I

    move-result v4

    goto :goto_2

    .end local v4           #rightPadding:I
    :cond_6
    invoke-virtual {p0}, Lcom/htc/widget/HtcRimButton;->getPaddingBottom()I

    move-result v1

    goto :goto_3
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 159
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 160
    .local v0, rect:Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/widget/HtcRimButton;->mCenterX:I

    .line 161
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/widget/HtcRimButton;->mCenterY:I

    .line 163
    iget-boolean v1, p0, Lcom/htc/widget/HtcButton;->mIsAnimating:Z

    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 165
    iget v1, p0, Lcom/htc/widget/HtcRimButton;->mCurrentScaleWidth:F

    iget v2, p0, Lcom/htc/widget/HtcRimButton;->mCurrentScaleHeight:F

    iget v3, p0, Lcom/htc/widget/HtcRimButton;->mCenterX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/widget/HtcRimButton;->mCenterY:I

    int-to-float v4, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 167
    invoke-super {p0, p1}, Lcom/htc/widget/HtcIconButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 168
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcIconButton;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/high16 v1, 0x3f00

    .line 150
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 151
    :cond_0
    int-to-float v0, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcRimButton;->mCenterX:I

    .line 152
    int-to-float v0, p2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcRimButton;->mCenterY:I

    .line 155
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcIconButton;->onSizeChanged(IIII)V

    .line 156
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 115
    instance-of v0, p1, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 116
    check-cast v0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;

    iput-object v0, p0, Lcom/htc/widget/HtcRimButton;->mBackground:Lcom/htc/widget/HtcRimButton$BackgroundDrawable;

    .line 120
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcIconButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcRimButton;->mBackground:Lcom/htc/widget/HtcRimButton$BackgroundDrawable;

    goto :goto_0
.end method

.method public setButtonBackgroundDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "background_outer"
    .parameter "background_press"
    .parameter "background"

    .prologue
    const/4 v1, 0x0

    .line 175
    if-eqz p2, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 176
    iget-boolean v0, p0, Lcom/htc/widget/HtcRimButton;->mIsPaddingSetInXML:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/htc/widget/HtcRimButton;->setPadding(IIII)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcRimButton;->mBackground:Lcom/htc/widget/HtcRimButton$BackgroundDrawable;

    if-nez v0, :cond_1

    new-instance v0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;

    invoke-virtual {p0}, Lcom/htc/widget/HtcRimButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;-><init>(Lcom/htc/widget/HtcRimButton;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcRimButton;->mBackground:Lcom/htc/widget/HtcRimButton$BackgroundDrawable;

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcRimButton;->mBackground:Lcom/htc/widget/HtcRimButton$BackgroundDrawable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->setDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 181
    iget-object v0, p0, Lcom/htc/widget/HtcRimButton;->mBackground:Lcom/htc/widget/HtcRimButton$BackgroundDrawable;

    invoke-super {p0, v0}, Lcom/htc/widget/HtcIconButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    return-void

    .line 183
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Drawables can\'t be NULL"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setButtonBackgroundResource(III)V
    .locals 4
    .parameter "background_outer"
    .parameter "background_press"
    .parameter "background"

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/htc/widget/HtcRimButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 190
    .local v2, bp:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/htc/widget/HtcRimButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 191
    .local v0, b:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/htc/widget/HtcRimButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 193
    .local v1, bo:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1, v2, v0}, Lcom/htc/widget/HtcRimButton;->setButtonBackgroundDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 194
    return-void
.end method

.method setMultiplyAlpha(I)V
    .locals 3
    .parameter "alpha"

    .prologue
    const/4 v2, 0x1

    .line 94
    iget-boolean v0, p0, Lcom/htc/widget/HtcButton;->mIsRimMultiply:Z

    if-eqz v0, :cond_0

    .line 95
    iget-boolean v0, p0, Lcom/htc/widget/HtcButton;->mStayInPress:Z

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/htc/widget/HtcRimButton;->mBackground:Lcom/htc/widget/HtcRimButton$BackgroundDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcRimButton;->mBackground:Lcom/htc/widget/HtcRimButton$BackgroundDrawable;

    instance-of v0, v0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/htc/widget/HtcRimButton;->mBackground:Lcom/htc/widget/HtcRimButton$BackgroundDrawable;

    invoke-virtual {v0, p1, v2}, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->setAlpha(II)V

    .line 111
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcIconButton;->setMultiplyAlpha(I)V

    .line 112
    return-void

    .line 100
    :cond_1
    iget-boolean v0, p0, Lcom/htc/widget/HtcButton;->mIsGreenOn:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/widget/HtcButton;->mDownAnimating:Z

    if-nez v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/htc/widget/HtcButton;->mIsGreenOn:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/htc/widget/HtcButton;->mUpAnimating:Z

    if-eqz v0, :cond_4

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HtcRimButton;->mBackground:Lcom/htc/widget/HtcRimButton$BackgroundDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcRimButton;->mBackground:Lcom/htc/widget/HtcRimButton$BackgroundDrawable;

    instance-of v0, v0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/htc/widget/HtcRimButton;->mBackground:Lcom/htc/widget/HtcRimButton$BackgroundDrawable;

    invoke-virtual {v0, p1, v2}, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->setAlpha(II)V

    goto :goto_0

    .line 104
    :cond_4
    iget-boolean v0, p0, Lcom/htc/widget/HtcButton;->mIsGreenOn:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/htc/widget/HtcButton;->mUpAnimating:Z

    if-nez v0, :cond_6

    :cond_5
    iget-boolean v0, p0, Lcom/htc/widget/HtcButton;->mIsGreenOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcButton;->mDownAnimating:Z

    if-eqz v0, :cond_0

    .line 105
    :cond_6
    iget-object v0, p0, Lcom/htc/widget/HtcRimButton;->mBackground:Lcom/htc/widget/HtcRimButton$BackgroundDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcRimButton;->mBackground:Lcom/htc/widget/HtcRimButton$BackgroundDrawable;

    instance-of v0, v0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/htc/widget/HtcRimButton;->mBackground:Lcom/htc/widget/HtcRimButton$BackgroundDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->setAlpha(II)V

    goto :goto_0
.end method

.method setScaleHeight(F)V
    .locals 4
    .parameter "scale"

    .prologue
    .line 141
    iput p1, p0, Lcom/htc/widget/HtcRimButton;->mCurrentScaleHeight:F

    .line 142
    invoke-virtual {p0}, Lcom/htc/widget/HtcRimButton;->invalidate()V

    .line 144
    iget-object v0, p0, Lcom/htc/widget/HtcRimButton;->mBackground:Lcom/htc/widget/HtcRimButton$BackgroundDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcRimButton;->mBackground:Lcom/htc/widget/HtcRimButton$BackgroundDrawable;

    instance-of v0, v0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/htc/widget/HtcRimButton;->mBackground:Lcom/htc/widget/HtcRimButton$BackgroundDrawable;

    iget v1, p0, Lcom/htc/widget/HtcRimButton;->mCurrentScaleWidth:F

    iget v2, p0, Lcom/htc/widget/HtcRimButton;->mCurrentScaleHeight:F

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->setScale(FFI)V

    .line 147
    :cond_0
    return-void
.end method

.method setScaleWidth(F)V
    .locals 4
    .parameter "scale"

    .prologue
    .line 132
    iput p1, p0, Lcom/htc/widget/HtcRimButton;->mCurrentScaleWidth:F

    .line 133
    invoke-virtual {p0}, Lcom/htc/widget/HtcRimButton;->invalidate()V

    .line 135
    iget-object v0, p0, Lcom/htc/widget/HtcRimButton;->mBackground:Lcom/htc/widget/HtcRimButton$BackgroundDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcRimButton;->mBackground:Lcom/htc/widget/HtcRimButton$BackgroundDrawable;

    instance-of v0, v0, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/htc/widget/HtcRimButton;->mBackground:Lcom/htc/widget/HtcRimButton$BackgroundDrawable;

    iget v1, p0, Lcom/htc/widget/HtcRimButton;->mCurrentScaleWidth:F

    iget v2, p0, Lcom/htc/widget/HtcRimButton;->mCurrentScaleHeight:F

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcRimButton$BackgroundDrawable;->setScale(FFI)V

    .line 138
    :cond_0
    return-void
.end method
