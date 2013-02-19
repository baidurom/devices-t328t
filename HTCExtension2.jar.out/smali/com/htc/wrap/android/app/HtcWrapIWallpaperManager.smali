.class public Lcom/htc/wrap/android/app/HtcWrapIWallpaperManager;
.super Ljava/lang/Object;
.source "HtcWrapIWallpaperManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getIWallpaperManager()Landroid/app/IWallpaperManager;
    .locals 1

    .prologue
    .line 13
    const-string v0, "wallpaper"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v0

    return-object v0
.end method

.method public static setWallpaperComponent(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-static {}, Lcom/htc/wrap/android/app/HtcWrapIWallpaperManager;->getIWallpaperManager()Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IWallpaperManager;->setWallpaperComponent(Landroid/content/ComponentName;)V

    .line 17
    return-void
.end method
