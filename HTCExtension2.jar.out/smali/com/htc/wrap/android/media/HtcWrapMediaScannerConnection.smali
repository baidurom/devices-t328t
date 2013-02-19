.class public Lcom/htc/wrap/android/media/HtcWrapMediaScannerConnection;
.super Landroid/media/MediaScannerConnection;
.source "HtcWrapMediaScannerConnection.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V
    .locals 0
    .parameter "context"
    .parameter "client"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    .line 14
    return-void
.end method

.method public static scanDirectory(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    .locals 0
    .parameter "context"
    .parameter "paths"
    .parameter "mimeTypes"
    .parameter "callback"

    .prologue
    .line 31
    invoke-static {p0, p1, p2, p3}, Landroid/media/MediaScannerConnection;->scanDirectory(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 32
    return-void
.end method

.method public static scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    .locals 0
    .parameter "context"
    .parameter "paths"
    .parameter "mimeTypes"
    .parameter "callback"

    .prologue
    .line 22
    invoke-static {p0, p1, p2, p3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 23
    return-void
.end method
