.class public Lcom/htc/wrap/android/app/HtcWrapDownloadManager$HtcWrapQuery;
.super Landroid/app/DownloadManager$Query;
.source "HtcWrapDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/app/HtcWrapDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtcWrapQuery"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/DownloadManager$Query;-><init>()V

    return-void
.end method


# virtual methods
.method public setOnlyIncludeVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Query;
    .locals 1
    .parameter "value"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/DownloadManager$Query;->setOnlyIncludeVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Query;

    move-result-object v0

    return-object v0
.end method
