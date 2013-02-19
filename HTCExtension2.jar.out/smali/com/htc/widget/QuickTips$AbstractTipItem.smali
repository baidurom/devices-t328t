.class public abstract Lcom/htc/widget/QuickTips$AbstractTipItem;
.super Ljava/lang/Object;
.source "QuickTips.java"

# interfaces
.implements Lcom/htc/widget/QuickTips$TipItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/QuickTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractTipItem"
.end annotation


# instance fields
.field private bounds:Landroid/graphics/Rect;

.field private origin:I

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1224
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1218
    const/16 v0, 0x9

    iput v0, p0, Lcom/htc/widget/QuickTips$AbstractTipItem;->origin:I

    .line 1225
    return-void
.end method


# virtual methods
.method protected deltaOrigin(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5
    .parameter "bounds"

    .prologue
    const/4 v3, 0x0

    .line 1280
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1281
    .local v1, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/htc/widget/QuickTips$AbstractTipItem;->getOrigin()I

    move-result v0

    .line 1282
    .local v0, origin:I
    and-int/lit8 v2, v0, 0x7

    packed-switch v2, :pswitch_data_0

    .line 1292
    :pswitch_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown origin location: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1286
    :pswitch_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1294
    :goto_0
    :pswitch_2
    and-int/lit8 v2, v0, 0x38

    sparse-switch v2, :sswitch_data_0

    .line 1304
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown origin location: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1289
    :pswitch_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 1298
    :sswitch_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1306
    :goto_1
    :sswitch_1
    return-object v1

    .line 1301
    :sswitch_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    .line 1282
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1294
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/htc/widget/QuickTips$AbstractTipItem;->bounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getOrigin()I
    .locals 1

    .prologue
    .line 1272
    iget v0, p0, Lcom/htc/widget/QuickTips$AbstractTipItem;->origin:I

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/htc/widget/QuickTips$AbstractTipItem;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public originate(I)Lcom/htc/widget/QuickTips$TipItem;
    .locals 0
    .parameter "origin"

    .prologue
    .line 1263
    iput p1, p0, Lcom/htc/widget/QuickTips$AbstractTipItem;->origin:I

    .line 1264
    return-object p0
.end method

.method protected setBounds(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "bounds"

    .prologue
    .line 1255
    invoke-virtual {p0, p1}, Lcom/htc/widget/QuickTips$AbstractTipItem;->deltaOrigin(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/QuickTips$AbstractTipItem;->bounds:Landroid/graphics/Rect;

    .line 1256
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0
    .parameter "paint"

    .prologue
    .line 1240
    iput-object p1, p0, Lcom/htc/widget/QuickTips$AbstractTipItem;->paint:Landroid/graphics/Paint;

    .line 1241
    return-void
.end method
