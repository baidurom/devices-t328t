.class public Lcom/htc/wrap/android/media/HtcWrapMediaFile;
.super Ljava/lang/Object;
.source "HtcWrapMediaFile.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 12
    invoke-static {p0}, Landroid/media/MediaFile;->getExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileTypeForMimeType(Ljava/lang/String;)I
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 42
    invoke-static {p0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getFileTypeValue(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 27
    invoke-static {p0}, Landroid/media/MediaFile;->getFileTypeValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static isAudioFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 22
    invoke-static {p0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v0

    return v0
.end method

.method public static isImageFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 37
    invoke-static {p0}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v0

    return v0
.end method

.method public static isVideoFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 32
    invoke-static {p0}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v0

    return v0
.end method
