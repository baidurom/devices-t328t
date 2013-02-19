.class public Lcom/htc/wrap/android/view/HtcWrapSurface;
.super Ljava/lang/Object;
.source "HtcWrapSurface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resetRemoteScreenOrientation()V
    .locals 2

    .prologue
    .line 33
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 34
    const/4 v0, 0x0

    const v1, 0x8004

    invoke-static {v0, v1}, Landroid/view/Surface;->setOrientation(II)V

    .line 35
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 36
    return-void
.end method

.method public static screenshot(II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 14
    invoke-static {p0, p1}, Landroid/view/Surface;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static setRemoteScreenOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 23
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 24
    const/4 v0, 0x0

    const v1, 0x8000

    add-int/2addr v1, p0

    invoke-static {v0, v1}, Landroid/view/Surface;->setOrientation(II)V

    .line 25
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 26
    return-void
.end method
