.class public Lcom/htc/wrap/android/media/HtcWrapMediaScanner;
.super Landroid/media/MediaScanner;
.source "HtcWrapMediaScanner.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method


# virtual methods
.method public onSimChanged()V
    .locals 0

    .prologue
    .line 21
    invoke-super {p0}, Landroid/media/MediaScanner;->onSimChanged()V

    .line 22
    return-void
.end method

.method public stopScan()V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Landroid/media/MediaScanner;->stopScan()V

    .line 26
    return-void
.end method
