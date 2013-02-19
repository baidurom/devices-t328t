.class public Lcom/htc/wrap/android/app/HtcWrapWallpaperManager;
.super Ljava/lang/Object;
.source "HtcWrapWallpaperManager.java"


# static fields
.field public static final COMMAND_RESUME_RENDER:Ljava/lang/String; = "android.wallpaper.resume.render"

.field public static final COMMAND_STOP_RENDER:Ljava/lang/String; = "android.wallpaper.stop.render"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getIWallpaperManager(Landroid/app/WallpaperManager;)Landroid/app/IWallpaperManager;
    .locals 1
    .parameter "wm"

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getIWallpaperManager()Landroid/app/IWallpaperManager;

    move-result-object v0

    return-object v0
.end method

.method public static peekDrawableAndClearCache(Landroid/app/WallpaperManager;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "wallpaperManager"

    .prologue
    .line 22
    const-string v0, "HtcWrapWallpaperManager"

    const-string v1, "peekDrawableAndClearCache return null! Please use ICS new standard API WallpaperManager.forgetLoadedWallpaper() to clear internal cache"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method
