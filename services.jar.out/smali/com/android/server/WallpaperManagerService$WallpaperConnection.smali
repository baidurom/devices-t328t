.class Lcom/android/server/WallpaperManagerService$WallpaperConnection;
.super Landroid/service/wallpaper/IWallpaperConnection$Stub;
.source "WallpaperManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperConnection"
.end annotation


# instance fields
.field mEngine:Landroid/service/wallpaper/IWallpaperEngine;

.field final mInfo:Landroid/app/WallpaperInfo;

.field mService:Landroid/service/wallpaper/IWallpaperService;

.field final mToken:Landroid/os/Binder;

.field private mWPConnHeight:I

.field private mWPConnWidth:I

.field final synthetic this$0:Lcom/android/server/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/WallpaperManagerService;Landroid/app/WallpaperInfo;)V
    .locals 2
    .parameter
    .parameter "info"

    .prologue
    const/4 v1, -0x1

    .line 197
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;-><init>()V

    .line 188
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    .line 193
    iput v1, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWPConnWidth:I

    .line 194
    iput v1, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWPConnHeight:I

    .line 198
    iput-object p2, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    .line 199
    return-void
.end method

.method static synthetic access$202(Lcom/android/server/WallpaperManagerService$WallpaperConnection;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 185
    iput p1, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWPConnWidth:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/server/WallpaperManagerService$WallpaperConnection;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 185
    iput p1, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWPConnHeight:I

    return p1
.end method


# virtual methods
.method public attachEngine(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 4
    .parameter "engine"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 241
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-ne v0, p0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v0, v0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    iget v2, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWPConnWidth:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v0, v0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    iget v2, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWPConnHeight:I

    if-eq v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 246
    :try_start_1
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v2, v2, Lcom/android/server/WallpaperManagerService;->mWidth:I

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v3, v3, Lcom/android/server/WallpaperManagerService;->mHeight:I

    invoke-interface {v0, v2, v3}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V

    .line 247
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v0, v0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    iput v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWPConnWidth:I

    .line 248
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v0, v0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    iput v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWPConnHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 252
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    #calls: Lcom/android/server/WallpaperManagerService;->notifyCallbacksLocked()V
    invoke-static {v0}, Lcom/android/server/WallpaperManagerService;->access$000(Lcom/android/server/WallpaperManagerService;)V

    .line 255
    :cond_1
    monitor-exit v1

    .line 257
    return-void

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 249
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-ne v0, p0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/WallpaperManagerService;->mLastDiedTime:J

    .line 205
    invoke-static {p2}, Landroid/service/wallpaper/IWallpaperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 208
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v0, v0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    iput v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWPConnWidth:I

    .line 209
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v0, v0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    iput v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWPConnHeight:I

    .line 211
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/WallpaperManagerService;->attachServiceLocked(Lcom/android/server/WallpaperManagerService$WallpaperConnection;)V

    .line 217
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    #calls: Lcom/android/server/WallpaperManagerService;->saveSettingsLocked()V
    invoke-static {v0}, Lcom/android/server/WallpaperManagerService;->access$100(Lcom/android/server/WallpaperManagerService;)V

    .line 219
    :cond_0
    monitor-exit v1

    .line 220
    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6
    .parameter "name"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 224
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 226
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-ne v0, p0, :cond_0

    .line 227
    const-string v0, "WallpaperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wallpaper service gone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v3, v3, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-boolean v0, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperUpdating:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-wide v2, v0, Lcom/android/server/WallpaperManagerService;->mLastDiedTime:J

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 230
    const-string v0, "WallpaperService"

    const-string v2, "Reverting to built-in wallpaper!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(Z)V

    .line 234
    :cond_0
    monitor-exit v1

    .line 235
    return-void

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .parameter "name"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-ne v0, p0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    monitor-exit v1

    .line 265
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
