.class public abstract Lcom/htc/opensense/album/plugin/IDownloadManager;
.super Ljava/lang/Object;
.source "IDownloadManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cancelDownloadPhotoByTaskId(I)V
.end method

.method public abstract downloadPhotoById(ILjava/lang/String;Lcom/htc/opensense/album/plugin/IDownloadResult;Landroid/os/Bundle;)I
.end method

.method public abstract init()Z
.end method

.method public abstract release()V
.end method
