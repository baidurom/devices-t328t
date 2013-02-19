.class public Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;
.super Landroid/view/View;
.source "BasePanelPenSizeView.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BasePanelPenSizeView"


# instance fields
.field private mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

.field private mColor:I

.field private mNewSize:F

.field private mPenSize:F

.field private mScaleAnimListener:Landroid/view/animation/Animation$AnimationListener;

.field private mSize:I

.field private mSizeIconPosition:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance v0, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView$1;

    invoke-direct {v0, p0}, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView$1;-><init>(Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;)V

    iput-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->mScaleAnimListener:Landroid/view/animation/Animation$AnimationListener;

    .line 71
    invoke-direct {p0}, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->initView()V

    .line 72
    return-void
.end method

.method static synthetic access$002(Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->mPenSize:F

    return p1
.end method

.method static synthetic access$100(Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->mNewSize:F

    return v0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 75
    const/high16 v0, -0x100

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->setPenSize(IF)V

    .line 76
    return-void
.end method


# virtual methods
.method changeColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 159
    iput p1, p0, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->mColor:I

    .line 160
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->invalidate()V

    .line 161
    return-void
.end method

.method changeSize(F)V
    .locals 8
    .parameter "size"

    .prologue
    const/high16 v2, 0x3f80

    .line 134
    iget v3, p0, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->mPenSize:F

    cmpl-float v3, p1, v3

    if-nez v3, :cond_0

    .line 151
    :goto_0
    return-void

    .line 138
    :cond_0
    iget v3, p0, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->mPenSize:F

    div-float v1, v3, p1

    .line 139
    .local v1, from:F
    iput p1, p0, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->mNewSize:F

    .line 141
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->mSizeIconPosition:F

    sub-float v5, v3, v4

    .line 142
    .local v5, centerX:F
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->mSizeIconPosition:F

    sub-float v6, v3, v4

    .line 144
    .local v6, centerY:F
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20e00cb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 147
    .local v7, animDuration:I
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 148
    .local v0, anim:Landroid/view/animation/ScaleAnimation;
    iget-object v2, p0, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->mScaleAnimListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 149
    int-to-long v2, v7

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 150
    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 115
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 116
    .local v2, paint:Landroid/graphics/Paint;
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 117
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 118
    iget v3, p0, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->mColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 121
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->mSizeIconPosition:F

    sub-float v0, v3, v4

    .line 122
    .local v0, centerX:F
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->mSizeIconPosition:F

    sub-float v1, v3, v4

    .line 123
    .local v1, centerY:F
    iget v3, p0, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->mPenSize:F

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 125
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 126
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/base/BasePanel;->getPenMenuSize()I

    move-result v0

    iget-object v1, p0, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/base/BasePanel;->getPenMenuSize()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->setMeasuredDimension(II)V

    .line 98
    return-void
.end method

.method setBasePanel(Lcom/htc/painting/penmenu/base/BasePanel;)V
    .locals 0
    .parameter "basePanel"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    .line 45
    return-void
.end method

.method setIconPosition(F)V
    .locals 0
    .parameter "position"

    .prologue
    .line 88
    iput p1, p0, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->mSizeIconPosition:F

    .line 89
    return-void
.end method

.method setPenSize(IF)V
    .locals 0
    .parameter "color"
    .parameter "size"

    .prologue
    .line 170
    iput p1, p0, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->mColor:I

    .line 171
    iput p2, p0, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->mPenSize:F

    .line 172
    return-void
.end method

.method setSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 84
    iput p1, p0, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->mSize:I

    .line 85
    return-void
.end method
