.class public Lcom/htc/painting/penmenu15/view/PenOptionButton;
.super Landroid/widget/Button;
.source "PenOptionButton.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PenMenuNew"


# instance fields
.field private mButtonArea:Landroid/graphics/RectF;

.field private mInnerRadius:I

.field private mParentRect:Landroid/graphics/RectF;

.field private mPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;

.field private mPenIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/PenOptionButton;->mPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;

    .line 23
    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/PenOptionButton;->mPenIcon:Landroid/graphics/drawable/Drawable;

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/PenOptionButton;->mParentRect:Landroid/graphics/RectF;

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/PenOptionButton;->mButtonArea:Landroid/graphics/RectF;

    .line 32
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/PenOptionButton;->init(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/PenOptionButton;->mPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;

    .line 23
    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/PenOptionButton;->mPenIcon:Landroid/graphics/drawable/Drawable;

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/PenOptionButton;->mParentRect:Landroid/graphics/RectF;

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/PenOptionButton;->mButtonArea:Landroid/graphics/RectF;

    .line 37
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/PenOptionButton;->init(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/PenOptionButton;->mPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;

    .line 23
    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/PenOptionButton;->mPenIcon:Landroid/graphics/drawable/Drawable;

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/PenOptionButton;->mParentRect:Landroid/graphics/RectF;

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/PenOptionButton;->mButtonArea:Landroid/graphics/RectF;

    .line 42
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/PenOptionButton;->init(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 46
    const-string v0, "PenMenuNew"

    const-string v1, "created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method


# virtual methods
.method protected eventInBounds(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenOptionButton;->mButtonArea:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    return v0
.end method

.method public getPen()Lcom/htc/painting/penmenu15/core/PenRepresentation;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenOptionButton;->mPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 91
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenOptionButton;->mPenIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 93
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/PenOptionButton;->getLeft()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/PenOptionButton;->getTop()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 94
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenOptionButton;->mPenIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 99
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->onMeasure(II)V

    .line 61
    return-void
.end method

.method protected onParentLayout(IIII)V
    .locals 5
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenOptionButton;->mParentRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 115
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenOptionButton;->mPenIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenOptionButton;->mPenIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 118
    :cond_0
    return-void
.end method
