.class public Lcom/htc/widget/QuickTips$TipArrow;
.super Lcom/htc/widget/QuickTips$AbstractTipItem;
.source "QuickTips.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/QuickTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TipArrow"
.end annotation


# static fields
.field public static final DEGREE_0:I = 0x0

.field public static final DEGREE_135:I = 0x87

.field public static final DEGREE_180:I = 0xb4

.field public static final DEGREE_225:I = 0xe1

.field public static final DEGREE_270:I = 0x10e

.field public static final DEGREE_315:I = 0x13b

.field public static final DEGREE_45:I = 0x2d

.field public static final DEGREE_90:I = 0x5a


# instance fields
.field private degree:I

.field private end:Landroid/graphics/Point;

.field private start:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "degree"

    .prologue
    .line 1668
    invoke-direct {p0}, Lcom/htc/widget/QuickTips$AbstractTipItem;-><init>()V

    .line 1669
    iput p1, p0, Lcom/htc/widget/QuickTips$TipArrow;->degree:I

    .line 1670
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 1760
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 1709
    invoke-virtual {p0}, Lcom/htc/widget/QuickTips$TipArrow;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1710
    .local v0, bounds:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/htc/widget/QuickTips$TipArrow;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 1713
    .local v2, paint:Landroid/graphics/Paint;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1715
    iget v3, p0, Lcom/htc/widget/QuickTips$TipArrow;->degree:I

    sparse-switch v3, :sswitch_data_0

    .line 1739
    :goto_0
    :sswitch_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1741
    const-string v3, "QuickTips"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1742
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 1743
    .local v1, p:Landroid/graphics/Paint;
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1744
    const/16 v3, -0x100

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1745
    const-string v3, "QuickTips"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tips arrow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1748
    new-instance v1, Landroid/graphics/Paint;

    .end local v1           #p:Landroid/graphics/Paint;
    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 1749
    .restart local v1       #p:Landroid/graphics/Paint;
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1750
    const v3, -0xff01

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1751
    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    const/high16 v5, 0x4000

    invoke-virtual {p1, v3, v4, v5, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1754
    .end local v1           #p:Landroid/graphics/Paint;
    :cond_0
    return-void

    .line 1719
    :sswitch_1
    invoke-static {}, Lcom/htc/widget/QuickTips;->access$2500()Ljava/util/Map;

    move-result-object v3

    const/16 v4, 0x2d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1722
    :sswitch_2
    invoke-static {}, Lcom/htc/widget/QuickTips;->access$2500()Ljava/util/Map;

    move-result-object v3

    const/16 v4, 0x5a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1725
    :sswitch_3
    invoke-static {}, Lcom/htc/widget/QuickTips;->access$2500()Ljava/util/Map;

    move-result-object v3

    const/16 v4, 0x87

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1730
    :sswitch_4
    invoke-static {}, Lcom/htc/widget/QuickTips;->access$2500()Ljava/util/Map;

    move-result-object v3

    const/16 v4, 0xe1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1733
    :sswitch_5
    invoke-static {}, Lcom/htc/widget/QuickTips;->access$2500()Ljava/util/Map;

    move-result-object v3

    const/16 v4, 0x10e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1736
    :sswitch_6
    invoke-static {}, Lcom/htc/widget/QuickTips;->access$2500()Ljava/util/Map;

    move-result-object v3

    const/16 v4, 0x13b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1715
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2d -> :sswitch_1
        0x5a -> :sswitch_2
        0x87 -> :sswitch_3
        0xb4 -> :sswitch_0
        0xe1 -> :sswitch_4
        0x10e -> :sswitch_5
        0x13b -> :sswitch_6
    .end sparse-switch
.end method

.method public setAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)V
    .locals 11
    .parameter "anchor"

    .prologue
    const/16 v10, 0x10e

    const/16 v9, 0xe1

    const/16 v8, 0x87

    const/16 v7, 0x5a

    const/16 v6, 0x2d

    .line 1675
    invoke-virtual {p1}, Lcom/htc/widget/QuickTips$TipAnchor;->getLocation()Landroid/graphics/Point;

    move-result-object v1

    .line 1676
    .local v1, location:Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/htc/widget/QuickTips$TipArrow;->start:Landroid/graphics/Point;

    .line 1677
    new-instance v2, Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, v3, -0x14

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/htc/widget/QuickTips$TipArrow;->end:Landroid/graphics/Point;

    .line 1678
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/htc/widget/QuickTips$TipArrow;->start:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/htc/widget/QuickTips$TipArrow;->start:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/htc/widget/QuickTips$TipArrow;->start:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/htc/widget/QuickTips$TipArrow;->start:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1679
    .local v0, bounds:Landroid/graphics/Rect;
    iget v2, p0, Lcom/htc/widget/QuickTips$TipArrow;->degree:I

    sparse-switch v2, :sswitch_data_0

    .line 1703
    :goto_0
    :sswitch_0
    invoke-virtual {p0, v0}, Lcom/htc/widget/QuickTips$TipArrow;->setBounds(Landroid/graphics/Rect;)V

    .line 1704
    return-void

    .line 1683
    :sswitch_1
    iget-object v3, p0, Lcom/htc/widget/QuickTips$TipArrow;->end:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/htc/widget/QuickTips$TipArrow;->start:Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/Point;->x:I

    invoke-static {}, Lcom/htc/widget/QuickTips;->access$2500()Ljava/util/Map;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/htc/widget/QuickTips$TipArrow;->end:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/htc/widget/QuickTips$TipArrow;->start:Landroid/graphics/Point;

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/htc/widget/QuickTips;->access$2500()Ljava/util/Map;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, v5

    iput v2, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Rect;->union(II)V

    goto :goto_0

    .line 1686
    :sswitch_2
    iget-object v3, p0, Lcom/htc/widget/QuickTips$TipArrow;->end:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/htc/widget/QuickTips$TipArrow;->start:Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/Point;->x:I

    invoke-static {}, Lcom/htc/widget/QuickTips;->access$2500()Ljava/util/Map;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/htc/widget/QuickTips$TipArrow;->end:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/htc/widget/QuickTips$TipArrow;->start:Landroid/graphics/Point;

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/htc/widget/QuickTips;->access$2500()Ljava/util/Map;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, v5

    iput v2, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Rect;->union(II)V

    goto :goto_0

    .line 1689
    :sswitch_3
    iget-object v3, p0, Lcom/htc/widget/QuickTips$TipArrow;->end:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/htc/widget/QuickTips$TipArrow;->start:Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/Point;->x:I

    invoke-static {}, Lcom/htc/widget/QuickTips;->access$2500()Ljava/util/Map;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/htc/widget/QuickTips$TipArrow;->end:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/htc/widget/QuickTips$TipArrow;->start:Landroid/graphics/Point;

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/htc/widget/QuickTips;->access$2500()Ljava/util/Map;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, v5

    iput v2, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Rect;->union(II)V

    goto/16 :goto_0

    .line 1694
    :sswitch_4
    iget-object v3, p0, Lcom/htc/widget/QuickTips$TipArrow;->end:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/htc/widget/QuickTips$TipArrow;->start:Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/Point;->x:I

    invoke-static {}, Lcom/htc/widget/QuickTips;->access$2500()Ljava/util/Map;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/htc/widget/QuickTips$TipArrow;->end:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/htc/widget/QuickTips$TipArrow;->start:Landroid/graphics/Point;

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/htc/widget/QuickTips;->access$2500()Ljava/util/Map;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v2

    sub-int v2, v5, v2

    iput v2, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Rect;->union(II)V

    goto/16 :goto_0

    .line 1697
    :sswitch_5
    iget-object v3, p0, Lcom/htc/widget/QuickTips$TipArrow;->end:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/htc/widget/QuickTips$TipArrow;->start:Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/Point;->x:I

    invoke-static {}, Lcom/htc/widget/QuickTips;->access$2500()Ljava/util/Map;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/htc/widget/QuickTips$TipArrow;->end:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/htc/widget/QuickTips$TipArrow;->start:Landroid/graphics/Point;

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/htc/widget/QuickTips;->access$2500()Ljava/util/Map;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v2

    sub-int v2, v5, v2

    iput v2, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Rect;->union(II)V

    goto/16 :goto_0

    .line 1700
    :sswitch_6
    iget-object v3, p0, Lcom/htc/widget/QuickTips$TipArrow;->end:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/htc/widget/QuickTips$TipArrow;->start:Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/Point;->x:I

    invoke-static {}, Lcom/htc/widget/QuickTips;->access$2500()Ljava/util/Map;

    move-result-object v2

    const/16 v5, 0x13b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/htc/widget/QuickTips$TipArrow;->end:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/htc/widget/QuickTips$TipArrow;->start:Landroid/graphics/Point;

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/htc/widget/QuickTips;->access$2500()Ljava/util/Map;

    move-result-object v2

    const/16 v6, 0x13b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v2

    sub-int v2, v5, v2

    iput v2, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Rect;->union(II)V

    goto/16 :goto_0

    .line 1679
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2d -> :sswitch_1
        0x5a -> :sswitch_2
        0x87 -> :sswitch_3
        0xb4 -> :sswitch_0
        0xe1 -> :sswitch_4
        0x10e -> :sswitch_5
        0x13b -> :sswitch_6
    .end sparse-switch
.end method
