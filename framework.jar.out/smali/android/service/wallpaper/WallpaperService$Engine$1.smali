.class Landroid/service/wallpaper/WallpaperService$Engine$1;
.super Ljava/lang/Object;
.source "WallpaperService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService$Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/wallpaper/WallpaperService$Engine;


# direct methods
.method constructor <init>(Landroid/service/wallpaper/WallpaperService$Engine;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 193
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 195
    .local v0, startTime:J
    invoke-static {}, Landroid/os/Process;->releaseFileMapMemory()V

    .line 197
    return-void
.end method
