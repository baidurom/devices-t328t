.class public Lcom/htc/painting/penmenu15/drawable/NoScaleBitmapDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "NoScaleBitmapDrawable.java"


# instance fields
.field private final mDstRect:Landroid/graphics/Rect;

.field private final mParentBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "res"
    .parameter "bitmap"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 19
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/drawable/NoScaleBitmapDrawable;->mParentBounds:Landroid/graphics/Rect;

    .line 20
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/drawable/NoScaleBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    .line 26
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 36
    invoke-super {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 37
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 38
    iget-object v1, p0, Lcom/htc/painting/penmenu15/drawable/NoScaleBitmapDrawable;->mParentBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/htc/painting/penmenu15/drawable/NoScaleBitmapDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 39
    iget-object v1, p0, Lcom/htc/painting/penmenu15/drawable/NoScaleBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 41
    iget-object v1, p0, Lcom/htc/painting/penmenu15/drawable/NoScaleBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/htc/painting/penmenu15/drawable/NoScaleBitmapDrawable;->mParentBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget-object v3, p0, Lcom/htc/painting/penmenu15/drawable/NoScaleBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/painting/penmenu15/drawable/NoScaleBitmapDrawable;->mParentBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    iget-object v4, p0, Lcom/htc/painting/penmenu15/drawable/NoScaleBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 43
    iget-object v1, p0, Lcom/htc/painting/penmenu15/drawable/NoScaleBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v5, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 46
    :cond_0
    return-void
.end method
