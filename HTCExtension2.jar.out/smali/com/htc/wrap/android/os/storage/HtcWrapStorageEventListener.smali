.class public abstract Lcom/htc/wrap/android/os/storage/HtcWrapStorageEventListener;
.super Landroid/os/storage/StorageEventListener;
.source "HtcWrapStorageEventListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 24
    return-void
.end method

.method public onUsbMassStorageConnectionChanged(Z)V
    .locals 0
    .parameter "connected"

    .prologue
    .line 16
    return-void
.end method
