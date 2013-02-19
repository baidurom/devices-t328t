.class public Lcom/htc/widget/QuickTips$TipImage;
.super Lcom/htc/widget/QuickTips$AbstractTipItem;
.source "QuickTips.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/QuickTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TipImage"
.end annotation


# instance fields
.field private image:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 1895
    invoke-direct {p0}, Lcom/htc/widget/QuickTips$AbstractTipItem;-><init>()V

    .line 1896
    iput-object p1, p0, Lcom/htc/widget/QuickTips$TipImage;->image:Landroid/graphics/Bitmap;

    .line 1897
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 1933
    iget-object v0, p0, Lcom/htc/widget/QuickTips$TipImage;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1934
    iget-object v0, p0, Lcom/htc/widget/QuickTips$TipImage;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1935
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/QuickTips$TipImage;->image:Landroid/graphics/Bitmap;

    .line 1937
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 1910
    invoke-virtual {p0}, Lcom/htc/widget/QuickTips$TipImage;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1911
    .local v0, bounds:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/htc/widget/QuickTips$TipImage;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 1913
    .local v2, paint:Landroid/graphics/Paint;
    iget-object v3, p0, Lcom/htc/widget/QuickTips$TipImage;->image:Landroid/graphics/Bitmap;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1915
    const-string v3, "QuickTips"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1916
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 1917
    .local v1, p:Landroid/graphics/Paint;
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1918
    const/16 v3, -0x100

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1919
    const-string v3, "QuickTips"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "image rect="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1922
    new-instance v1, Landroid/graphics/Paint;

    .end local v1           #p:Landroid/graphics/Paint;
    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 1923
    .restart local v1       #p:Landroid/graphics/Paint;
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1924
    const v3, -0xff01

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1925
    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    const/high16 v5, 0x4000

    invoke-virtual {p1, v3, v4, v5, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1927
    .end local v1           #p:Landroid/graphics/Paint;
    :cond_0
    return-void
.end method

.method public setAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)V
    .locals 7
    .parameter "anchor"

    .prologue
    .line 1902
    invoke-virtual {p1}, Lcom/htc/widget/QuickTips$TipAnchor;->getLocation()Landroid/graphics/Point;

    move-result-object v1

    .line 1903
    .local v1, location:Landroid/graphics/Point;
    new-instance v0, Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/htc/widget/QuickTips$TipImage;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lcom/htc/widget/QuickTips$TipImage;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1904
    .local v0, bounds:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/htc/widget/QuickTips$TipImage;->setBounds(Landroid/graphics/Rect;)V

    .line 1905
    return-void
.end method
