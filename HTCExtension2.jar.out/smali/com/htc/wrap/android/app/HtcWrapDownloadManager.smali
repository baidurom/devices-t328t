.class public Lcom/htc/wrap/android/app/HtcWrapDownloadManager;
.super Landroid/app/DownloadManager;
.source "HtcWrapDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/android/app/HtcWrapDownloadManager$HtcWrapQuery;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 0
    .parameter "resolver"
    .parameter "packageName"

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Landroid/app/DownloadManager;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public setAccessAllDownloads(Z)V
    .locals 0
    .parameter "accessAllDownloads"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/DownloadManager;->setAccessAllDownloads(Z)V

    .line 20
    return-void
.end method
