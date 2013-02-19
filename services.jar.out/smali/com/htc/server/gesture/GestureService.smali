.class public final Lcom/htc/server/gesture/GestureService;
.super Lcom/htc/service/IGestureService$Stub;
.source "GestureService.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "GestureService"


# instance fields
.field private final GESTURE_SETTING_STRING:Ljava/lang/String;

.field final mContext:Landroid/content/Context;

.field private mGestureInputFilter:Lcom/htc/server/gesture/GestureInputFilter;

.field private mHasInputFilter:Z

.field private mIsGestureEnabled:Z

.field final mLock:Ljava/lang/Object;

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/service/IGestureService$Stub;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/server/gesture/GestureService;->mLock:Ljava/lang/Object;

    .line 27
    const-string v0, "htc_gestures_enabled"

    iput-object v0, p0, Lcom/htc/server/gesture/GestureService;->GESTURE_SETTING_STRING:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/htc/server/gesture/GestureService;->mContext:Landroid/content/Context;

    .line 31
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/htc/server/gesture/GestureService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 34
    invoke-direct {p0}, Lcom/htc/server/gesture/GestureService;->registerBootCompletedBroadcastReceiver()V

    .line 35
    invoke-direct {p0}, Lcom/htc/server/gesture/GestureService;->registerSettingsContentObservers()V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/htc/server/gesture/GestureService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/htc/server/gesture/GestureService;->handleGestureEnabledSettingChangedLocked()V

    return-void
.end method

.method private handleGestureEnabledSettingChangedLocked()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 77
    iget-object v0, p0, Lcom/htc/server/gesture/GestureService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "htc_gestures_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/server/gesture/GestureService;->mIsGestureEnabled:Z

    .line 82
    const-string v0, "GestureService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGestureEnabledSettingChangedLocked: mIsGestureEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/server/gesture/GestureService;->mIsGestureEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-boolean v0, p0, Lcom/htc/server/gesture/GestureService;->mIsGestureEnabled:Z

    if-eqz v0, :cond_3

    .line 86
    iget-boolean v0, p0, Lcom/htc/server/gesture/GestureService;->mHasInputFilter:Z

    if-nez v0, :cond_1

    .line 87
    iput-boolean v1, p0, Lcom/htc/server/gesture/GestureService;->mHasInputFilter:Z

    .line 88
    iget-object v0, p0, Lcom/htc/server/gesture/GestureService;->mGestureInputFilter:Lcom/htc/server/gesture/GestureInputFilter;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/htc/server/gesture/GestureInputFilter;

    iget-object v1, p0, Lcom/htc/server/gesture/GestureService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/server/gesture/GestureInputFilter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/server/gesture/GestureService;->mGestureInputFilter:Lcom/htc/server/gesture/GestureInputFilter;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/htc/server/gesture/GestureService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/htc/server/gesture/GestureService;->mGestureInputFilter:Lcom/htc/server/gesture/GestureInputFilter;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setGestureInputFilter(Lcom/android/server/wm/InputFilter;)V

    .line 99
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 77
    goto :goto_0

    .line 94
    :cond_3
    iget-boolean v0, p0, Lcom/htc/server/gesture/GestureService;->mHasInputFilter:Z

    if-eqz v0, :cond_1

    .line 95
    iput-boolean v2, p0, Lcom/htc/server/gesture/GestureService;->mHasInputFilter:Z

    .line 96
    iget-object v0, p0, Lcom/htc/server/gesture/GestureService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setGestureInputFilter(Lcom/android/server/wm/InputFilter;)V

    goto :goto_1
.end method

.method private registerBootCompletedBroadcastReceiver()V
    .locals 3

    .prologue
    .line 39
    new-instance v1, Lcom/htc/server/gesture/GestureService$1;

    invoke-direct {v1, p0}, Lcom/htc/server/gesture/GestureService$1;-><init>(Lcom/htc/server/gesture/GestureService;)V

    .line 52
    .local v1, receiver:Landroid/content/BroadcastReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, bootFiler:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/htc/server/gesture/GestureService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    return-void
.end method

.method private registerSettingsContentObservers()V
    .locals 5

    .prologue
    .line 57
    iget-object v2, p0, Lcom/htc/server/gesture/GestureService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 59
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v2, "htc_gestures_enabled"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 62
    .local v1, gestureEnabledUri:Landroid/net/Uri;
    const/4 v2, 0x0

    new-instance v3, Lcom/htc/server/gesture/GestureService$2;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/htc/server/gesture/GestureService$2;-><init>(Lcom/htc/server/gesture/GestureService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 74
    return-void
.end method
