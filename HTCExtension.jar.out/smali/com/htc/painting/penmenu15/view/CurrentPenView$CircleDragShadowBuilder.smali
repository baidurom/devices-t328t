.class public Lcom/htc/painting/penmenu15/view/CurrentPenView$CircleDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "CurrentPenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu15/view/CurrentPenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CircleDragShadowBuilder"
.end annotation


# instance fields
.field public final CircleDragViewWidth:I

.field private mColor:I

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 269
    invoke-direct {p0}, Landroid/view/View$DragShadowBuilder;-><init>()V

    .line 260
    const/16 v0, 0x14

    iput v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView$CircleDragShadowBuilder;->CircleDragViewWidth:I

    .line 261
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView$CircleDragShadowBuilder;->mPaint:Landroid/graphics/Paint;

    .line 270
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView$CircleDragShadowBuilder;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 271
    const/high16 v0, -0x100

    iput v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView$CircleDragShadowBuilder;->mColor:I

    .line 272
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView$CircleDragShadowBuilder;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView$CircleDragShadowBuilder;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 273
    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    const/high16 v1, 0x4120

    .line 291
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView$CircleDragShadowBuilder;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 292
    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2
    .parameter "shadowSize"
    .parameter "shadowTouchPoint"

    .prologue
    const/16 v0, 0x14

    .line 281
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Point;->set(II)V

    .line 282
    iget v0, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p1, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 283
    return-void
.end method

.method public setColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 299
    iput p1, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView$CircleDragShadowBuilder;->mColor:I

    .line 300
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView$CircleDragShadowBuilder;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView$CircleDragShadowBuilder;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 301
    return-void
.end method
