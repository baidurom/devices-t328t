.class public Lcom/htc/painting/penmenu/base/BasePanelPenIconView;
.super Landroid/view/View;
.source "BasePanelPenIconView.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BasePanelPenIconView"


# instance fields
.field private mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

.field private mMoveInAnim:Landroid/view/animation/Animation;

.field private mMoveOutAnim:Landroid/view/animation/Animation;

.field private mMoveOutAnimListener:Landroid/view/animation/Animation$AnimationListener;

.field private mNewColor:I

.field private mNewTypeId:I

.field private mPenColor:I

.field private mTypeId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 65
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView$1;

    invoke-direct {v0, p0}, Lcom/htc/painting/penmenu/base/BasePanelPenIconView$1;-><init>(Lcom/htc/painting/penmenu/base/BasePanelPenIconView;)V

    iput-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->mMoveOutAnimListener:Landroid/view/animation/Animation$AnimationListener;

    .line 74
    return-void
.end method

.method static synthetic access$002(Lcom/htc/painting/penmenu/base/BasePanelPenIconView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->mPenColor:I

    return p1
.end method

.method static synthetic access$100(Lcom/htc/painting/penmenu/base/BasePanelPenIconView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->mNewColor:I

    return v0
.end method

.method static synthetic access$202(Lcom/htc/painting/penmenu/base/BasePanelPenIconView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->mTypeId:I

    return p1
.end method

.method static synthetic access$300(Lcom/htc/painting/penmenu/base/BasePanelPenIconView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->mNewTypeId:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/painting/penmenu/base/BasePanelPenIconView;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->mMoveInAnim:Landroid/view/animation/Animation;

    return-object v0
.end method


# virtual methods
.method changePenIcon(II)V
    .locals 1
    .parameter "typeId"
    .parameter "color"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->mMoveOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 183
    iput p1, p0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->mNewTypeId:I

    .line 184
    iput p2, p0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->mNewColor:I

    .line 185
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 115
    iget-object v5, p0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    if-nez v5, :cond_0

    .line 116
    const-string v5, "BasePanelPenIconView"

    const-string v6, "onDraw error - mBasePanel is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 124
    iget-object v5, p0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    invoke-virtual {v5}, Lcom/htc/painting/penmenu/base/BasePanel;->getSize()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    invoke-virtual {v6}, Lcom/htc/painting/penmenu/base/BasePanel;->getPenTipToSizeRatio()F

    move-result v6

    mul-float v0, v5, v6

    .line 126
    .local v0, distance:F
    iget-object v5, p0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    iget v6, p0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->mTypeId:I

    invoke-virtual {v5, v6}, Lcom/htc/painting/penmenu/base/BasePanel;->getPenTypeItem(I)Lcom/htc/painting/penmenu/menu/PenTypeItem;

    move-result-object v2

    .line 127
    .local v2, penType:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    if-eqz v2, :cond_2

    .line 128
    iget v5, p0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->mPenColor:I

    float-to-double v6, v0

    const-wide/high16 v8, 0x4000

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v2, v5, v6}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getBasePanelIcon(II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 129
    .local v1, icon:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float v3, v5, v0

    .line 131
    .local v3, x:F
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float v4, v5, v0

    .line 132
    .local v4, y:F
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 133
    const/high16 v5, 0x4234

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 134
    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {p1, v1, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 135
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 136
    const/4 v1, 0x0

    .line 146
    .end local v1           #icon:Landroid/graphics/Bitmap;
    .end local v3           #x:F
    .end local v4           #y:F
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 139
    .restart local v1       #icon:Landroid/graphics/Bitmap;
    :cond_1
    const-string v5, "BasePanelPenIconView"

    const-string v6, "onDraw error - can\'t find icon"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 143
    .end local v1           #icon:Landroid/graphics/Bitmap;
    :cond_2
    const-string v5, "BasePanelPenIconView"

    const-string v6, "onDraw error - can\'t find pen type"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 14
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    if-nez v0, :cond_0

    .line 83
    const-string v0, "BasePanelPenIconView"

    const-string v1, "onMeasure error - mBasePanel is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/base/BasePanel;->getPenMenuSize()I

    move-result v0

    iget-object v1, p0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/base/BasePanel;->getPenMenuSize()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->setMeasuredDimension(II)V

    .line 88
    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/base/BasePanel;->getSize()I

    move-result v13

    .line 90
    .local v13, size:I
    int-to-float v0, v13

    iget-object v1, p0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/base/BasePanel;->getPenTipToSizeRatio()F

    move-result v1

    mul-float v2, v0, v1

    .line 92
    .local v2, distance:F
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20e00ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 95
    .local v12, animDuration:I
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v6, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->mMoveInAnim:Landroid/view/animation/Animation;

    .line 97
    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->mMoveInAnim:Landroid/view/animation/Animation;

    int-to-long v3, v12

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 99
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v7, v2

    move v11, v2

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v3, p0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->mMoveOutAnim:Landroid/view/animation/Animation;

    .line 101
    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->mMoveOutAnim:Landroid/view/animation/Animation;

    int-to-long v3, v12

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 102
    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->mMoveOutAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->mMoveOutAnimListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method setBasePanel(Lcom/htc/painting/penmenu/base/BasePanel;)V
    .locals 0
    .parameter "basePanel"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    .line 156
    return-void
.end method

.method setPenIcon(II)V
    .locals 0
    .parameter "typeId"
    .parameter "color"

    .prologue
    .line 165
    iput p1, p0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->mTypeId:I

    .line 166
    iput p2, p0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->mPenColor:I

    .line 167
    return-void
.end method
