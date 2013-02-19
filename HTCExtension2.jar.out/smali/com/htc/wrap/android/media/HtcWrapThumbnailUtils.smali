.class public Lcom/htc/wrap/android/media/HtcWrapThumbnailUtils;
.super Ljava/lang/Object;
.source "HtcWrapThumbnailUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "filePath"
    .parameter "kind"

    .prologue
    .line 20
    invoke-static {p0, p1}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
