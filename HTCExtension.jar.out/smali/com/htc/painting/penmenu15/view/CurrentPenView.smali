.class public Lcom/htc/painting/penmenu15/view/CurrentPenView;
.super Lcom/htc/widget/HtcRimButton;
.source "CurrentPenView.java"

# interfaces
.implements Lcom/htc/painting/penmenu15/core/CurrentPenContainer$CurrentPenChangedListener;
.implements Lcom/htc/painting/penmenu15/core/DragDropManager$DragViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/penmenu15/view/CurrentPenView$CircleDragShadowBuilder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CurPenView"


# instance fields
.field private final VIEW_RADIUS:I

.field protected mAnimation:Landroid/view/animation/Animation;

.field private mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

.field private mCurPenIcon:Landroid/graphics/Bitmap;

.field private mIconMatrix:Landroid/graphics/Matrix;

.field private mOuterRing:Landroid/graphics/drawable/Drawable;

.field private mPaint:Landroid/graphics/Paint;

.field private mPenTip:[F

.field private mPenTipIcon:Landroid/graphics/Bitmap;

.field private mPenTipIconRect:Landroid/graphics/Rect;

.field protected mTransformation:Landroid/view/animation/Transformation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcRimButton;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mPenTip:[F

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mPenTipIconRect:Landroid/graphics/Rect;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mIconMatrix:Landroid/graphics/Matrix;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mPaint:Landroid/graphics/Paint;

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mAnimation:Landroid/view/animation/Animation;

    .line 339
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mTransformation:Landroid/view/animation/Transformation;

    .line 59
    const/16 v0, 0x30e

    invoke-static {p1, v0}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->VIEW_RADIUS:I

    .line 60
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/CurrentPenView;->init(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcRimButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mPenTip:[F

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mPenTipIconRect:Landroid/graphics/Rect;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mIconMatrix:Landroid/graphics/Matrix;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mPaint:Landroid/graphics/Paint;

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mAnimation:Landroid/view/animation/Animation;

    .line 339
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mTransformation:Landroid/view/animation/Transformation;

    .line 65
    const/16 v0, 0x30e

    invoke-static {p1, v0}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->VIEW_RADIUS:I

    .line 66
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/CurrentPenView;->init(Landroid/content/Context;)V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcRimButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mPenTip:[F

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mPenTipIconRect:Landroid/graphics/Rect;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mIconMatrix:Landroid/graphics/Matrix;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mPaint:Landroid/graphics/Paint;

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mAnimation:Landroid/view/animation/Animation;

    .line 339
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mTransformation:Landroid/view/animation/Transformation;

    .line 71
    const/16 v0, 0x30e

    invoke-static {p1, v0}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->VIEW_RADIUS:I

    .line 72
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/CurrentPenView;->init(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/htc/painting/penmenu15/view/CurrentPenView;)Lcom/htc/painting/penmenu15/core/CurrentPenContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 12
    .parameter "ctx"

    .prologue
    const-wide/16 v10, 0x32

    const/4 v5, 0x0

    const/16 v9, 0x64

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 76
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 78
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x20802c6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mOuterRing:Landroid/graphics/drawable/Drawable;

    .line 80
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mOuterRing:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mOuterRing:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mOuterRing:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mOuterRing:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 82
    :cond_0
    const v0, 0x20802c5

    const v3, 0x20802c7

    const v4, 0x20802c8

    invoke-virtual {p0, v0, v3, v4}, Lcom/htc/painting/penmenu15/view/CurrentPenView;->setButtonBackgroundResource(III)V

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x20802cd

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mPenTipIcon:Landroid/graphics/Bitmap;

    .line 88
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f80

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mAnimation:Landroid/view/animation/Animation;

    .line 93
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 94
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 95
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 97
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 98
    return-void
.end method

.method private onPenContainerChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->getCurrentPenIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mCurPenIcon:Landroid/graphics/Bitmap;

    .line 123
    const-string v0, "penType"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/CurrentPenView;->start()V

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/CurrentPenView;->updatePenTipIcon()V

    .line 127
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/CurrentPenView;->invalidate()V

    .line 128
    return-void
.end method

.method private updatePenTipIcon()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 131
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->getPenType()Lcom/htc/painting/penmenu15/core/PenType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/core/PenType;->isHighlighter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/CurrentPenView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20802cd

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mPenTipIcon:Landroid/graphics/Bitmap;

    .line 133
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mPenTipIconRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mPenTipIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mPenTipIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 139
    :goto_0
    return-void

    .line 135
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mPenTipIcon:Landroid/graphics/Bitmap;

    .line 136
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mPenTipIconRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method


# virtual methods
.method public inRange(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    .line 220
    const/4 v3, 0x0

    .line 221
    .local v3, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 222
    .local v4, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 224
    .local v5, y:F
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/CurrentPenView;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/CurrentPenView;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v0, v6

    .line 225
    .local v0, centerX:F
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/CurrentPenView;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/CurrentPenView;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v1, v6

    .line 227
    .local v1, centerY:F
    sub-float v6, v4, v0

    sub-float v7, v4, v0

    mul-float/2addr v6, v7

    sub-float v7, v5, v1

    sub-float v8, v5, v1

    mul-float/2addr v7, v8

    add-float v2, v6, v7

    .line 231
    .local v2, deltaSqr:F
    iget v6, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->VIEW_RADIUS:I

    iget v7, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->VIEW_RADIUS:I

    mul-int/2addr v6, v7

    int-to-float v6, v6

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_0

    .line 232
    const/4 v3, 0x1

    .line 234
    :cond_0
    return v3
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 417
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_0

    .line 418
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 421
    :cond_0
    return v0
.end method

.method public onCurrentPenChanged(Ljava/lang/String;Lcom/htc/painting/penmenu15/core/PenRepresentation;Lcom/htc/painting/penmenu15/core/PenRepresentation;)V
    .locals 2
    .parameter "key"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 320
    const-string v0, "CurPenView"

    const-string v1, "onPenConfigChanged"

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/CurrentPenView;->onPenContainerChanged(Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 169
    invoke-super {p0, p1}, Lcom/htc/widget/HtcRimButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 170
    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mCurPenIcon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 172
    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mPenTip:[F

    aget v3, v3, v7

    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mPenTip:[F

    aget v4, v4, v8

    iget-object v5, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    invoke-virtual {v5}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->getSize()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    iget-object v6, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 173
    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mPenTipIcon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 174
    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mPenTipIconRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mPenTip:[F

    aget v4, v4, v7

    float-to-int v4, v4

    iget-object v5, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mPenTipIconRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mPenTip:[F

    aget v5, v5, v8

    float-to-int v5, v5

    iget-object v6, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mPenTipIconRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 177
    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mPenTipIcon:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mPenTipIconRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mPenTipIconRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mAnimation:Landroid/view/animation/Animation;

    .line 181
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v2, Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mIconMatrix:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 182
    .local v2, m:Landroid/graphics/Matrix;
    if-eqz v0, :cond_1

    .line 183
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 187
    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 188
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/CurrentPenView;->isRunning()Z

    move-result v1

    .line 189
    .local v1, animationRunning:Z
    if-eqz v1, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/CurrentPenView;->invalidate()V

    .line 194
    .end local v1           #animationRunning:Z
    :cond_1
    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mCurPenIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v3, v2, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 196
    .end local v0           #anim:Landroid/view/animation/Animation;
    .end local v2           #m:Landroid/graphics/Matrix;
    :cond_2
    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mOuterRing:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    .line 197
    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mOuterRing:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 199
    :cond_3
    return-void
.end method

.method public onEndDrag()V
    .locals 2

    .prologue
    .line 310
    const-string v0, "CurPenView"

    const-string v1, "onEndDrag"

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu15/view/CurrentPenView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 312
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 146
    invoke-super/range {p0 .. p5}, Lcom/htc/widget/HtcRimButton;->onLayout(ZIIII)V

    .line 147
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mCurPenIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mIconMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 150
    new-array v1, v3, [F

    sub-int v2, p4, p2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    aput v2, v1, v6

    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    aput v2, v1, v7

    .line 152
    .local v1, viewCenter:[F
    new-array v0, v3, [F

    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mCurPenIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    mul-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    aput v2, v0, v6

    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mCurPenIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    aput v2, v0, v7

    .line 153
    .local v0, iconPivot:[F
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mIconMatrix:Landroid/graphics/Matrix;

    aget v3, v1, v6

    aget v4, v0, v6

    sub-float/2addr v3, v4

    aget v4, v1, v7

    aget v5, v0, v7

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 154
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mIconMatrix:Landroid/graphics/Matrix;

    const/high16 v3, 0x4334

    aget v4, v1, v6

    aget v5, v1, v7

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 156
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mPenTip:[F

    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mCurPenIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v6

    .line 157
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mPenTip:[F

    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mCurPenIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    aput v3, v2, v7

    .line 158
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mIconMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mPenTip:[F

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 161
    .end local v0           #iconPivot:[F
    .end local v1           #viewCenter:[F
    :cond_0
    return-void
.end method

.method public onStartDrag()V
    .locals 2

    .prologue
    .line 243
    const-string v0, "CurPenView"

    const-string v1, "onStartDrag"

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v0, Lcom/htc/painting/penmenu15/view/CurrentPenView$1;

    invoke-direct {v0, p0}, Lcom/htc/painting/penmenu15/view/CurrentPenView$1;-><init>(Lcom/htc/painting/penmenu15/view/CurrentPenView;)V

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu15/view/CurrentPenView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 252
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 207
    .local v0, action:I
    invoke-virtual {p0, p1}, Lcom/htc/painting/penmenu15/view/CurrentPenView;->inRange(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 209
    const/4 v1, 0x0

    .line 211
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcRimButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 470
    iput-object p1, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mAnimation:Landroid/view/animation/Animation;

    .line 471
    return-void
.end method

.method public setPen(Lcom/htc/painting/penmenu15/core/CurrentPenContainer;)V
    .locals 1
    .parameter "pen"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    invoke-virtual {v0, p0}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->removeCurrentPenChangedListener(Lcom/htc/painting/penmenu15/core/CurrentPenContainer$CurrentPenChangedListener;)V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    .line 112
    :cond_0
    if-eqz p1, :cond_1

    .line 113
    iput-object p1, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    .line 114
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    invoke-virtual {v0, p0}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->addCurrentPenChangedListener(Lcom/htc/painting/penmenu15/core/CurrentPenContainer$CurrentPenChangedListener;)V

    .line 115
    const-string v0, "all_config"

    invoke-direct {p0, v0}, Lcom/htc/painting/penmenu15/view/CurrentPenView;->onPenContainerChanged(Ljava/lang/String;)V

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/CurrentPenView;->requestLayout()V

    .line 118
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 440
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 441
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/CurrentPenView;->invalidate()V

    .line 443
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 459
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 460
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/CurrentPenView;->invalidate()V

    .line 462
    :cond_0
    return-void
.end method
