.class Lcom/htc/painting/engine/HtcPaintingView$HighlightData;
.super Ljava/lang/Object;
.source "HtcPaintingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/engine/HtcPaintingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HighlightData"
.end annotation


# instance fields
.field final mPaint:Landroid/graphics/Paint;

.field final mRegion:Landroid/graphics/RectF;

.field final mViewPort:Lcom/htc/painting/engine/ViewPort;

.field final synthetic this$0:Lcom/htc/painting/engine/HtcPaintingView;


# direct methods
.method public constructor <init>(Lcom/htc/painting/engine/HtcPaintingView;Landroid/graphics/RectF;Lcom/htc/painting/engine/ViewPort;Landroid/graphics/Paint;)V
    .locals 0
    .parameter
    .parameter "region"
    .parameter "viewport"
    .parameter "p"

    .prologue
    .line 2847
    iput-object p1, p0, Lcom/htc/painting/engine/HtcPaintingView$HighlightData;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2848
    iput-object p3, p0, Lcom/htc/painting/engine/HtcPaintingView$HighlightData;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    .line 2849
    iput-object p2, p0, Lcom/htc/painting/engine/HtcPaintingView$HighlightData;->mRegion:Landroid/graphics/RectF;

    .line 2850
    iput-object p4, p0, Lcom/htc/painting/engine/HtcPaintingView$HighlightData;->mPaint:Landroid/graphics/Paint;

    .line 2851
    return-void
.end method


# virtual methods
.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 2858
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView$HighlightData;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTransformRect()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 2853
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView$HighlightData;->mRegion:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 2854
    .local v0, result:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView$HighlightData;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    invoke-virtual {v1}, Lcom/htc/painting/engine/ViewPort;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 2855
    return-object v0
.end method
