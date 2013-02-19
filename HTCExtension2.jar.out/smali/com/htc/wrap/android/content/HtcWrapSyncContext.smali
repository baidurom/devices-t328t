.class public Lcom/htc/wrap/android/content/HtcWrapSyncContext;
.super Landroid/content/SyncContext;
.source "HtcWrapSyncContext.java"


# direct methods
.method public constructor <init>(Landroid/content/ISyncContext;)V
    .locals 0
    .parameter "syncContextInterface"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/content/SyncContext;-><init>(Landroid/content/ISyncContext;)V

    .line 14
    return-void
.end method


# virtual methods
.method public onFinished(Landroid/content/SyncResult;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    .line 22
    return-void
.end method
