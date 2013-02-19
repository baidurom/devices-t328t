.class public Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;
.super Landroid/view/View;
.source "BasePanelBackgroundView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BasePanelBackgroundView"


# instance fields
.field private mBackground:Landroid/graphics/Bitmap;

.field private mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

.field private mSize:I

.field private mState:Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 61
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    invoke-direct {p0}, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;->initView()V

    .line 73
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;->NORMAL:Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;

    iput-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;->mState:Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;

    .line 78
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2080280

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;->mBackground:Landroid/graphics/Bitmap;

    .line 81
    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;->mBackground:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 82
    const-string v0, "BasePanelBackgroundView"

    const-string v1, "initView - failed to load background image"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;->mSize:I

    goto :goto_0
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;->mSize:I

    return v0
.end method

.method highlight()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;->mState:Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;

    sget-object v1, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;->NORMAL:Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;

    if-ne v0, v1, :cond_0

    .line 113
    sget-object v0, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;->HIGHLIGHT:Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;

    iput-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;->mState:Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;

    .line 114
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;->invalidate()V

    .line 116
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const v5, -0x777778

    .line 145
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 146
    iget-object v3, p0, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;->mBackground:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 147
    const-string v3, "BasePanelBackgroundView"

    const-string v4, "onDraw - null background, the PenMenu has been destroyed by onDestroy()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 152
    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {v2, v4, v6}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    .line 153
    .local v2, setfil:Landroid/graphics/PaintFlagsDrawFilter;
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {v1, v6, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    .line 154
    .local v1, remfil:Landroid/graphics/PaintFlagsDrawFilter;
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 156
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 157
    .local v0, paint:Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 158
    iget-object v3, p0, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;->mState:Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;

    sget-object v4, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;->HIGHLIGHT:Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;

    if-ne v3, v4, :cond_1

    .line 159
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 160
    new-instance v3, Landroid/graphics/LightingColorFilter;

    invoke-direct {v3, v5, v5}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 164
    :cond_1
    iget-object v3, p0, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;->mSize:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;->mSize:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 169
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 170
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 134
    iget-object v1, p0, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/base/BasePanel;->getPenMenuSize()I

    move-result v0

    .line 135
    .local v0, size:I
    invoke-virtual {p0, v0, v0}, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;->setMeasuredDimension(II)V

    .line 137
    return-void
.end method

.method recover()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;->mState:Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;

    sget-object v1, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;->HIGHLIGHT:Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;

    if-ne v0, v1, :cond_0

    .line 123
    sget-object v0, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;->NORMAL:Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;

    iput-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;->mState:Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;

    .line 124
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;->invalidate()V

    .line 126
    :cond_0
    return-void
.end method

.method releaseIcon()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;->mBackground:Landroid/graphics/Bitmap;

    .line 106
    :cond_0
    return-void
.end method

.method setBasePanel(Lcom/htc/painting/penmenu/base/BasePanel;)V
    .locals 0
    .parameter "basePanel"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    .line 58
    return-void
.end method
