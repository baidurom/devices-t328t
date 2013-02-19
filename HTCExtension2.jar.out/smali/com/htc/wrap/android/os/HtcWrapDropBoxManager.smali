.class public Lcom/htc/wrap/android/os/HtcWrapDropBoxManager;
.super Ljava/lang/Object;
.source "HtcWrapDropBoxManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFile(Landroid/os/DropBoxManager;Ljava/lang/String;Ljava/io/File;IJ)V
    .locals 0
    .parameter "dbox"
    .parameter "tag"
    .parameter "file"
    .parameter "flags"
    .parameter "time"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual/range {p0 .. p5}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;IJ)V

    .line 11
    return-void
.end method
