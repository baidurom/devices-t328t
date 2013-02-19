.class public Lcom/htc/wrap/android/os/HtcWrapServiceManager;
.super Ljava/lang/Object;
.source "HtcWrapServiceManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .parameter "name"

    .prologue
    .line 13
    invoke-static {p0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .parameter "name"

    .prologue
    .line 9
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
