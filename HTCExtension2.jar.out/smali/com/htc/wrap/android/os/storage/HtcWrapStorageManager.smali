.class public Lcom/htc/wrap/android/os/storage/HtcWrapStorageManager;
.super Ljava/lang/Object;
.source "HtcWrapStorageManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerListener(Landroid/os/storage/StorageManager;Lcom/htc/wrap/android/os/storage/HtcWrapStorageEventListener;)V
    .locals 0
    .parameter "storageManager"
    .parameter "listener"

    .prologue
    .line 17
    if-eqz p0, :cond_0

    .line 18
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 19
    :cond_0
    return-void
.end method

.method public static unregisterListener(Landroid/os/storage/StorageManager;Lcom/htc/wrap/android/os/storage/HtcWrapStorageEventListener;)V
    .locals 0
    .parameter "storageManager"
    .parameter "listener"

    .prologue
    .line 27
    if-eqz p0, :cond_0

    .line 28
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 29
    :cond_0
    return-void
.end method
