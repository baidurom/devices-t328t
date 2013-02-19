.class public Lcom/htc/wrap/android/media/HtcWrapMediaExtension;
.super Ljava/lang/Object;
.source "HtcWrapMediaExtension.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileTypeValue(Ljava/lang/String;)I
    .locals 2
    .parameter "path"

    .prologue
    .line 13
    invoke-static {p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v0

    .line 15
    .local v0, type:Landroid/media/MediaFile$MediaFileType;
    if-nez v0, :cond_0

    .line 16
    const/4 v1, 0x0

    .line 18
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    goto :goto_0
.end method
